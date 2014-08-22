----------------------------------------------------------------------------------
-- Company: Universidad de San Carlos de Guatemala
-- Engineer: Ivan Morales - Electronica 6
-- Create Date:    16:25:27 02/21/2013 
-- Design Name:    TOP Multi PWM @ Basys 2
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--Declaracion de Entidad TOP (puertos y genericos)
entity TOP is
    Port ( PWM_Input   : in  STD_LOGIC_VECTOR (7 downto 0);
           PWM_Loads   : in  STD_LOGIC_VECTOR (5 downto 0);
           PWM_Outputs : out  STD_LOGIC_VECTOR (5 downto 0);
			  CLKin       : in STD_LOGIC;
			  RSTin       : in STD_LOGIC);
end TOP;
--Fin de Entidad

--Inicia arquitectura de TOP
architecture Behavioral of TOP is
--Declaracion de componentes a instanciar
component PWM
	 Generic( PWM_Resolution: Natural := 8
				);
    Port ( PWM_In : in  STD_LOGIC_VECTOR (PWM_Resolution-1 downto 0);
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Load : in  STD_LOGIC;
           PWM_Out : out  STD_LOGIC);
End component;

--Declaracion de seniales
--En este ejemplo no vamos a usar ninguna senial/variable
--Las seniales pueden servir para intercontectar puertos
--del TOP con puertos de los componentes instanciados
begin

--Instanciacion individual de componentes
PWM0: PWM Port Map(
			PWM_In  => PWM_Input,
			CLK	  => CLKin,
			RST     => RSTin,
			Load    => PWM_Loads(0),
			PWM_Out => PWM_Outputs(0)
		);
		
PWM1: PWM Port Map(
			PWM_In  => PWM_Input,
			CLK	  => CLKin,
			RST     => RSTin,
			Load    => PWM_Loads(1),
			PWM_Out => PWM_Outputs(1)
		);	

PWM2: PWM Port Map(
			PWM_In  => PWM_Input,
			CLK	  => CLKin,
			RST     => RSTin,
			Load    => PWM_Loads(2),
			PWM_Out => PWM_Outputs(2)
		);
		
--Instanciando con "For...Generate"		
PWM_x : for i in 3 to 5 generate
	p: PWM Port Map(
		PWM_In  => PWM_Input,
			CLK	  => CLKin,
			RST     => RSTin,
			Load    => PWM_Loads(i),
			PWM_Out => PWM_Outputs(i)
		);
end generate PWM_x;


--Finaliza instanciacion de componentes

--Aqui podria colocarse la logica cominacional/secuencia
--que fuese necesaria. Aunque si se trabaja formalmente,
--no es adecuado realizar ninguna operacion en el TOP.
end Behavioral;