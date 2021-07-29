-- MUX 2x1 TestBench

library IEEE;
use IEEE.std_logic_1164.all;

entity mux_2x1_tb is 

end entity mux_2x1_tb;

architecture tb of mux_2x1_tb is

component mux_2x1 is port(
    x : in std_logic;
    y : in std_logic;
    s : in std_logic;
    o : out std_logic
);
end component;

signal x, y, s, o : std_logic;

begin
    -- Unit under test
    TEST : mux_2x1 port map(x, y, s, o);

    process
    begin

        x <= '0';
        y <= '0';
        s <= '0';
        wait for 5 ns;

        x <= '0';
        y <= '0';
        s <= '1';
        wait for 5 ns;

        x <= '1';
        y <= '0';
        s <= '0';
        wait for 5 ns;

        x <= '1';
        y <= '0';
        s <= '1';
        wait for 5 ns;

        x <= '0';
        y <= '1';
        s <= '0';
        wait for 5 ns;

        x <= '0';
        y <= '1';
        s <= '1';
        wait for 5 ns;

        x <= '1';
        y <= '1';
        s <= '0';
        wait for 5 ns;

        x <= '1';
        y <= '1';
        s <= '1';
        
        assert false report "Test Done" severity note;
        wait;
    end process;
end tb;
