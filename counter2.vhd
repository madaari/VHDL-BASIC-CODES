library ieee;
use ieee.std_logic_1164.all;

entity counter2 is
port(CLK,COUNT,RESET: IN BIT;OUTPUT : INOUT BIT_VECTOR(1 downto 0));
end entity;

architecture counter2 of counter2 is
component tff is
	port(T,CLK,RESET:in BIT; q,qbar :inout BIT);
end component tff;
signal temp,temp1:BIT;
begin
	u1:tff port map(COUNT,CLK,RESET,temp);
	OUTPUT(0) <= temp;
	u2:tff port map(COUNT,temp,RESET,temp1);
	OUTPUT(1) <= temp1;
end architecture;