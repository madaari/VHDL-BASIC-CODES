--by behavioural modelling
library IEEE;
use IEEE.std_1164.all;

entity half_adder is
	port(
	a: in bit;
	b: in bit;
	c in bit; 
	sum : out bit; 
	carry : out bit);
end entity half_adder;

architecture half_behav of half_adder is
	begin
		process(a,b,c)	
			begin
				if(a = '0') then
					if(b = '0') then
						if(c = '0') then
							sum <= '0';
							carry <= '0';
						else
							sum <= '1';
							carry <= '0';
					else
						if(c = '0') then
							sum <= '1';
							carry <= '0';
						else
							sum <= '0';
							carry <= '1';		
				else
					if(b = '0') then
						if(c = '0') then
							sum <= '1';
							carry <= '0';
						else
							sum <= '0';
							carry <= '1';
					else
						if(c = '0') then
							sum <= '0';
							carry <= '1';
						else
							sum <= '1';
							carry <= '1';		
		end process;
		
end half_behav;
