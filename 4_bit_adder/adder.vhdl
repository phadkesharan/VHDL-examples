-- 4 bit full adder

library ieee;
use ieee.std_logic_1164.all;

entity adder is port(
    a0_in, a1_in, a2_in, a3_in, b0_in, b1_in, b2_in, b3_in, c_in_in : std_logic;
    s0_o, s1_o, s2_o, s3_o, c_out_o : std_logic
);
end adder;

architecture structural of adder is

component full_adder is port(
    x, y, z: in std_logic;
    s, c : out std_logic
);
end component;

signal num1_0, num1_1, num1_2, num1_3, num2_0, num2_1, num2_2, num2_3, out_0, out_1, out_2, out_3, c0, c1, c2, c3, c4: std_logic;

begin
    FA_1: full_adder port map(num1_0, num2_0, out_0, c0);
    FA_2: full_adder port map(num1_1, num2_1, out_1, c1);
    FA_3: full_adder port map(num1_2, num2_2, out_2, c2);
    FA_4: full_adder port map(num1_3, num2_3, out_3, c3);

end structural;

