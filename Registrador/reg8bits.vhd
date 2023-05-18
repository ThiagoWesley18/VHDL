library ieee;
use ieee.std_logic_1164.all;

--Registrador paralelo
entity reg8bits is
	port(din: in std_logic_vector(7 downto 0);
		  clk : in std_logic;
		  dout: out std_logic_vector(7 downto 0));
end reg8bits;

architecture arc_reg8bits of reg8bits is
begin
	process(din,clk)
	begin
		if clk'event and clk = '1' then
			dout <= din;
		end if;
	end process;
end arc_reg8bits;