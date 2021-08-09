-- 4 bit synchronous Up counter TestBench

library IEEE;
use IEEE.std_logic_1164.all;

entity counter_tb is

end entity counter_tb;

architecture tb of counter_tb is

component counter is port(
    clk, a_in, clear: in std_logic;
    b_out : out std_logic
);
end component;

constant clock_time_period : time := 50 ns;
signal clk, a_in, b_out, clear_in: std_logic;
-- constant high : std_logic := '1';

begin

    -- unit under test
    TEST: counter port map(clk, a_in, clear_in, b_out);

    --process 1 - clock
    process begin

        clear_in <= '1';
        wait for 100 ns;
        
        clear_in <= '0';
        a_in <= '1';

        for i in 0 to 100 loop

            clk <= '0';
            wait for clock_time_period/2;

            clk <= '1';
            wait for clock_time_period/2;

        end loop ;

        assert false report "Test Done " severity note;
        wait;
    end process;
end tb;