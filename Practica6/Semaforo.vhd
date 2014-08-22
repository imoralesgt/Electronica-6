library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Semaforo is
		Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           RED : out  STD_LOGIC;
           GREEN : out  STD_LOGIC;
           YELLOW : out  STD_LOGIC);
end Semaforo;

architecture Behavioral of Semaforo is
	type FSM is (sRED, sGREEN, sYELLOW);
	
	constant RED_DELAY : NATURAL := 10;
	constant GREEN_DELAY : NATURAL := 20;
	constant YELLOW_DELAY : NATURAL := 5;
	
	signal current_state : FSM;
	signal delay : NATURAL range 0 to GREEN_DELAY;

begin

	process (clk)
	begin
		if (rising_edge(clk)) then
			if (rst = '1') then
				current_state <= sRED;
				delay <= 0;
				RED <= '1';
				GREEN <= '0';
				YELLOW <= '0';
			else
				case current_state is
					when sRED =>
						if delay < RED_DELAY then
							delay <= delay + 1;
							current_state <= sRED;
						else
							delay <= 0;
							current_state <= sGREEN;
							RED <= '0';
							GREEN <= '1';
							YELLOW <= '0';
						end if;
					when sGREEN =>
						if delay < GREEN_DELAY then
							delay <= delay + 1;
							current_state <= sGREEN;
						else
							delay <= 0;
							current_state <= sYELLOW;
							RED <= '0';
							GREEN <= '0';
							YELLOW <= '1';
						end if;
					when sYELLOW => 
						if delay < YELLOW_DELAY then
							delay <= delay + 1;
							current_state <= sYELLOW;
						else
							delay <= 0;
							current_state <= sRED;
							RED <= '1';
							GREEN <= '0';
							YELLOW <= '0';
						end if;
					when others =>
						current_state <= SRED;
						delay <= 0;
						RED <= '1';
						GREEN <= '0';
						YELLOW <= '0';
				end case;
			end if;
		end if;
	end process;

end Behavioral;

