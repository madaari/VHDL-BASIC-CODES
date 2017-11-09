library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity testbench3 is
end entity;

architecture test_arch3 of testbench3 is
component adder32bit is
port (  a,b : in std_logic_vector(31 downto 0);
	carryin : in std_logic;
	sum : out std_logic_vector(31 downto 0);
	carryout : out std_logic );
end component;
signal at,bt : std_logic_vector(31 downto 0);
signal carryint : std_logic;
signal sumt : std_logic_vector(31 downto 0);
signal carryout : std_logic;
begin
inst: adder32bit port map ( at,bt,carryint,sumt,carryout);
process
begin
at <= "00000000000000000000000000000000";
bt <= "11111111111111110000000000000000";
carryint <= '0';
wait for 10 ns;
end process;
end test_arch3;