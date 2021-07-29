-- Half Subtractor TestBench

library ieee;
use ieee.std_logic_1164.all;

entity half_sub_tb is
end half_sub_tb;

architecture test of half_sub_tb is

    component half_sub
        port(
            a, b : in std_logic;
            s, c : out std_logic
        );
    end component;

    signal a, b, s, c : std_logic;

begin

    ha: half_sub port map(a, b, s, c);

    process begin
    
        a <= '0';
        b <= '0';
        wait for 1 ns;

        a <= '0';
        b <= '1';
        wait for 1 ns;

        a <= '1';
        b <= '0';
        wait for 1 ns;

        a <= '1';
        b <= '1';
        wait for 1 ns;

        assert false report "reached the end";
        wait;

    end process;

end test;

