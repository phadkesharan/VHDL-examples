library ieee;
use ieee.std_logic_1164.all;

entity sr_ff_tb is
    -- empty entity
end entity sr_ff_tb;


architecture tb of sr_ff_tb is

component sr_ff is port(
    s, r, clk : in std_logic;
    q, q_bar : out std_logic
);
end component;

signal s_in, r_in, clk_in, q_out, q_bar_out : std_logic;
constant clock_time_period : time := 20 ns;

begin
    -- unit under test
    test: sr_ff port map(s_in, r_in, clk_in, q_out, q_bar_out);

    clock_process: process begin
        clk_in <= '0';
        wait for clock_time_period/2;
        clk_in <= '1';
        wait for clock_time_period/2;
    end process;

    simulation_process: process begin

        s_in <= '0';
        r_in <= '0';
        wait for 40 ns;

        s_in <= '0';
        r_in <= '1';
        wait for 40 ns;

        s_in <= '1';
        r_in <= '0';
        wait for 40 ns;

        s_in <= '1';
        r_in <= '1';
        wait for 40 ns;

        s_in <= '0';
        r_in <= '1';
        wait for 40 ns;

        s_in <= '1';
        r_in <= '0';
        wait for 40 ns;

        s_in <= '1';
        r_in <= '1';
        wait for 40 ns;

        assert false report "Test done." severity note;
        wait;

    end process;
end tb;    


