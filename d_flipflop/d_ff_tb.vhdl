library ieee;
use ieee.std_logic_1164.all;

entity d_ff_tb is 
-- empty
end entity d_ff_tb;

architecture tb of d_ff_tb is

    component d_ff is port(
        d, clk : in std_logic;
        q, q_bar : out std_logic
    );
    end component;

    signal d_in, clk_in, q_out, q_bar_out : std_logic;
    constant clock_time_period : time := 30 ns;

    begin
        --Unit under test
        test : d_ff port map(d_in, clk_in, q_out, q_bar_out);

        -- process1 : clock process

        clock_process : process begin

            for i in 0 to 100 loop

                clk_in <= '0';
                wait for clock_time_period/2;

                clk_in <= '1';
                wait for clock_time_period/2;

            end loop ;

            wait;
        end process;
        
        -- process : simulation process
        
        simulation_process : process begin

            d_in <= 'X';
            wait for 100 ns;

            d_in <=  '0';
            wait for 100 ns;

            d_in <= '1';
            wait for 100 ns;

            d_in <=  '0';
            wait for 100 ns;

            d_in <= '1';
            wait for 100 ns;

            d_in <=  '0';
            wait for 100 ns;

            d_in <= '1';
            wait for 100 ns;

            d_in <= 'X';
            wait for 100 ns;

            d_in <=  '0';
            wait for 100 ns;

            d_in <= '1';
            wait for 100 ns;

            d_in <=  '0';
            wait for 100 ns;

            d_in <= '1';
            wait for 100 ns;

            d_in <=  '0';
            wait for 100 ns;

            d_in <= '1';
            wait for 100 ns;

            d_in <= 'X';
            
            assert false report "test completed" severity note;
            wait;
        end process;
end tb;