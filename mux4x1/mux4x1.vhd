library ieee;
use ieee.std_logic_1164.all;

entity mux4x1 is
	port( d0, d1, d2, d3, en: in std_logic;
							    s : in std_logic_vector(1 downto 0);
							    y : out std_logic);
end mux4x1;

architecture arc_mux4x1 of mux4x1 is
begin
	process(d0,d1,d2,d3,en,s)
	begin
		if en = '1' then
			case s is
				  when "00" => y <= d0;
				  when "01" => y <= d1;
				  when "10" => y <= d2;
				  when others => y <= d3;
			end case;
		end if;
	end process;		  
end arc_mux4x1;