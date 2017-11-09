entity testbench2 is
end entity;

architecture test_arch2 of testbench2 is
component adder8bit is
port ( a,b : in bit_vector(7 downto 0);
	carryin : in bit;
	sum : out bit_vector(7 downto 0);
	carryout : out bit );
end component;

signal at,bt : bit_vector(7 downto 0);
signal carryint : bit;
signal sumt : bit_vector(7 downto 0);
signal carryoutt : bit;
begin
inst0 : adder8bit port map (at,bt,carryint,sumt,carryoutt);
process
begin
at <= "11100011";
bt <= "10011001";
carryint <= '0';
wait for 10 ns;

carryint <= '1';
wait for 10 ns;
end process;
end test_arch2;
