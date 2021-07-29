-- 4 bit full adder test bench

library ieee;
use ieee.std_logic_1164.all;

entity adder_tb is

end adder_tb;

architecture tb of adder_tb is

component adder is port(
    a0_in, a1_in, a2_in, a3_in, b0_in, b1_in, b2_in, b3_in, c_in_in : std_logic;
    s0_o, s1_o, s2_o, s3_o, c_out_o : std_logic
);
end component;

signal a0, a1, a2, a3, b0, b1, b2, b3, c_in, s0, s1, s2, s3, c_out : std_logic;

begin
    -- unit under test
    TEST: adder port map(a0, a1, a2, a3, b0, b1, b2, b3, c_in, s0, s1, s2, s3, c_out);

    process begin

        -- num1 = 10
        a3 <= '1'; a2 <= '0'; a1 <= '1'; a0 <='0';

        -- num2 = 2
        b3 <= '0'; b2 <= '0'; b1 <= '1'; b0 <='0';

        wait for 40 ns;

        -- num1 = 10
        a3 <= '1'; a2 <= '0'; a1 <= '1'; a0 <='0';

        -- num2 = 2
        b3 <= '0'; b2 <= '0'; b1 <= '1'; b0 <='0';
 
        wait for 40 ns;

        assert false report "test done" severity note;
        wait;

    end process;
end tb;
