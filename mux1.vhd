Library IEEE;
use ieee.std_logic_1164.all;

entity mux is
	port(a,b,c,d,s1,s0: IN BIT;out1: OUT BIT);
end entity mux;

architecture mux1 of mux is
	begin
	out1<=((not s0) and (not s1) and a) or ((s0) and (not s1) and b) or (( s0) and ( s1) and d) or ((not s0) and ( s1) and c);
end mux1;