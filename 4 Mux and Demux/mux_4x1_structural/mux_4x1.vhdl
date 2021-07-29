-- Structural MUX 4x1

library IEEE;
use IEEE.std_logic_1164.all;

entity mux_4x1 is port(
    a, b, c, d: in std_logic;
    s0, s1: in std_logic;
    y : out std_logic
);
end entity mux_4x1;

architecture structural of mux_4x1 is

--sub entity 2x1 MUX
component mux_2x1 port(
    x : in std_logic;
    y : in std_logic;
    s : in std_logic;
    o : out std_logic
);
end component;

--internal connections 

signal out1, out2 : std_logic;

begin
    MUX1: mux_2x1 port map(a, b, s0, out1);
    MUX2: mux_2x1 port map(c, d, s0, out2);
    MUX3: mux_2x1 port map(out1, out2, s1, y);

end structural;