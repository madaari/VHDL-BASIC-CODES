library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
	port(
		a,b,cin: IN BIT;
		cout,sum: OUT BIT
);
end entity;

architecture fulladder of fulladder is
begin
	cout <= (a and b) or (cin and (a xor b));
	sum <= a xor b xor cin;
end architecture;
