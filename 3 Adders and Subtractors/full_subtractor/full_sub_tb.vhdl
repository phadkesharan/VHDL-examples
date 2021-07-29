-- Testbench for full subtractor
library IEEE;
use IEEE.std_logic_1164.all;
 
entity full_sub_tb is
-- empty
end full_sub_tb; 

architecture tb of full_sub_tb is

-- DUT component
component full_sub is
port(
    x, y, z: in std_logic;
    s, c : out std_logic
);
end component;

signal x, y, z, s, c : std_logic;

begin

  -- Connect DUT
  DUT: full_sub port map(x, y, z, s, c);

  process
  begin
    x <= '0';
    y <= '0';
    z <= '0';
    wait for 1 ns;
    
    x <= '1';
    y <= '0';
    z <= '0';
    wait for 1 ns;

    x <= '0';
    y <= '1';
    z <= '0';
    wait for 1 ns;

    x <= '1';
    y <= '1';
    z <= '0';
    wait for 1 ns;
  
    x <= '0';
    y <= '0';
    z <= '1';
    wait for 1 ns;

    x <= '1';
    y <= '0';
    z <= '1';
    wait for 1 ns;

    x <= '0';
    y <= '1';
    z <= '1';
    wait for 1 ns;

    x <= '1';
    y <= '1';
    z <= '1';
    wait for 1 ns;
    
    assert false report "Test done." severity note;
    wait;
  end process;
end tb;