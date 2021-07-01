library ieee;
use ieee.std_logic_1164.all;

entity and_gate is port(
    a, b : in std_logic;
    y : out std_logic
);
end entity and_gate;

architecture rtl of and_gate is begin
    process(a, b)
    begin
        y <= a and b;
    end process;
end rtl;

