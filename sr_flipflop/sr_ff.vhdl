library ieee;
use ieee.std_logic_1164.all;


entity sr_ff is port(
    s, r, clk : in std_logic;
    q, q_bar : out std_logic
);
end entity sr_ff;

architecture behave of sr_ff is
begin
    process(clk)
        variable temp : std_logic;
        begin
        if clk = '1' and clk'event then
            if s = '0' and r = '0' then
                temp := temp;
            elsif s = '0' and r='1' then
                temp := '0';
            elsif s = '1' and r = '1' then
                temp := '1';
            else
                temp := 'X';
            end if;
        end if;
        q <= temp;
        q_bar <= not temp;
    end process;
end behave;
