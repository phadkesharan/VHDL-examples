library ieee;
use ieee.std_logic_1164.all;

entity jk_ff_tb is

end entity jk_ff_tb;

architecture tb of jk_ff_tb is

component jk_ff is port(
    j, k, clk : in std_logic;
    q, q_bar : out std_logic
);
end component;

signal j_in, k_in, clk_in, q_out, q_bar_out : std_logic;
constant clock_time_period : time := 30 ns;
constant signal_time_period : time := 100 ns;

begin  

    -- Unit under test
    test : jk_ff port map(j_in, k_in, clk_in, q_out, q_bar_out);

    --process 1 - clock
    clock_process : process begin

        for i in 0 to 100 loop

            clk_in <= '0';
            wait for clock_time_period/2;

            clk_in <= '1';
            wait for clock_time_period/2;

        end loop ;

        wait;
    end process;

    -- process-2 simulation
    simulation_process: process begin

        j_in <='1';
        k_in <='0';
        wait for signal_time_period;

        j_in <='0';
        k_in <='1';
        wait for signal_time_period;

        j_in <='1';
        k_in <='0';
        wait for signal_time_period;

        j_in <='1';
        k_in <='1';
        wait for signal_time_period;

        j_in <='X';
        k_in <='X';
        wait for signal_time_period;

        j_in <='0';
        k_in <='0';
        wait for signal_time_period;

        j_in <='0';
        k_in <='1';
        wait for signal_time_period;

        j_in <='1';
        k_in <='0';
        wait for signal_time_period;

        j_in <='1';
        k_in <='1';
        wait for signal_time_period;

        assert false report "test Completed" severity note;
        wait;
    end process;
end tb;


