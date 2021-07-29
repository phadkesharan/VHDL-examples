-- 4 bit shift register testbench

library ieee;
use ieee.std_logic_1164.all;

entity shift_register_tb is

end entity shift_register_tb;

architecture tb of shift_register_tb is

component shift_register is port(
    serial_in, clk_in : in std_logic;
    serial_out : out std_logic
);
end component;

-- test signals 
signal s_in, clk, s_out : std_logic;
constant clock_time_period : time := 50 ns;

begin
    -- unit under test
    TEST: shift_register port map(s_in, clk, s_out);

    --process 1 - clock
    clock_process : process begin

        for i in 0 to 100 loop

            clk <= '0';
            wait for clock_time_period/2;

            clk <= '1';
            wait for clock_time_period/2;

        end loop ;

        wait;
    end process;

    -- process 2 signal 
    signal_process: process begin

        s_in <= '1';
        wait for clock_time_period;

        s_in <= '0';
        wait for clock_time_period;

        s_in <= '0';
        wait for clock_time_period;

        s_in <= '0';
        wait for clock_time_period;

        s_in <= '1';
        wait for clock_time_period;

        s_in <= '0';
        wait for clock_time_period;

        s_in <= '1';
        wait for clock_time_period;

        s_in <= '0';
        wait for clock_time_period;

        s_in <= '1';
        wait for clock_time_period;

        s_in <= '1';
        wait for clock_time_period;

        s_in <= '1';
        wait for clock_time_period;

        s_in <= '1';
        wait for clock_time_period;

        s_in <= '0';
        wait for clock_time_period;

        s_in <= '0';
        wait for clock_time_period;

        s_in <= '0';
        wait for clock_time_period;

        s_in <= '0';
        wait for clock_time_period;

        s_in <= '1';
        wait for clock_time_period;

        s_in <= '0';
        wait for clock_time_period;

        s_in <= '1';
        wait for clock_time_period;

        s_in <= '0';
        wait for clock_time_period;

        s_in <= '0';
        wait for clock_time_period;

        s_in <= '1';
        wait for clock_time_period;

        s_in <= '0';
        wait for clock_time_period;

        s_in <= '1';
        wait for clock_time_period;

        assert false report "test done" severity note;
        wait;
    end process;
end tb;


