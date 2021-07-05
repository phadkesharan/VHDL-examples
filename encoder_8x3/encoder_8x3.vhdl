-- encoder 8 X 3 bhavioral

library ieee;
use ieee.std_logic_1164.all;

entity encoder_8x3 is port(
    q0, q1, q2, q3, q4, q5, q6, q7 : in std_logic;
    a, b, c : out std_logic
);
end entity encoder_8x3;

architecture behave of encoder_8x3 is begin
    process(q0, q1, q2, q3, q4, q5 ,q6, q7) begin

        if q0 = '1' then
            a <= '0';
            b <= '0';
            c <= '0';


        elsif q1 = '1' then 
            a <= '1';
            b <= '0';
            c <= '0';
    
        elsif q2 = '1' then 
            a <= '0';
            b <= '1';
            c <= '0';

        elsif q3 = '1' then 
            a <= '1';
            b <= '1';
            c <= '0';
        

        elsif q4 = '1' then
            a <= '0';
            b <= '0';
            c <= '1';


        elsif q5 = '1' then 
            a <= '1';
            b <= '0';
            c <= '1';
    
        elsif q6 = '1' then 
            a <= '0';
            b <= '1';
            c <= '1';

        else 
            a <= '1';
            b <= '1';
            c <= '1';
        
        end if;
    end process;
end behave;
            
            