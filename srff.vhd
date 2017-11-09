library ieee;
use ieee.std_logic_1164.all;

entity srff is
port(s,clk:IN BIT := '1';r:in bit :='0'; q: BUFFER BIT :='1'; qbar: BUFFER BIT :='0');
end entity; 

architecture srff_m_s of srff is
component srlatch is
	port(s,clk:IN BIT := '1';r:in bit :='0'; q: BUFFER BIT :='1'; qbar: BUFFER BIT :='0' );
end component;
signal temp,temp1,temp2: BIT;
begin
	temp2 <= clk,not clk after 1 ns;
	u0: srlatch port map(s,temp2,r,temp,temp1);
	u1: srlatch port map(temp,clk,temp1,q,qbar);
end architecture;