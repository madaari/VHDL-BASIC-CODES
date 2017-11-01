Library IEEE;
use ieee.std_logic_1164.all;

entity AND1 is
	port(a,b:IN BIT;c:OUT BIT);
end entity AND1;

architecture and_gate of AND1 is
	begin
	c<=a and b;
end and_gate;
