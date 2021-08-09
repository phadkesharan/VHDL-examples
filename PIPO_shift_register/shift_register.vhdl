-- 4 bit parallel in parallel out shift register

library ieee;
use ieee.std_logic_1164.all;

entity shift_register is port(
    a : in std_logic_vector(3 downto 0);
    clk : in std_logic;
    b : out std_logic_vector(3 downto 0)
);
end entity shift_register;

architecture structural of shift_register is

component d_ff is port(
    d, clk : in std_logic;
    q : out std_logic
);
end component;

begin
    -- sub components

    Dff_1: d_ff port map(a(0), clk, b(0));
    Dff_2: d_ff port map(a(1), clk, b(1));
    Dff_3: d_ff port map(a(2), clk, b(2));
    Dff_4: d_ff port map(a(3), clk, b(3));

end structural;



