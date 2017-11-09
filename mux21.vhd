library ieee;
use ieee.std_logic_1164.all;

entity mux21 is 
port(a,b,s:IN BIT;output:OUT BIT);
end entity;

architecture mux21 of mux21 is
begin
output <= a when s='0' else
	  b when s='1';
end architecture;