-- Demultiplexer 1x2 behavioral modeling 

library IEEE;
use IEEE.std_logic_1164.all;

entity demux_1x2 is port(
    x, s : in std_logic;
    y0, y1: out std_logic
);
end entity demux_1x2;

architecture behave of demux_1x2 is
begin
    process(x, s)
        begin

            if s = '0' then
                y0 <= x;
                y1 <= 'Z';
            
            else
                y1 <= x;
                y0 <= 'Z';

            end if;
    end process;
end behave; 
        
