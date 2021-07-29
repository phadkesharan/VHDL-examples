--Testbench for encoder 8x3
library ieee;
use ieee.std_logic_1164.all;

entity encoder_8x3_tb is

end encoder_8x3_tb;

architecture tb of encoder_8x3_tb is

-- Components

component encoder_8x3 is port(
    q0, q1, q2, q3, q4, q5, q6, q7 : in std_logic;
    a, b, c : out std_logic
);
end component;

signal d0, d1, d2, d3, d4, d5, d6, d7, x, y ,z : std_logic;

begin

    -- Unit under Test

    TEST : encoder_8x3 port map(d0, d1, d2, d3 ,d4, d5 ,d6, d7, x, y ,z);

    process begin

        d0 <= '0';
        d1 <= '0';
        d2 <= '0';
        d3 <= '0';
        d4 <= '0';
        d5 <= '0';
        d6 <= '0';
        d7 <= '0';
        wait for 10 ns;

        d0 <= '1';
        wait for 5 ns;
        
        d1 <= '1';
        d0 <= '0';
        wait for 5 ns;

        d2 <= '1';
        d1 <= '0';
        wait for 5 ns;

        d3 <= '1';
        d2 <= '0';
        wait for 5 ns;

        d4 <= '1';
        d3 <= '0';
        wait for 5 ns;

        d5 <= '1';
        d4 <= '0';
        wait for 5 ns;

        d6 <= '1';
        d5 <= '0';
        wait for 5 ns;

        d7 <= '1';
        d6 <= '0';
        wait for 5 ns;

        d7 <='0';
        wait for 15 ns;

        assert false report "Test done." severity note;
        wait;

    end process;
end tb;
