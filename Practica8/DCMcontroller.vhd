----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:23:35 02/22/2014 
-- Design Name: 
-- Module Name:    DCMcontroller - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DCMcontroller is

port(
	clkIn  : in std_logic;
	clkOut1 : out std_logic;
	clkOut2 : out std_logic;
	clkOut3 : out std_logic;
	lockedOut : out std_logic
);

end DCMcontroller;

architecture Behavioral of DCMcontroller is

	component ipCore_DCM
	port
	 (-- Clock in ports
	  CLK_IN1           : in     std_logic;
	  -- Clock out ports
	  CLK_OUT1          : out    std_logic;
	  CLK_OUT2          : out    std_logic;
	  CLK_OUT3          : out    std_logic;
	  -- Status and control signals
	  LOCKED            : out    std_logic
	 );
	end component;

begin

CMTinst : ipCore_DCM
  port map
   (-- Clock in ports
    CLK_IN1 => clkIn,
    -- Clock out ports
    CLK_OUT1 => clkOut1,
    CLK_OUT2 => clkOut2,
    CLK_OUT3 => clkOut3,
    -- Status and control signals
    LOCKED => lockedOut);

end Behavioral;

