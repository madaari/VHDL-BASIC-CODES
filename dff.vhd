library ieee;
use ieee.std_logic_1164.all;

entity dff is
port(D,CLK,RESET:in BIT; q,qbar :inout BIT);
end entity;

architecture dff of dff is
begin 
process(CLK,RESET)
begin
	if(RESET='0') then
	if(CLK='0' and CLK'EVENT) then
	q <= D;
	end if;
	else
	q <='0';
	end if;
end process;
process(q)
begin 
qbar <= not q;
end process;
end architecture;