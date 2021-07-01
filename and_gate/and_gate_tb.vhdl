library ieee;
use ieee.std_logic_1164.all;

entity and_gate_tb is 

--Empty entity

end entity and_gate_tb;


architecture tb of and_gate_tb is

    -- component
    component and_gate is port(
        a, b : in std_logic;
        y : out std_logic
    );
    end component;

    -- test signals

    signal a_in, b_in, y_out : std_logic;

    begin
        -- unit under test
        TEST: and_gate port map(a_in, b_in, y_out);

        process begin

            a_in <= '0';
            b_in <= '0';
            wait for 5 ns;

            a_in <= '1';
            b_in <= '0';
            wait for 5 ns;

            a_in <= '0';
            b_in <= '1';
            wait for 5 ns;

            a_in <= '1';
            b_in <= '1';
            wait for 5 ns;

            assert false report "Test Done" severity note;
            wait;
        end process;
end tb;