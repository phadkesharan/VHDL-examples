-- Xor gate Structural modeling TestBench

library IEEE;
use IEEE.std_logic_1164.all;

entity xor_gate_tb is 

end entity xor_gate_tb;

architecture tb of xor_gate_tb is

-- component
component xor_gate is
port(
    a, b : in std_logic;
    q : out std_logic
);
end component;

signal a_in, b_in, q_out : std_logic;

begin

    -- Unit under test
    TEST : xor_gate port map(a_in, b_in, q_out);

    process begin

        a_in <= '0';
        b_in <= '0';
        wait for 1 ns;

        a_in <= '1';
        b_in <= '0';
        wait for 1 ns;

        a_in <= '0';
        b_in <= '1';
        wait for 1 ns;

        a_in <= '1';
        b_in <= '1';
        wait for 1 ns;

        assert false report "Test Done" severity note;
        wait;
    end process;
end tb;



