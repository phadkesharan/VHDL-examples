library IEEE;
use IEEE.std_logic_1164.all;
entity compare is
port(    num1 : in std_logic_vector(3 downto 0);  --input 1
            num2 : in std_logic_vector(3 downto 0);  --input 2
        less : out std_logic;   -- indicates first number is small
        equal : out std_logic;   -- both are equal
    greater : out std_logic    -- indicates first number is bigger 
    );
end compare;
architecture Behavioral of compare is
begin
process(num1,num2)
begin    
if (num1 > num2 ) then  
less <= '0';
equal <= '0';
greater <= '1';
elsif (num1 < num2) then    
less <= '1';
equal <= '0';
greater <= '0';
else     
less <= '0';
equal <= '1';
greater <= '0';
end if;
end process;   
end Behavioral;
