library ieee;
use ieee.std_logic_1164.all;

entity comp_mult is
	port( x,y,z,w: in std_logic_vector(3 downto 0);
			 s : out std_logic); 
end comp_mult;

architecture Arq_compMult of comp_mult is
begin
	process(x,y,z,w)
	begin
		if (x < y and (z <= w or x = z)) then -- se x for maior ou igual a y a saida sera 1
			s <= '1';
		else 
			s <= '0';
		end if;
	end process;
end Arq_compMult;