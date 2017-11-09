library ieee;
use ieee.std_logic_1164.all;

entity comp8 is
port(a,b: IN BIT_VECTOR(7 downto 0);lo,go,eo:OUT BIT);
end entity;

architecture comp8 of comp8 is
component comp2 is
	port(a,b,li,gi,ei: IN BIT;lo,go,eo:OUT BIT);
end component;
signal temp_li,temp_gi,temp_ei : BIT_VECTOR(7 downto 0);
begin
	temp_li(0) <= '0';
	temp_gi(0) <= '0';
	temp_ei(0) <= '1';
	G: for k in 0 to 6 generate
	inst: comp2 port map(a(k),b(k),temp_li(k),temp_gi(k),temp_ei(k),temp_li(k+1),temp_gi(k+1),temp_ei(k+1));
	end generate G;
	inst2: comp2 port map(a(7),b(7),temp_li(7),temp_gi(7),temp_ei(7),lo,go,eo);
end architecture;