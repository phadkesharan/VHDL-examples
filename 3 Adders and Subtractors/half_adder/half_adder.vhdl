-- Half Adder Dataflow modeling

library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
    port(
        a, b : in std_logic;
        s, c : out std_logic 
    );
end half_adder;

architecture behave of half_adder is
begin
    s <= a xor b;
    c <= a and b;
end behave;