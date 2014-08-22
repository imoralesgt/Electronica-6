-- Hola mundo
-- Implementacion de un MUX
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HELLO_WORLD is --Puertos del MUX
	
	Port(
		a   :  in  std_logic;
		b   :  in  std_logic;
		y   :  out std_logic;
		sel :  in  std_logic
	);

end HELLO_WORLD;


architecture behaivoral of HELLO_WORLD is --Comportamiento del MUX
	-- Declaracion de seniales
begin
	y <= b when sel = '0' else a;
end behaivoral;