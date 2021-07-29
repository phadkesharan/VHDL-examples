-- Demultiplexer 1x4 TestBench

library IEEE;
use IEEE.std_logic_1164.all;

entity demux_1x4_tb is 

end entity demux_1x4_tb;

architecture tb of demux_1x4_tb is

component demux_1x4 is port(
    x, s0, s1 : in std_logic;
    y0, y1, y2, y3: out std_logic
);
end component;

signal x, s0, s1, y0, y1, y2, y3 : std_logic;

begin

    -- unit under test
    TEST : demux_1x4 port map(x, s0, s1, y0, y1, y2, y3);
    process
    begin
        x <= '0';
        s0 <= '0';
        s1 <= '0';
        wait for 5 ns;

        x <= '0';
        s0 <= '1';
        s1 <= '0';
        wait for 5 ns;

        x <= '0';
        s0 <= '0';
        s1 <= '1';
        wait for 5 ns;

        x <= '0';
        s0 <= '1';
        s1 <= '1';
        wait for 5 ns;

        x <= '1';
        s0 <= '0';
        s1 <= '0';
        wait for 5 ns;

        x <= '1';
        s0 <= '1';
        s1 <= '0';
        wait for 5 ns;

        x <= '1';
        s0 <= '0';
        s1 <= '1';
        wait for 5 ns;

        x <= '1';
        s0 <= '1';
        s1 <= '1';
        
        assert false report "Test Done" severity note;
        wait;
    end process;
end tb;