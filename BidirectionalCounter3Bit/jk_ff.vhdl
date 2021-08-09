-- JK Flip FLop behavioral modeling 

library ieee;
use ieee.std_logic_1164.all;

entity jk_ff is port(
    j, k, clk : in std_logic;
    q, q_bar : out std_logic
);
end entity jk_ff;

architecture behave of jk_ff is
begin
    process(j, k, clk)
    variable temp : std_logic; 
    begin

        if clk='1' and clk'event then
            if j = '0' and k = '0' then
                temp := temp;
                
            
            elsif j = '0' and k = '1' then
                temp := '0';
                

            
            elsif j = '1' and k = '0' then
                temp := '1';
                

            else
                temp := not temp;
                
            end if;
        end if;
        
        q <= temp;
        q_bar <= not temp;
    end process;
end behave;