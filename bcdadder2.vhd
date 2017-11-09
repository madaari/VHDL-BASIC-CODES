library ieee;
use ieee.std_logic_1164.all;

entity bcdadder2 is
port(a0,a1,b0,b1 : IN BIT_VECTOR(3 downto 0); cin: IN BIT; output: OUT BIT_VECTOR(7 downto 0); cout:INOUT BIT);
end entity;

architecture bcdadder2 of bcdadder2 is
component bcdadder1 is
 port(a,b:in BIT_VECTOR(3 downto 0);c:out bit_vector(3 downto 0);cout : inout bit;cin : in bit);
end component;
signal temp : BIT;
signal temp_sum,temp_sum1 : BIT_VECTOR(3 downto 0);
begin
u1: bcdadder1 port map(a0,b0,temp_sum,temp,cin);
u2: bcdadder1 port map(a1,b1,temp_sum1,cout,temp);
output(7) <= temp_sum1(3);
output(6) <= temp_sum1(2);
output(5) <= temp_sum1(1);
output(4) <= temp_sum1(0);
output(3) <= temp_sum(3);
output(2) <= temp_sum(2);
output(1) <= temp_sum(1);
output(0) <= temp_sum(0);
end architecture;