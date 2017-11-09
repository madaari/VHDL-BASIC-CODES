library ieee;
use ieee.std_logic_1164.all;

entity binaryadder4 is
	port(
		a,b : IN bit_vector(3 downto 0);
		cin,mode : IN BIT;
		cout: OUT BIT;
		sum : OUT bit_vector(3 downto 0)
);
end entity;

architecture binadd of binaryadder4 is
	component fulladder is
	port(a,b,cin:IN BIT;sum,cout:OUT BIT);
	end component;
	signal temp,carry : BIT_VECTOR(3 downto 0);
	signal te: BIT;
	begin
	temp(0) <= b(0) xor mode;
	temp(1) <= b(1) xor mode;
	temp(2) <= b(2) xor mode;
	temp(3) <= b(3) xor mode;
	te <= mode xor cin;
	u1: fulladder port map(a(0),temp(0),te,sum(0),carry(0));
	u2: fulladder port map(a(1),temp(1),carry(0),sum(1),carry(1));
	u3: fulladder port map(a(2),temp(2),carry(1),sum(2),carry(2));
	u4: fulladder port map(a(3),temp(3),carry(2),sum(3),carry(3));
	cout <= carry(3) xor mode;
end architecture;