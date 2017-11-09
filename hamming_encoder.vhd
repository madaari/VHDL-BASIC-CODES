-- HAMMING ENCODER
library ieee;
use ieee.std_logic_1164.all;

entity hamming_encoder is
	port( input : IN BIT_VECTOR(3 downto 0);
	     output : OUT BIT_VECTOR(6 downto 0)
	);
end entity;

architecture ham_en of hamming_encoder is
	component p_gen is
		port(a,b,c : IN BIT; p : OUT BIT);
	end component;
	signal p1,p2,p3 : BIT;
	begin
		
		u0: p_gen port map(input(0),input(1),input(2),p3);
		u1: p_gen port map(input(0),input(1),input(3),p2);
		u2: p_gen port map(input(0),input(2),input(3),p1);
		output(6) <= p1;
		output(5) <= p2;
		output(4) <= input(3);
		output(3) <= p3;
		output(2) <= input(2);
		output(1) <= input(1);
		output(0) <= input(0);
end architecture;