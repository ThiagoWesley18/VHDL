library ieee;
use ieee.std_logic_1164.all;

entity FF_tipoD is
	port(d, clk: in std_logic;
				q : out std_logic);
end FF_tipoD;

architecture arc_FF_tipoD of FF_tipoD is
begin
	process(clk)
	begin
		if (clk'event and clk = '1') then
			q <= d;
		end if;
	end process;
end arc_FF_tipoD;