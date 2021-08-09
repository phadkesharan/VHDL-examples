library ieee;
use ieee.std_logic_1164.all;

entity jk_ff is port(
    j, k, clk, clear : in std_logic;
    q: out std_logic
);
end entity jk_ff;

architecture behave of jk_ff is
begin
    process(j, k, clk, clear)
    variable temp : std_logic; 
    begin

        if clear = '1' then
            temp := '0';
        end if;

        if clk='1' and clk'event then
            if j = '0' and k = '0' then
                temp := temp;
                -- q <= q;
                
            
            elsif j = '0' and k = '1' then
                temp := '0';
                -- q <= '0';

            
            elsif j = '1' and k = '0' then
                temp := '1';
                -- q <= '1';
                
            else
                temp := not temp;
                -- q <= not q;
                
            end if;
        end if;
        
        q <= temp;
    end process;
end behave;