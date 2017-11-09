library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity adder32 is
	port(
		a,b: IN std_logic_vector(31 downto 0);
		cin: IN std_logic;
		sum: OUT std_logic_vector(31 downto 0);
		cout: OUT std_logic
);
end entity;

architecture adder32 of adder32 is
signal temp : std_logic_vector(32 downto 0);
begin
	temp <= '0'&a + b + cin;
	cout<=temp(32);
	sum <= temp(31 downto 0);
end architecture;
