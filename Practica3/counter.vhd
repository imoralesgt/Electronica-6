library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter is
	Generic (BUS_WIDTH : NATURAL := 8);
	
	Port (
		clk       : in  STD_LOGIC;
		rst       : in  STD_LOGIC;
		count_out : out STD_LOGIC_VECTOR (BUS_WIDTH - 1 downto 0)
		);
end counter;

architecture Behaivoral of counter is
	signal count : integer range 0 to 2**bus_width-1;
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				count <= 0;
			else
				count <= count + 1;
			end if;
		end if;
	end process;
	
	count_out <= std_logic_vector(to_unsigned(count, bus_width));
end behaivoral;