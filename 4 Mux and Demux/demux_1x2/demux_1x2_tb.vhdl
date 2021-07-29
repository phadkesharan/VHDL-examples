-- Demultiplexer 1x2 TestBench

library IEEE;
use IEEE.std_logic_1164.all;

entity demux_1x2_tb is 

end entity demux_1x2_tb;

architecture tb of demux_1x2_tb is

component demux_1x2 is port(
    x, s : in std_logic;
    y0, y1: out std_logic
);
end component;

signal x, s, y0, y1 : std_logic;

begin

    -- unit under test
    TEST : demux_1x2 port map(x, s, y0, y1);

    process
    begin
        
        x <= '0';
        s <= '0';
        wait for 5 ns;

        x <= '0';
        s <= '1';
        wait for 5 ns;

        x <= '1';
        s <= '0';
        wait for 5 ns;

        x <= '1';
        s <= '1';
        wait for 5 ns;

        assert false report "Test Done" severity note;
        wait;

    end process;
end tb;