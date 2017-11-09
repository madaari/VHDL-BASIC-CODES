entity test_pattern_detector is
end entity;
architecture arch_test_pattern_detector of test_pattern_detector is
component pattern_detector is
port ( input,reset,clk:in bit;
	output:out bit);
end component;

signal x,treset,tclk,toutput:bit;
begin
inst: pattern_detector port map (x, treset ,tclk,toutput);
process
begin
tclk <= '1';
wait for 20 ns;
tclk <= '0';
wait for 20 ns;
end process;

process
begin

treset<='0';
x<='0';
wait for 25 ns;
x<='1';
wait for 25 ns;
x<='0';
wait for 25 ns;
x<='1';
wait for 25 ns;
end process;
end arch_test_pattern_detector;
