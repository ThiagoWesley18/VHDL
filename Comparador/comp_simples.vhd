library ieee;
use ieee.std_logic_1164.all;

entity comp_simples is
	port( x,y: in std_logic_vector(2 downto 0);
			 s : out std_logic_vector(2 downto 0)); 
end comp_simples;

architecture Arq_comp of comp_simples is
begin
	process(x,y)
	begin
		if x < y then -- se x for maior ou igual a y a saida sera 1
			s <= "001";
		else 
			if x = y then 
				s <= "010";
			else
				s <= "100";
			end if;
		end if;
	end process;
end Arq_comp;