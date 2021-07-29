-- 4 bit SISO shift register 

library ieee;
use ieee.std_logic_1164.all;

entity shift_register is port(
    serial_in, clk_in : in std_logic;
    serial_out : out std_logic
);
end entity shift_register;

architecture structural of shift_register is

-- sub component
component d_ff port(
    d, clk : in std_logic;
    q : out std_logic
);
end component;

-- internal connections
signal t_1, t_2, t_3 : std_logic;

begin
    FF_1: d_ff port map(serial_in, clk_in, t_1);
    FF_2: d_ff port map(t_1, clk_in, t_2);
    FF_3: d_ff port map(t_2, clk_in, t_3);
    FF_4: d_ff port map(t_3, clk_in, serial_out);

end structural;

