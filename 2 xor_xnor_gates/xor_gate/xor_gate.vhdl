-- Xor gate structural modeling 

-- XOR gate using or_gate, and_gates and not_gates 
-- a xor b = (a and not b) or (b and not a)

library IEEE;
use IEEE.std_logic_1164.all;

entity xor_gate is 
port(
    a, b : in std_logic;
    q : out std_logic
);
end entity xor_gate;

architecture structural of xor_gate is

-- components

-- and gate
component and_gate is
port(
    a : in std_logic;
    b : in std_logic;
    q : out std_logic
);
end component;

-- or gate
component or_gate is
    port(
        a : in std_logic;
        b : in std_logic;
        q : out std_logic
    );
end component;

-- not gate
component not_gate is
    port(
        a : in std_logic;
        q : out std_logic
    );
end component;

-- internal connections
signal sn1, sn2, sa1, sa2, so1, so2 : std_logic;

begin
    NOT1 : not_gate port map(a, sn1);
    NOT2 : not_gate port map(b, sn2);
    AND1 : and_gate port map(a, sn2, so1);
    AND2 : and_gate port map(b, sn1, so2);
    ORR : or_gate port map(so1, so2, q);

end structural;
    
