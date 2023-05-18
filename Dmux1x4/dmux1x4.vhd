library ieee;
use ieee.std_logic_1164.all;

entity dmux1x4 is
	port(d,en : in std_logic;
		  s : in std_logic_vector(1 downto 0);
		  y0,y1,y2,y3 : out std_logic);
end dmux1x4;

architecture Arc_dmux1x4 of dmux1x4 is
begin
	process(d,s)
	begin
		if en = '1' then
			case s is
				when "00" => 
					y0 <= d;
					y1 <= 'Z';
					y2 <= 'Z';
					y3 <= 'Z';
				when "01" => 
					y1 <= d;
					y0 <= 'Z';
					y2 <= 'Z';
					y3 <= 'Z';
				when "10" => 
					y2 <= d;
					y0 <= 'Z';
					y1 <= 'Z';
					y3 <= 'Z';
				when others => 
					y3 <= d;
					y0 <= 'Z';
					y1 <= 'Z';
					y2 <= 'Z';
			end case;
		end if;
	end process;
end Arc_dmux1x4;	