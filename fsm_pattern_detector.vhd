entity pattern_detector is
port ( input,reset,clk:in bit;
	output:out bit);
end entity;
architecture arch_pattern_detector of pattern_detector is
type state is (S0,S1,S2,S3);
signal ps,ns:state;
begin
process(reset,clk)
begin
if(reset='1') then
ps<=S0;
elsif (clk'event and clk='1') then
ps<=ns;
end if;
end process;
process(input,ps)
begin
case ps is
when S0=>
	if (input='0') then
	ns<=S1;
	output<='0';
	elsif (input='1') then
	ns<=S0;
	output<='0';
	end if;
when S1=>
	if (input='0') then
	ns<=S1;
	output<='0';
	elsif (input='1') then
	ns<=S2;
	output<='0';
	end if;
when S2=>
	if (input='0') then
	ns<=S3;
	output<='0';
	elsif (input='1') then
	ns<=S0;
	output<='0';
	end if;
when S3=>
	if (input='0') then
	ns<=S1;
	output<='0';
	elsif (input='1') then
	ns<=S2;
	output<='1';
	end if;
end case;
end process;
end arch_pattern_detector;
