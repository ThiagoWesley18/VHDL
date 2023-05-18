library ieee;
use ieee.std_logic_1164.all;

entity somador1bit is
	port(	cin,x,y: in std_logic;
		  cout, s : out std_logic);
end somador1bit;

architecture arc_somador of somador1bit is
begin
	s <= x xor y xor cin;
	cout <= (x and y) or (x and cin) or (y and cin);
end arc_somador;