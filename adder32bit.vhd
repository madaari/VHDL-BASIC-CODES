library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity adder32bit is
port (  a,b : in std_logic_vector(31 downto 0);
	carryin : in std_logic;
	sum : out std_logic_vector(31 downto 0);
	carryout : out std_logic );
end entity;

architecture adder32bit_arch of adder32bit is

signal toutp : std_logic_vector(32 downto 0);
begin
toutp <= '0'&a + b + carryin;
sum <= toutp (31 downto 0);
carryout <= toutp(32);

end adder32bit_arch;
