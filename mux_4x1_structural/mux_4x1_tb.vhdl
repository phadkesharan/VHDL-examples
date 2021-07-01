library ieee;
use ieee.std_logic_1164.all;

entity mux_4x1_tb is 
-- empty
end entity mux_4x1_tb;

architecture tb of mux_4x1_tb is 
--architecture of testbench

component mux_4x1 is port(
    a, b, c, d: in std_logic;
    s0, s1: in std_logic;
    y : out std_logic
);
end component;

signal a_in, b_in, c_in ,d_in, s0_in, s1_in, q_out : std_logic;

begin

    TEST : mux_4x1 port map(a_in, b_in, c_in, d_in, s0_in, s1_in, q_out);

    process begin

        -- intitialize inputs
        a_in <= '1';
        b_in <= '0';
        c_in <= '1';
        d_in <= '0';


        s0_in <= '0';
        s1_in <= '0';
        wait for 5 ns;
        assert(q_out = '1') report "fail 0/0" severity error;

        s0_in <= '1';
        s1_in <= '0';
        wait for 5 ns;
        assert(q_out = '0') report "fail 0/1" severity error;

        s0_in <= '0';
        s1_in <= '1';
        wait for 5 ns;
        assert(q_out = '1') report "fail 1/0" severity error;

        s0_in <= '1';
        s1_in <= '1';
        wait for 5 ns;
        assert(q_out = '0') report "fail 1/1" severity error;

        assert false report "test done" severity note;
        wait;
    end process;
end tb;
