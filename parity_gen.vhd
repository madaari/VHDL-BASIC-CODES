-- PARITY GENERATOR
library ieee;
use ieee.std_logic_1164.all;

entity p_gen is
	port(a,b,c : IN BIT; p : OUT BIT);
end entity;

architecture p_gen of p_gen is
begin
	p <= a xor b xor c;
end architecture;