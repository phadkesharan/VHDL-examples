-- Demultiplexer 1x4 behavioral modeling 

library IEEE;
use IEEE.std_logic_1164.all;

entity demux_1x4 is port(
    x, s0, s1 : in std_logic;
    y0, y1, y2, y3: out std_logic
);
end entity demux_1x4;

architecture behave of demux_1x4 is
begin
    process(x, s0, s1)
        begin

            if s0 = '0' and s1 = '0' then
                y0 <= x;
                y1 <= 'Z';
                y2 <= 'Z';
                y3 <= 'Z';
            
            elsif s0 = '1' and s1 = '0' then
                y0 <= 'Z';
                y1 <= x;
                y2 <= 'Z';
                y3 <= 'Z';

            elsif s0 = '0' and s1 = '1' then
                y0 <= 'Z';
                y1 <= 'Z';
                y2 <= x;
                y3 <= 'Z';

            else
                y0 <= 'Z';
                y1 <= 'Z';
                y2 <= 'Z';
                y3 <= x;

            end if;
    end process;
end behave; 
        
