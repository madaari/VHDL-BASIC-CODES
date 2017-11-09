library ieee;
use ieee.std_logic_1164.all;

entity mod10 is
 port(CLK,RESET,MODE: IN BIT;OUTPUT : INOUT BIT_VECTOR(3 downto 0));
end entity;

architecture mod10 of mod10 is
component tff is
	port(T,CLK,RESET:in BIT; q,qbar :inout BIT);
end component;
signal temp : BIT_VECTOR(3 downto 0);
signal t1,t2,t3 : BIT;
begin
u0 : tff port map('1',CLK,RESET,OUTPUT(0),temp(0));
u1 : tff port map(t1,CLK,RESET,OUTPUT(1),temp(1));
u2 : tff port map(t2,CLK,RESET,OUTPUT(2),temp(2));
u3 : tff port map(t3,CLK,RESET,OUTPUT(3),temp(3));
t3 <= (MODE and temp(0) and temp(1) and temp(2) and temp(3)) or ((not MODE) and OUTPUT(0) and OUTPUT(1) and OUTPUT(2) and temp(3)) or (mode and temp(0) and temp(1) and temp(2) and OUTPUT(3)) or ((not mode) and output(0) and temp(1) and temp(2) and OUTPUT(3));
t2 <= ((not mode) and OUTPUT(0) and OUTPUT(1) and temp(2) and temp(3)) or (mode and temp(0) and temp(1) and temp(3) and OUTPUT(2)) or ((not mode) and OUTPUT(0) and OUTPUT(1) and OUTPUT(2) and temp(3)) or (mode and temp(0) and temp(1) and temp(2) and OUTPUT(3));
t1 <= ((not mode) and temp(3) and temp(2) and temp(1) and output(0)) or (mode and temp(3) and temp(2) and output(1) and temp(0)) or ((not mode) and temp(3) and temp(2) and output(1) and output(0)) or (mode and temp(3) and OUTPUT(2) and temp(1) and temp(0)) or ((not mode) and temp(3) and OUTPUT(2) and temp(1) and output(0) ) or (mode and  temp(0) and OUTPUT(1) and OUTPUT(2) and temp(3)) or ((not mode) and OUTPUT(0) and OUTPUT(1) and OUTPUT(2) and temp(3)) or (mode and temp(0) and temp(1) and temp(2) and OUTPUT(3)) ;
end architecture;