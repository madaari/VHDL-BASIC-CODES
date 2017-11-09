library ieee;
use ieee.std_logic_1164.all;

entity shl_reg is
generic(N:NATURAL := 4);
port(clk: IN BIT; input : IN BIT_VECTOR(N-1 downto 0); output : inout BIT_VECTOR(N-1 downto 0));
end entity;

architecture shl_reg of shl_reg is
--signal temp,temp1 : BIT_VECTOR(N-1 downto 0);
begin
process(CLK)
begin
	if(CLK='0' and CLK'EVENT) then
		for k in 0 to N-2 loop
		output(k+1) <= input(k);
		end loop;
	end if;
end process;
end architecture;