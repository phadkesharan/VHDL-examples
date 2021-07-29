-- Not Gate TestBench
library IEEE;
use IEEE.std_logic_1164.all;

entity not_gate_tb is

end not_gate_tb;

architecture tb of not_gate_tb is

-- component 
component not_gate is 
port(
    a: in std_logic;
    q : out std_logic
);
end component;

signal a_in, q_out : std_logic;

begin

    -- Unit Under Test
    TEST : not_gate port map(a_in, q_out);

    process begin

        a_in <= '0';
        wait for 5 ns;

        a_in <= '1';
        wait for 5 ns;

        -- clear inputs
        a_in <= '0';
        
        assert false report "Test Done !" severity note;
        wait;
    end process;
end tb;
