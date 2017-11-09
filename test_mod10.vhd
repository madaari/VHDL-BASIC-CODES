library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench_mod10 is
end entity;

architecture tb of testbench_mod10 is
component mod10 is
	port(CLK,RESET,MODE: IN BIT;OUTPUT : INOUT BIT_VECTOR(3 downto 0));
end component; 
signal CLK,RESET,MODE: BIT;
signal tout: BIT_VECTOR(3 downto 0);
begin
	inst: mod10 port map(CLK,RESET,MODE,tout);
	CLK <= not CLK after 1ns;
	MODE <= not MODE after 20ns;
	RESET <= not RESET after 40ns;
end architecture;