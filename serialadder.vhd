library ieee;
use ieee.std_logic_1164.all;

entity serialadder is
	port(a,b: IN BIT;CLK,RESET:IN BIT; output: OUT BIT);
end entity;

architecture serialadder of serialadder is
component fulladder is
	port(
		a,b,cin: IN BIT;
		cout,sum: OUT BIT
);
end component;
component dff is
	port(D,CLK,RESET:in BIT; q,qbar :inout BIT);
end component;
signal cout,cin,temp : BIT;
begin	

	u0: fulladder port map(a,b,cin,cout,output);
	u2: dff port map(cout,CLK,RESET,cin,temp);
	
	
end architecture;