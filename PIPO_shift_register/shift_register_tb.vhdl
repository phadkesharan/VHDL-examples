-- PIPO shift regsiter testbench

library ieee;
use ieee.std_logic_1164.all;

entity shift_register_tb is 

end entity shift_register_tb;

architecture tb of shift_register_tb is

component shift_register is port(
    a : in std_logic_vector(3 downto 0);
    clk : in std_logic;
    b : out std_logic_vector(3 downto 0)
);
end component;

-- test signals

signal a_in, b_out : std_logic_vector(3 downto 0);
signal clk_in : std_logic;
constant clock_time : time := 50 ns;


begin
    -- Unit under test
    TEST : shift_register port map(a_in , clk_in, b_out);

    --process 1 - clock
    clock_process : process begin

        for i in 0 to 100 loop

            clk_in <= '0';
            wait for clock_time/2;

            clk_in <= '1';
            wait for clock_time/2;

        end loop ;

        wait;
    end process;

    -- process 2 logic

    signal_process : process begin

        a_in <= "0000";
        wait for clock_time;

        a_in <= "0001";
        wait for clock_time;

        a_in <= "0010";
        wait for clock_time;

        a_in <= "0011";
        wait for clock_time;

        a_in <= "0100";
        wait for clock_time;

        a_in <= "0101";
        wait for clock_time;

        a_in <= "0110";
        wait for clock_time;

        a_in <= "0111";
        wait for clock_time;

        a_in <= "1000";
        wait for clock_time;

        a_in <= "1001";
        wait for clock_time;

        a_in <= "1010";
        wait for clock_time;

        a_in <= "1011";
        wait for clock_time;

        a_in <= "1100";
        wait for clock_time;

        a_in <= "1101";
        wait for clock_time;

        a_in <= "1110";
        wait for clock_time;

        a_in <= "1111";
        wait for clock_time;


        assert false report "test done" severity note;
        wait;

    end process;
end tb;
