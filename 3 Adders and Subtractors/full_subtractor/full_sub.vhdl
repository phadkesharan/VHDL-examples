-- Full Subtractor dataflow modeling 

library IEEE;
use IEEE.std_logic_1164.all;

entity full_sub is port(
	x, y, z: in std_logic;
    s, c : out std_logic
);
end full_sub;

architecture rtl of full_sub is
begin
	process(x, y, z)
    begin
    	s <= ((x xor y) xor z);
    	c <= ((not x and y) or (not x and z) or (y and z));
	end process;
end rtl;