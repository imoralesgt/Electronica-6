--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:10:46 02/22/2014
-- Design Name:   
-- Module Name:   C:/Users/Ivan/Desktop/fpgaE6Review/Practica8/CMT_TB.vhd
-- Project Name:  Practica8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DCMcontroller
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY CMT_TB IS
END CMT_TB;
 
ARCHITECTURE behavior OF CMT_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DCMcontroller
    PORT(
         clkIn : IN  std_logic;
         clkOut1 : OUT  std_logic;
         clkOut2 : OUT  std_logic;
         clkOut3 : OUT  std_logic;
         lockedOut : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clkIn : std_logic := '0';

 	--Outputs
   signal clkOut1 : std_logic;
   signal clkOut2 : std_logic;
   signal clkOut3 : std_logic;
   signal lockedOut : std_logic;

   -- Clock period definitions
   constant clkIn_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DCMcontroller PORT MAP (
          clkIn => clkIn,
          clkOut1 => clkOut1,
          clkOut2 => clkOut2,
          clkOut3 => clkOut3,
          lockedOut => lockedOut
        );

   -- Clock process definitions
   clkIn_process :process
   begin
		clkIn <= '0';
		wait for clkIn_period/2;
		clkIn <= '1';
		wait for clkIn_period/2;
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin		

      wait for clkIn_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

