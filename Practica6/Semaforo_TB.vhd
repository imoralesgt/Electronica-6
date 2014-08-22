--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:45:39 02/22/2014
-- Design Name:   
-- Module Name:   C:/Users/Ivan/Desktop/fpgaE6Review/Practica6/Semaforo_TB.vhd
-- Project Name:  Practica6
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Semaforo
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
 
ENTITY Semaforo_TB IS
END Semaforo_TB;
 
ARCHITECTURE behavior OF Semaforo_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Semaforo
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         RED : OUT  std_logic;
         GREEN : OUT  std_logic;
         YELLOW : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal RED : std_logic;
   signal GREEN : std_logic;
   signal YELLOW : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Semaforo PORT MAP (
          clk => clk,
          rst => rst,
          RED => RED,
          GREEN => GREEN,
          YELLOW => YELLOW
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      rst <= '1';
      wait for 25 ns;	
		rst <= '0';

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
