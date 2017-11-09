library ieee;
use ieee.std_logic_1164.all;

entity test_srff is
end entity;

architecture test_srff of test_srff is
component srff is
	port(s,clk:IN BIT := '1';r:in bit :='0'; q: BUFFER BIT :='1'; qbar: BUFFER BIT :='0');
end component;
signal r,temp_qbar: BIT;
signal clk,s,temp_q: BIT := '1';

begin

in0: srff port map(s,clk,r,temp_q,temp_qbar);
process
begin
clk <= not clk after 5ns;
wait for 20ns;
s <='1';
r <='0';
wait for 20ns;
s <='0';
r <='1';
wait for 20ns;
end process;
end architecture;
