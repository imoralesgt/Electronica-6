----------------------------------------------------------------------------------
-- Company: Universidad de San Carlos de Guatemala
-- Engineer: Ivan Morales - Electronica 6
-- Create Date:    14:16:20 02/21/2013 
-- Module Name:    PWM - behavioral 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM is
	 Generic( 
			PWM_Resolution: Natural := 8
				);
    Port ( 
		   PWM_In : in  STD_LOGIC_VECTOR (PWM_Resolution-1 downto 0);
           CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           Load : in  STD_LOGIC;
           PWM_Out : out  STD_LOGIC 
			 );
end PWM;

architecture behavioral of PWM is
	signal max_pwm: STD_LOGIC_VECTOR (PWM_Resolution-1 downto 0);
	signal count: integer range 0 to (2**PWM_Resolution-1);
	signal enable: STD_LOGIC;
begin
	Process(CLK)
	Begin
		If rising_edge(CLK) Then
			If RST='1' Then
				count <= 0;
				enable <= '0';
				max_PWM <= (others => '0');
			ElsIf Load='1' Then
				max_PWM <= PWM_In;
				enable <= '0';
				count <= 0;
			Else
				enable <= '1';
				count <= count + 1;
			End If;
		End If;
	End Process;
	
	--Type casting
	-- Integer -> UNSIGNED -> STD_LOGIC_VECTOR
	PWM_Out <= '1' when ((std_logic_vector(to_unsigned(count,PWM_Resolution))<=max_pwm)and enable='1') else '0';
end behavioral;