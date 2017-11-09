library ieee;
use ieee.std_logic_1164.all;

entity clk_source is
	port( a : inout bit);
end clk_source;

architecture source of clk_source is
	begin
	process(a)
	begin
	a <= '1' after 10 ns, '0' after 30 ns;
	end process;
end architecture;
