----------------------------------------------------------------------------------
-- Proyecto LAGO - Colaboracion Guatemala
-- Universidad de San Carlos de Guatemala
-- Fisica Aplicada / Laboratorio de Electronica
-- Facultad de Ingenieria
-- Ing. Ivan Rene Morales
--
-- Create Date:    22:02:57 06/08/2013 
-- Module Name:    Interfaz SPI de 16 bits (solo salida)
-- Project Name:   Electronica LAGO, Guatemala
-- Target Devices: Spartan 3E xc3s500e @ Nexys 2
-- Description:    Serializa 16 bits de datos (DATA) luego del flanco
--						 de subida en el pin (EN), utilizando (CLK) como entrada de reloj
--						 para generar un reloj SPI (SCLK) de 12.5MHz.
--						 Los datos se envian en FLANCO DE BAJADA o SUBIDA, dependiendo de (EDGE)
-- Dependencies:   
--
-- Additional Comments: Es utilizado para manejar el DAC TLV5616 y el ADC ADS5500
--                      Se implementa utilizando una maquina de estados finitos (FSM)
--								de Moore Tipo B, segun documentacion de Xilinx
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity SPI16bits is
	 
	 Generic(  busWidth : natural := 8;  -- 16 bits de datos
				  clkDiv   : natural := 3    -- Divisor de reloj (clkDiv+1)*2 = 8 (SPICLK = 12.5 MHz)
			); 

    Port ( DATA  : in   STD_LOGIC_VECTOR (busWidth - 1 downto 0); -- Datos que desean serializarse
           EN    : in   STD_LOGIC;  -- Con un flanco de subida, comienza la serializacion
           CLK   : in   STD_LOGIC;  -- CLK de entrada (100 MHz)
			  RST   : in   STD_LOGIC;  -- RST del sistema
			  EDGE  : in   STD_LOGIC;  -- Flanco de subida (1) o flanco de bajada (0)
           DONE  : out  STD_LOGIC;  -- Indica si ha finalizado la operacion
			  SDATA : out  STD_LOGIC;  -- Salida de datos SPI
           SCLK  : out  STD_LOGIC;  -- Salida de reloj SPI (12.5 MHz)
           SCS   : out  STD_LOGIC); -- Salida Chip Select SPI
end SPI16bits;

architecture Behavioral of SPI16bits is

	signal SPIClk     : STD_LOGIC; -- Salida del reloj SPI.
	signal CLKCounter : integer range 0 to clkDiv; -- Contador para realizar SCLK = CLK / 10
	signal dCount     : integer range 0 to busWidth; -- Contador para serializacion de datos
	signal dataTemp   : STD_LOGIC_VECTOR (busWidth - 1 downto 0); -- Datos que ingresan al registro de corrimiento
	signal clkEN      : STD_LOGIC;  -- Habilita o deshabilita el reloj de salida SPI
	
	type FSM is (DATA_FETCH, SPI_OUT, RESYNC); -- Definicion de los estados de la FSM.
	signal currentState : FSM;         -- Senial del tipo FSM que controla el proceso.

begin

	process (CLK, RST) -- Aumenta el contador para el divisor del reloj, en base al reloj del sistema de 100MHz
	begin
		If (RST = '1') Then
			CLKCounter <= 0;  -- Si hay un reset, se inicializa en 0 el contador del divisor
			SPIClk <= '0';
		Else
			If (rising_edge(CLK)) Then
				If CLKCounter < clkDiv Then
					CLKCounter <= CLKCounter + 1; -- Si hay overflow, regresa a su valor inicial (0)
				Else
					CLKCounter <= 0;
					SPIClk <= not SPIClk; -- Si existio overflow en el contador de reloj secundario, genera una transicion en el reloj de SPI
				End If;
			End If;
		End If;
	end process;

	process (SPIClk, RST)  -- Si existe algun cambio en el reloj SPI, o Reset, cambiar la maquina de estados (FSM) currentState
	begin
		If (RST = '1') Then -- Durante reset
			clkEn  <= '0'; -- Deshabilitar el reloj de salida SPI 
			dCount <= 0;   -- Inicializar el contador del registro de corrimiento
			SCS    <= '1'; -- Inicializar CHIP-SELECT de SPI
			SDATA  <= '0'; -- Inicializar DATA_OUT de SPI
			DONE   <= '0'; -- Inicializa la bandera de fin de operacion
			dataTemp <= (others => '0'); -- Vaciar los datos del registro de corrimiento
			currentState <= DATA_FETCH;  -- Iniciar la FSM esperando datos
		Else
			If (rising_edge(SPIClk)) Then -- Cuando exista una transicion en el reloj SPI (12.5 MHz)
				Case currentState is
					When DATA_FETCH => -- El primer estado es leer lo que se va a serializar
						--DONE   <= '0';
						dataTemp <= DATA;
						If EN = '1' Then -- Cuando se registra la entrada de datos
							currentState <= SPI_OUT; -- Iniciar la serializacion
							SCS <= '0'; -- Habilitar el CHIP-SELECT SPI (activo bajo)
							DONE   <= '0';
						Else
							currentState <= DATA_FETCH; -- Si no, se queda esperando el ENABLE
						End If;
						
					When SPI_OUT =>
						If dCount < busWidth Then
							clkEn <= '1'; -- Habilitar el reloj de salida SPI
							SDATA <= dataTemp(busWidth - 1);  -- Se toma el bit mas significativo
							dataTemp <= dataTemp(busWidth - 2 downto 0) & '0'; -- Y se realiza el corrimiento de un bit a la izquierda
							dCount <= dCount + 1;  -- Aumenta el contador
						Else     -- Si ya se enviaron todos los datos por SPI
							SCS <= '1';  -- Deshabilita el SPI CHIP-SELECT (activo bajo)
							clkEn <= '0'; -- Deshabilita el reloj de salida SPI
							SDATA <= '0'; -- Inicializa la senial que contiene los datos
							dCount <= 0;  -- Inicializa el contador del registro de corrimiento
							DONE   <= '1'; -- Ha finalizado la operacion de serializacion
							currentState <= RESYNC; -- Vuelve al estado inicial, esperando datos para serializar
						End If;
						
					When others =>
						DONE <= '0';
						currentState <= DATA_FETCH;
				End case;
			End If;
		End If;
	end process;

	SCLK <= SPIClk when (EDGE = '0' and clkEN = '1' and RST = '0') else    -- Reloj SPI. Solo funciona mientras se envian los datos.
			  not SPICLK when (EDGE = '1' and clkEN = '1' and RST = '0') else -- Asimismo, se define si se envia en flanco de subida o bajada
			  '1';

end Behavioral;