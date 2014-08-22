library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter_ud is
	Generic (BUS_WIDTH : NATURAL := 8);
	
	Port (
		clk       : in  STD_LOGIC;
		rst       : in  STD_LOGIC;
		up_dn     : in  STD_LOGIC;
		count_out : out STD_LOGIC_VECTOR (BUS_WIDTH-1 downto 0)
		);
end counter_ud;

architecture Behaivoral of counter_ud is
	signal count : integer range 0 to 2**BUS_WIDTH-1;
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if rst = '1' then
				count <= 0;
			else
				case up_dn is
					when '1' =>
						count <= count + 1;
					when others =>
						count <= count - 1;
				end case;
			end if;
		end if;
	end process;
	
	count_out <= std_logic_vector(to_unsigned(count, BUS_WIDTH));
end behaivoral;