-- Nor Gate TestBench
library IEEE;
use IEEE.std_logic_1164.all;

entity nor_gate_tb is

end nor_gate_tb;

architecture tb of nor_gate_tb is

-- component 
component nor_gate is 
port(
    a, b : in std_logic;
    q : out std_logic
);
end component;

signal a_in, b_in, q_out : std_logic;

begin

    -- Unit Under Test
    TEST : nor_gate port map(a_in, b_in, q_out);

    process begin

        a_in <= '0';
        b_in <= '0';
        wait for 5 ns;

        a_in <= '0';
        b_in <= '1';
        wait for 5 ns;

        a_in <= '1';
        b_in <= '0';
        wait for 5 ns;

        a_in <= '1';
        b_in <= '1';
        wait for 5 ns;

        -- clear inputs
        a_in <= '0';
        b_in <= '0';
        
        assert false report "Test Done !" severity note;
        wait;
    end process;
end tb;
