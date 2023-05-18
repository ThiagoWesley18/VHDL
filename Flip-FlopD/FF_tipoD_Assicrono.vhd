library ieee;
use ieee.std_logic_1164.all;

entity FF_tipoD_Assicrono is
	port(d, clk, reset: in std_logic;
				q : out std_logic);
end FF_tipoD_Assicrono;

architecture arc_FF_tipoD_Assicrono of FF_tipoD_Assicrono is
begin
	process(clk, reset)
	begin
		if (reset = '1') then
			q <= '0';
		else
			if (clk'event and clk = '1') then
				q <= d;
			end if;
		end if;
	end process;
end arc_FF_tipoD_Assicrono;