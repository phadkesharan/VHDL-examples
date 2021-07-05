-- decoder 3 X 8 behavioral

library ieee;
use ieee.std_logic_1164.all;

entity decoder_3x8 is port(
    a, b, c: in std_logic;
    q0, q1, q2, q3, q4, q5, q6, q7 : out std_logic
);
end entity decoder_3x8;

architecture behave of decoder_3x8 is begin
    process(a, b, c) begin


        if(a = '0' and b = '0' and c = '0') then
            q0 <= '1';

        elsif(a = '1' and b = '0' and c = '0') then
            q1 <= '1';

        elsif(a = '0' and b = '1' and c = '0') then
            q2 <= '1';

        elsif(a = '1' and b = '1' and c = '0') then
            q3 <= '1';

        elsif(a = '0' and b = '0' and c = '1') then
            q4 <= '1';

        elsif(a = '1' and b = '0' and c = '1') then
            q5 <= '1';

        elsif(a = '0' and b = '1' and c = '1') then
            q6 <= '1';

        else
            q7 <= '1';
        
        end if;
    end process;
end behave;