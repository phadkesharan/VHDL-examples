-- Behavioral MUX 2x1

library IEEE;
use IEEE.std_logic_1164.all;

--base entity 

entity mux_2x1 is port(
    x : in std_logic;
    y : in std_logic;
    s : in std_logic;
    o : out std_logic
);
end entity mux_2x1;

architecture behave of  mux_2x1 is
begin
    process(x, y, s)is
    begin
        if s = '0' then
            o <= x;
        elsif s = '1' then
            o <= y;
        end if;
    end process;
end behave;