library ieee;
use ieee.std_logic_1164.all;

entity shift_alu is
	port(a: IN BIT_VECTOR(3 downto 0);sel: IN BIT;output:OUT BIT_VECTOR(3 downto 0);indown,inup: in BIT);
end entity;

architecture shift_alu of shift_alu is
component mux21 is
port(a,b,s:in BIT;output : out BIT);
end component;
begin
u1: mux21 port map(indown,a(1),sel,output(0));
u2: mux21 port map(a(0),a(2),sel,output(1));
u3: mux21 port map(a(1),a(3),sel,output(2));
u4: mux21 port map(a(2),inup,sel,output(3));
end architecture;