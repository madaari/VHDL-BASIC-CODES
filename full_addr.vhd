
Library IEEE;
use ieee.std_logic_1164.all;

entity full_adder is
	port(a,b,c:IN BIT;sum,carry:OUT BIT);
end entity full_adder;

architecture full_addr of full_adder is
	begin
	sum<= a xor b xor c;
	carry<= (a and b) or (b and c) or (c and a);
end full_addr;