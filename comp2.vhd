library ieee;
use ieee.std_logic_1164.all;

entity comp2 is
port(a,b,li,gi,ei: IN BIT;lo,go,eo:OUT BIT);
end entity;

architecture comp2 of comp2 is
begin
process(a,b,li,gi,ei)
begin
	if a>b then
	go <= '1'; 
	else if a<b then
	lo <= '1'; 
	else
	eo <= ei;
	lo <= li;
	go <= gi;
	end if;
	end if;
end process;
end architecture;