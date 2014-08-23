--------------------------------------------------------------------------------
-- Company: 	Digilent Ro
-- Engineer:	Mircea Dabacan
--
-- Create Date:    11:43:28 10/28/06
-- Design Name:    
-- Module Name:    DispCtrl - Behavioral
-- Project Name:   
-- Target Device:  
-- Tool versions:  
-- Description:	 Generates the immage for the VGA Demo
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Revision 0.02 - Modified for Basys: mouse removed, 
--                                     text removed, 
--                                     transparent background
-- Revision 0.03 - March 22, 2009: Modified for Basys2UserDemo:
--                                    - combined with the Synchro component
--                                    - mouse removed, 
--                                    - logo removed, 
--                                    - static horizontal bars
-- Additional Comments:
-- 
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DispCtrl is
  Port (ck: in std_logic;  -- 100MHz
--        Hcnt: in std_logic_vector(9 downto 0);      -- horizontal counter
--        Vcnt: in std_logic_vector(9 downto 0);      -- verical counter

		  SW: in  std_logic_vector(7 downto 0);  -- switches para cambiar los colores
        HS: out std_logic;					-- horizontal synchro signal					
        VS: out std_logic;					-- verical synchro signal 

        outRed  : out std_logic_vector(2 downto 0); -- final color
        outGreen: out std_logic_vector(2 downto 0);	 -- outputs
        outBlue : out std_logic_vector(2 downto 1)
		  );
end DispCtrl;

architecture Behavioral of DispCtrl is

-- constants for Synchro module
  constant PAL:integer:=640;		--Pixels/Active Line (pixels)
  constant LAF:integer:=480;		--Lines/Active Frame (lines)
  constant PLD: integer:=800;	--Pixel/Line Divider
  constant LFD: integer:=521;	--Line/Frame Divider
  constant HPW:integer:=96;		--Horizontal synchro Pulse Width (pixels)
  constant HFP:integer:=16;		--Horizontal synchro Front Porch (pixels)
--  constant HBP:integer:=48;		--Horizontal synchro Back Porch (pixels)
  constant VPW:integer:=2;		--Verical synchro Pulse Width (lines)
  constant VFP:integer:=10;		--Verical synchro Front Porch (lines)
--  constant VBP:integer:=29;		--Verical synchro Back Porch (lines)


-- signals for VGA Demo
  signal Hcnt: std_logic_vector(9 downto 0);      -- horizontal counter
  signal Vcnt: std_logic_vector(9 downto 0);      -- verical counter
  signal intHcnt: integer range 0 to 800-1; --PLD-1 - horizontal counter
  signal intVcnt: integer range 0 to 521-1; -- LFD-1 - verical counter

  signal ck50MHz: std_logic;     -- ck 50MHz
  signal ck25MHz: std_logic;		-- ck 25MHz

begin

-- divide 100MHz clock to 50MHz
  div2: process(ck)
  begin
    if ck'event and ck = '1' then
	   ck50MHz <= not ck50MHz; 
    end if;
  end process;	

   process(ck50MHz)
   begin
		if rising_edge(ck50MHz) Then
			ck25MHz <= not ck25MHz;
		End if;
	end Process;

  syncro: process (ck25MHz)
  begin

  if ck25MHz'event and ck25MHz='1' then
    if intHcnt=PLD-1 then
       intHcnt<=0;
      if intVcnt=LFD-1 then intVcnt<=0;
      else intVcnt<=intVcnt+1;
      end if;
    else intHcnt<=intHcnt+1;
    end if;
	
	-- Generates HS - active low
	if intHcnt=PAL-1+HFP then 
		HS<='0';
	elsif intHcnt=PAL-1+HFP+HPW then 
		HS<='1';
	end if;

	-- Generates VS - active low
	if intVcnt=LAF-1+VFP then 
		VS<='0';
	elsif intVcnt=LAF-1+VFP+VPW then
		VS<='1';
	end if;
end if;
end process; 

-- mapping itnernal integers to std_logic_vector ports
  Hcnt <= conv_std_logic_vector(intHcnt,10);
  Vcnt <= conv_std_logic_vector(intVcnt,10);

  mixer: process(ck25MHz,intHcnt, intVcnt) 
  begin
    if intHcnt < PAL and intVcnt < LAF and intVcnt > 100 then	-- in the active screen

--      if Vcnt(7 downto 6) = "00" then
--         outRed <= Vcnt(5 downto 3); 
--         outGreen <= SW (7 downto 5);
--			outBlue <= SW (4 downto 3); 
--      elsif Vcnt(7 downto 6) = "00" then
--         outRed <= SW (2 downto 0); 
--         outGreen <= Vcnt(5 downto 3); 
--         outBlue <= sw (2 downto 1); 
--      elsif Vcnt(7 downto 6) = "10" then
--         outRed <= "000"; 
--         outGreen <= sw (2 downto 0);
--         outBlue <= Vcnt(5 downto 4); 
--      else
--         outRed(2 downto 1) <= Vcnt(5 downto 4); 
--         outGreen(2 downto 1) <= Vcnt(5 downto 4); 
--         outBlue <= Vcnt(5 downto 4); 
--      end if;

		if intHcnt<85 and intHcnt>15 then
			case sw(7) is
				when '1' =>
					outRed <= (others => '1');
				when others =>
					outRed <= (others => '0');
			end case;
		elsif (intHcnt>=90 and intHcnt<155) then
			case sw(6) is
				when '1' =>
					outGreen <= (others => '1');
				when others =>
					outGreen <= (others => '0');
			end case;
		elsif (intHcnt>=185 and intHcnt<240) then
			case sw(5) is
				when '1' =>
					outBlue <= (others => '1');
				when others =>
					outBlue <= (others => '0');
			end case;
		elsif (intHcnt>=270 and intHcnt<325) then
			case sw(4) is
				when '1' =>
					outRed <= "111";
					outGreen <= "111";
				when others =>
					outRed <= (others => '0');
					outGreen <= (others => '0');
			end case;	
		elsif (intHcnt>=355 and intHcnt<410) then
			case sw(3) is
				when '1' =>
					outGreen <= "111";
					outBlue <= "11";
				when others =>
					outBlue <= (others => '0');
					outGreen <= (others => '0');
			end case;
		elsif (intHcnt>=440 and intHcnt<495) then
			case sw(2) is
				when '1' =>
					outBlue <= "11";
					outRed <= "111";
				when others =>
					outRed <= (others => '0');
					outBlue <= (others => '0');
			end case;
		elsif (intHcnt>=525 and intHcnt<580) then
			case sw(1) is
				when '1' =>
					outRed <= "011";
					outGreen <= "011";
					outBlue <= "01";
				when others =>
					outRed <= (others => '0');
					outGreen <= (others => '0');
					outBlue <= (others => '0');
			end case;
		elsif (intHcnt>=610 and intHcnt<665) then
			case sw(0) is
				when '1' =>
					outRed <= (others => '1');
					outGreen <= (others => '1');
					outBlue <= (others => '1');
				when others =>
					outRed <= (others => '0');
					outGreen <= (others => '0');
					outBlue <= (others => '0');
			end case;
		else
			outRed <= (others => '0');
			outGreen <= (others => '0');
			outBlue <= (others => '0');
		end if;
    else
         outRed <= (others => '0'); 
         outGreen <= (others => '0'); 
         outBlue <= (others => '0'); 
    end if;   
  end process;

end Behavioral;
