library ieee;
use ieee.std_logic_1164.all;

entity bcdadder1 is
port(a,b:in BIT_VECTOR(3 downto 0);c:out bit_vector(3 downto 0);cout : inout bit;cin : in bit);
end entity;

architecture bcdadder1 of bcdadder1 is
component binaryadder4 is
port(		a,b : IN bit_vector(3 downto 0);
		cin,mode : IN BIT;
		cout: OUT BIT;
		sum : OUT bit_vector(3 downto 0));
end component;
signal temp,variab : bit_vector(3 downto 0);
signal carry,carry1 : BIT;
begin
u1 : binaryadder4 port map(a,b,cin,'0',carry1,temp);
variab <= "0110" when (carry1='1') or (temp = "1010") or (temp = "1011") or (temp = "1100") or (temp = "1101") or (temp = "1110") or (temp = "1111") else
	"0000" when carry1='0';
u2 : binaryadder4 port map(temp,variab,'0','0',carry,c);
cout <= carry1 xor carry;
end architecture;