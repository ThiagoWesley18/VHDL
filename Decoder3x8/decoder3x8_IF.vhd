library ieee;
use ieee.std_logic_1164.all;


entity decoder3x8_IF is
	port(x : in std_logic_vector(2 downto 0);
		  s : out std_logic_vector(7 downto 0));
end decoder3x8_IF;

architecture arc_dec3x8_IF of decoder3x8_IF is
begin
	process(x)
	begin
		if    (x = "000") then s <= "00000001";
		elsif (x = "001") then s <= "00000010";
		elsif (x = "010") then s <= "00000100";
		elsif (x = "011") then s <= "00001000";
		elsif (x = "100") then s <= "00010000";
		elsif (x = "101") then s <= "00100000";
		elsif (x = "110") then s <= "01000000";
		elsif (x = "111") then s <= "10000000";
		else s <= "ZZZZZZZZ";
		end if;
	end process;
end arc_dec3x8_IF;