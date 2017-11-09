-- TEST BENCH FOR HAMMING ENCODER
library ieee;
use ieee.std_logic_1164.all; 

entity test is
end entity;

architecture test of test is
	component hamming_encoder is
		port( input : IN BIT_VECTOR(3 downto 0);
	     	      output : OUT BIT_VECTOR(6 downto 0)
		);
	end component;
	signal temp: BIT_VECTOR(3 downto 0);
	signal temp1: BIT_VECTOR(6 downto 0);
	begin
		u0: hamming_encoder port map(temp,temp1);
		process
			begin
			wait for 2ns;
			temp <= "0001";
			wait for 2ns;
			temp <= "0010";
			wait for 2ns;
			temp <= "0011";
			wait for 2ns;
			temp <= "0100";
			wait for 2ns;
			temp <= "0101";
			wait for 2ns;
			temp <= "0110";
			wait for 2ns;
			temp <= "0111"; 
			wait for 2ns; 
			temp <= "1000";
			wait for 2ns;
			temp <= "1001";
			wait for 2ns;
			temp <= "1010";
			wait for 2ns;
			temp <= "1011";
			wait for 2ns;
			temp <= "1100";
			wait for 2ns;
			temp <= "1101";
			wait for 2ns;
			temp <= "1100";
			wait for 2ns;
			temp <= "1111";
			wait for 10ns;
		end process;
end architecture;