library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity sub4bit is
	port( a,b: in std_logic_vector(3 downto 0);
			 s : out std_logic_vector(3 downto 0));
end sub4bit;

architecture arc_sub of sub4bit is
begin
	s <= a - b;
end arc_sub;


