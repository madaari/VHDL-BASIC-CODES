library IEEE;
use IEEE.std_logic_1164.all;



entity alu_logic_behav is
	port(
		a : in bit;
		b : in bit;
		output : out bit;
		select0 : in bit;
		select1 : in bit;
		select2 : in bit
);
end entity;

architecture alu_logic_behav_arch of alu_logic_behav is

signal output_sig,and_sig,or_sig,xor_sig,not_sig : bit ;

component mux_41 
	port(
		a,b,c,d,s1,s2 : in bit;
		output : out bit
);
end component;

begin
	and_sig <= a and output_sig;
	or_sig <= a OR output_sig;
	xor_sig <= a XOR output_sig;
	not_sig <= NOT output_sig;
	u1 : mux_41 port map((and_sig),(or_sig),(xor_sig),(not_sig),select1,select2,output);
	output_sig <= output;
	u2 : mux_41 port map(output_sig,'0','0',b,select1,select2,output_sig );
end alu_logic_behav_arch;