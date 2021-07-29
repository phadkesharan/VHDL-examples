-- Half Subtractor Dataflow modeling

library ieee;
use ieee.std_logic_1164.all;

entity half_sub is
    port(
        a, b : in std_logic;
        s, c : out std_logic 
    );
end half_sub;

architecture behave of half_sub is
begin
    s <= a xor b;
    c <= not a and b;
end behave;