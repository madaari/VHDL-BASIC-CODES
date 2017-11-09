library ieee;
use ieee.std_logic_1164.all;

entity arith_alu is
	port(a,b: IN bit_vector(3 downto 0);
		sel: IN bit_vector(0 to 1);
		cin: IN BIT;
		cout: out BIT;
		ans: OUT bit_vector(3 downto 0));
end entity;

architecture arith_alu of arith_alu is
component binaryadder4 is
port(
		a,b : IN bit_vector(3 downto 0);
		cin,mode : IN BIT;
		cout: OUT BIT;
		sum : OUT bit_vector(3 downto 0));
end component;
signal cin_mask,mode:BIT;
signal a_mask : BIT_VECTOR(3 downto 0);
begin
mode <= '0' when sel = "00" else
	'1' when sel = "01" else
	'0' when sel = "11" else
	'1' when sel = "10";
cin_mask <= cin when sel = ("00" or "01") else
	    '0' when sel= "11" else
	    '1' when sel = "10";
a_mask <= a when sel = "00" else
	  a when sel = "01" else
     "0000" when sel = "11" else
     "0000" when sel = "10";
u1:binaryadder4 port map(a_mask,b,cin_mask,mode,cout, ans);
end architecture;