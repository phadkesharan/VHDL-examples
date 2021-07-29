-- nor gate behavioral modeling

library IEEE;
use IEEE.std_logic_1164.all;

entity xnor_gate is
port(
    a, b : in std_logic;
    q : out std_logic
);
end entity xnor_gate;

architecture behave of xnor_gate is
begin 
    process(a, b)
    begin
        if a = b then
            q <= '1';
        else
            q <= '0';
        end if;
    end process;
end behave;