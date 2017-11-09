library ieee;
use ieee.std_logic_1164.all;

entity srlatch is
port(s,clk:IN BIT := '1';r:in bit :='0'; q: BUFFER BIT :='1'; qbar: BUFFER BIT :='0' );
end entity; 

architecture srlatch of srlatch is
component nandgate is
	port(a,b:IN BIT; c: OUT BIT);
end component;
signal temp0,temp1:BIT := '1';
begin	

	u2: nandgate port map(temp0,qbar,q);
	u0: nandgate port map(s,clk,temp0);
	u1: nandgate port map(r,clk,temp1);
	u3: nandgate port map(temp1,q,qbar);

end architecture;