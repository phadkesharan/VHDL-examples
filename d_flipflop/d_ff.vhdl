library ieee;
use ieee.std_logic_1164.all;

entity d_ff is port(
    d, clk : in std_logic;
    q, q_bar : out std_logic
);
end entity d_ff;

architecture behave of d_ff is
begin
    process(clk)
    variable temp : std_logic;
    begin
    
        if clk = '1' and clk'event then
            if d = '1' then
                temp := '1';
            elsif d = '0' then
                temp := '0';
            else
                temp := 'X';
            end if;
        end if;

        q <= temp;
        q_bar <= not temp;
    end process;
end behave;
        