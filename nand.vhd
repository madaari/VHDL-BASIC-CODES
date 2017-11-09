library ieee;
use ieee.std_logic_1164.all;

entity nandgate is
port(a,b : in BIT; c : out BIT);
end entity;

architecture nandgate of nandgate is
begin
c <= not (a and b);
end architecture;