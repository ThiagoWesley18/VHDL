library ieee;
use ieee.std_logic_1164.all;

entity FF_SR is
	port(	reset, set, clk : in std_logic;
		  q: out std_logic);
end FF_SR;

architecture arc_FF_SR of FF_SR is
begin
	process(reset, set, clk)
	begin
		if clk'event and clk = '1' then
			if set = '1' and reset = '0' then
				q <= '1';
			elsif set = '0' and reset = '1' then
				q <= '0';
			end if;
			-- se set='0' e reset='0' entao q continua com valor anterior
		end if;
	end process;
end arc_FF_SR;