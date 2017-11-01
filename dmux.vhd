Library IEEE;
use ieee.std_logic_1164.all;

entity demux is
	port(in1,s0,s1:IN BIT;a,b,c,d:OUT BIT);
end entity demux;

architecture dmux of demux is
	begin
	a<=in1 and (not s0) and (not s1);
	b<=in1 and (s0) and (not s1);
	c<=in1 and (not s0) and ( s1);
	d<=in1 and (s0) and ( s1);
end dmux;
