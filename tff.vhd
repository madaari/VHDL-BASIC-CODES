
library ieee;
use ieee.std_logic_1164.all;

entity tff is
port(T,CLK,RESET:in BIT; q,qbar :inout BIT);
end entity;

architecture tff of tff is
begin 
process(CLK,RESET)
begin
	if(RESET = '0') then
	if(T='1' and CLK='0' and CLK'EVENT) then --falling edge triggered
	q <= not q;
	end if;
	else
	q<='0';
	end if;

end process;
process(q)
begin
	qbar <= not q;
end process;
end architecture;