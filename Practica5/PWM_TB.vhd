--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:46:55 02/22/2014
-- Design Name:   
-- Module Name:   C:/Users/Ivan/Desktop/fpgaE6Review/Practica5/PWM_TB.vhd
-- Project Name:  Practica5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PWM
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
 
ENTITY PWM_TB IS
END PWM_TB;
 
ARCHITECTURE behavior OF PWM_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PWM
    PORT(
         PWM_In : IN  std_logic_vector(7 downto 0);
         CLK : IN  std_logic;
         RST : IN  std_logic;
         Load : IN  std_logic;
         PWM_Out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal PWM_In : std_logic_vector(7 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';
   signal Load : std_logic := '0';

 	--Outputs
   signal PWM_Out : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PWM PORT MAP (
          PWM_In => PWM_In,
          CLK => CLK,
          RST => RST,
          Load => Load,
          PWM_Out => PWM_Out
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      RST <= '1';
      wait for 100 ns;	
		RST <= '0';

      wait for CLK_period*10;


      PWM_In <= x"A0";
		Load <= '1';
		
		wait for CLK_period*2;
		
		Load <= '0';
		
		wait for CLK_period*300;
		
		PWM_In <= x"FF";
		Load <= '1';
		
		wait for CLK_period*2;
		
		Load <= '0';
		
		wait for CLK_period*300;
		
		PWM_In <= x"02";
		Load <= '1';
		
		wait for CLK_period*2;
		
		Load <= '0';
		
		wait for CLK_period*300;
		
		PWM_In <= x"00";
		Load <= '1';
		
		wait for CLK_period*2;
		
		Load <= '0';

      wait;
   end process;

END;
