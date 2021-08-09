-- 4 bit synchronous Up counter

library IEEE;
use IEEE.std_logic_1164.all;

entity counter is port(
    clk, a_in, clear: in std_logic;
    b_out : out std_logic
);
end entity counter;

architecture structural of counter is

-- Sub component
component and_gate is port(
    a : in std_logic;
    b : in std_logic;
    q : out std_logic
);
end component;

component jk_ff is port(
    j, k, clk, clear : in std_logic;
    q: out std_logic
);
end component;

-- internal connections
signal Qa, Qb, Qc, Jc, Jd: std_logic;

begin
    
    JK_1: jk_ff port map(a_in, a_in, clk, clear, Qa);
    JK_2: jk_ff port map(Qa, Qa, clk, clear, Qb);
    AND_1: and_gate port map(Qa, Qb, Jc);
    JK_3: jk_ff port map(Jc, Jc, clk, clear, Qc);
    AND_2: and_gate port map(Jc, Qc, Jd);
    JK_4 : jk_ff port map(Jd, Jd, clk, clear, b_out);

end structural;
