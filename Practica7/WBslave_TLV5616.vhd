----------------------------------------------------------------------------------
-- Company: Universidad de San Carlos de Guatemala
-- Engineer: Ivan Rene Morales - Electronica 6
-- 
-- Create Date:    15:44:13 02/24/2013 
-- Module Name:    WBslave_TLV5616. Texas Instruments 12-bit SPI DAC
-- Project Name:   Filtro digital con frecuencia de corte dinámica
-- Target Devices: SPARTAN 3E @ Basys2
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

--Importante: Este modulo esta diseniado para obtener el reloj de
--SYSCON: su frecuencia debe ser 1MHz (para f_sampling = 40kHz).

entity WBslave_TLV5616 is
	 generic(	bus_width : natural := 16 );
    Port ( 
			-- Wishbone PORTS
		   RST_I : in   STD_LOGIC;
           CLK_I : in   STD_LOGIC;
           DAT_I : in   STD_LOGIC_VECTOR (bus_width-1 downto 0);
           WE_I  : in   STD_LOGIC;
           STB_I : in   STD_LOGIC;
           ACK_O : out  STD_LOGIC;
			BSY_O : out  STD_LOGIC;
			-- SPI Ports
           SCLK  : out  STD_LOGIC;
           FSOut : out  STD_LOGIC;
           DOUT  : out  STD_LOGIC);
end WBslave_TLV5616;

architecture Behavioral of WBslave_TLV5616 is
	type FSM is (DATA_FETCH, SPI_OUT, RESYNC);
	signal count_dout    : integer range 0 to bus_width-1;
	signal current_state : FSM;
	signal EnableDout    : std_logic;
	signal Data          : std_logic_vector (bus_width-1 downto 0);
begin
	
	process (CLK_I)
	begin
		If rising_edge(CLK_I) Then
			If (RST_I = '1') Then
				current_state <= DATA_FETCH; -- Valor inicial de la maquina de estado
				FSOut <= '1';                -- Mantener en alto "Chip Select": FS
				DOUT  <= '0';				     -- Resetear la salida SPI Dout
				EnableDout <= '0';           -- Deshabilitar SCLK y SPI Data Output
				count_dout <= 0;             -- Iniciar contador de shift-register SPI
				BSY_O      <= '0';
				Data       <= (others => '0');
			Else
				Case current_state is
					When DATA_FETCH =>
						If (WE_I='1' and STB_I='1') Then
							Data(11 downto 0) <= DAT_I(11 downto 0);
							Data(15 downto 12) <= (others => '0');
							--Data <= DAT_I;
							current_state <= SPI_OUT;
							FSOut <= '0';
							ACK_O <= '1';
							count_dout <= 0;
							BSY_O      <= '1';
						End If;
					When SPI_OUT    =>
						If count_dout <= bus_width-1 Then
							EnableDout <= '1';
							DOUT <= Data(bus_width-1);
							Data <= Data(bus_width-2 downto 0) & '0';
							count_dout <= count_dout + 1;
						Else
							current_state <= RESYNC;
							DOUT       <= '0';
							EnableDout <= '0';
						End If;
					When Others     =>
						Data <= (others => '0');
						BSY_O      <= '0';
						If (WE_I='0' AND STB_I='0') Then
							FSOut <= '1';
							ACK_O <= '0';
							current_state <= DATA_FETCH;
						End If;
				End case;
			End If;
		End If;
	End Process;
	
	SCLK  <= CLK_I and EnableDout;
	
end Behavioral;