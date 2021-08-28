library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_signed.ALL;
use IEEE.numeric_std.All;

entity mult2 is
    port(
        a: in std_logic_vector(0 to 3);
        b: in std_logic_vector(0 to 3);
        c: out std_logic_vector(0 to 7)
    );
end mult2;

architecture multiplier2 of mult2 is
begin
    c <= std_logic_vector(unsigned(a) * unsigned(b));
end multiplier2;
