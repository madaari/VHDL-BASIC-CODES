library IEEE;
use IEEE.std_logic_1164.all;

entity mux_41 is
	port(
		a: in bit;
		b: in bit;
		c: in bit;
		d: in bit;
		s1: in bit;
		s2: in bit;
		output: out bit
);
end entity;

architecture mux_behav_arch of mux_41 is
	begin
		process(a,b,c,s1,s2)
		begin
			case s1 is
				when '0' =>  
					if(s2 = '0') then
						output <= a;
					else
						output <= b;
					end if;
				when '1' =>
					if(s2 = '0') then
						output <= c;
					else
						output <= d;
					end if;
			end case;
		end process; 
end mux_behav_arch;