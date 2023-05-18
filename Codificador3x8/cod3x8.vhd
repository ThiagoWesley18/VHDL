library ieee;
use ieee.std_logic_1164.all;

entity cod3x8 is
	port(x : in std_logic_vector(7 downto 0);
		  s : out std_logic_vector(2 downto 0));
end cod3x8 ;

architecture Arc_cod8x3 of cod3x8  is
begin
	with x select
		s <= "000" when "00000001",
			  "001" when "00000010",
			  "010" when "00000100",
			  "011" when "00001000",
			  "100" when "00010000",
			  "101" when "00100000",
			  "110" when "01000000",
			  "111" when "10000000",
			  "ZZZ" when others;
			  
end Arc_cod8x3; 