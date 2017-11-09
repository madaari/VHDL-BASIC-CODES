entity sa_fsm is
port(	x,y,reset,clk : in bit;
	s:out bit);
end entity;
architecture sa_fsm_arch of sa_fsm is
type state is (S0,S1);
signal ps,ns : state;
begin
process(clk,reset)				
begin
if(reset='1') then 
ps <= S0;
elsif (clk'event and clk='1') then
ps<=ns;
end if;
end process;
process(x,y,ps)
begin
case ps is
when S0 => 
	if(x='0' and y='0') then
	ns <= S0;
	s<='0';
	elsif(x='0' and y='1') then
	ns <= S0;
	s<='1';
	elsif(x='1' and y='0') then
	ns <= S0;
	s<='1';
	else
	ns <= S1;
	s<='0';
	end if;
when S1 => 
	if(x='0' and y='0') then
	ns <= S0;
	s<='1';
	elsif(x='0' and y='1') then
	ns <= S1;
	s<='0';
	elsif(x='1' and y='0') then
	ns <= S1;
	s<='0';
	else
	ns <= S1;
	s<='1';
	end if;
end case;
end process;
end sa_fsm_arch;
