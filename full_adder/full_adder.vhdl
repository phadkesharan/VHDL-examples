-- Full Adder data flow

library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is port(
	x, y, z: in std_logic;
    s, c : out std_logic
);
end full_adder;

architecture rtl of full_adder is
begin
	process
    begin
    	s <= ((x xor y) xor z);
    	c <= ((x and y) or (x and z) or (y and z));
	end process;
end rtl;