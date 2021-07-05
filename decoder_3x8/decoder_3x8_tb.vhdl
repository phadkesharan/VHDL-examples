--Testbench for decoder 3x8
library ieee;
use ieee.std_logic_1164.all;

entity decoder_3x8_tb is

end decoder_3x8_tb;

architecture tb of decoder_3x8_tb is
    
-- Components
component decoder_3x8 is port(
    a, b, c: in std_logic;
    q0, q1, q2, q3, q4, q5, q6, q7 : out std_logic
);
end component;

-- test signals
signal x, y, z, d0, d1, d2, d3, d4, d5, d6, d7: std_logic;

begin

    -- Unit under test

    TEST : decoder_3x8 port map(x, y, z, d0, d1, d2, d3, d4, d5, d6, d7);
     
    process begin

        -- d0 <= 'Z';
        -- d1 <= 'Z';
        -- d2 <= 'Z';
        -- d3 <= 'Z';
        -- d4 <= 'Z';
        -- d5 <= 'Z';
        -- d6 <= 'Z';
        -- d7 <= 'Z';

        x <= '0';
        y <= '0';
        z <= '0';
        wait for 1 ns;
        
        x <= '1';
        y <= '0';
        z <= '0';
        wait for 1 ns;
    
        x <= '0';
        y <= '1';
        z <= '0';
        wait for 1 ns;
    
        x <= '1';
        y <= '1';
        z <= '0';
        wait for 1 ns;
      
        x <= '0';
        y <= '0';
        z <= '1';
        wait for 1 ns;
    
        x <= '1';
        y <= '0';
        z <= '1';
        wait for 1 ns;
    
        x <= '0';
        y <= '1';
        z <= '1';
        wait for 1 ns;
    
        x <= '1';
        y <= '1';
        z <= '1';
        wait for 1 ns;
        
        assert false report "Test done." severity note;
        wait;
    end process;
end tb;                         