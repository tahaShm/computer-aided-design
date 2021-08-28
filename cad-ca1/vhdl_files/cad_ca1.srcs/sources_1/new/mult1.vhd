library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity mult1 is
    port(
        a: in std_logic_vector(0 to 3);
        b: in std_logic_vector(0 to 3);
        c: out std_logic_vector(0 to 7)
    );
end mult1;

architecture multiplier1 of mult1 is
   COMPONENT mult_gen_0
    PORT (
        a : in std_logic_vector(0 to 3);
        b : in std_logic_vector(0 to 3);
        p : out std_logic_vector(0 to 7)
    );
    end COMPONENT; 
begin
    mult1 : mult_gen_0
    PORT MAP(
        a => a,
        b => b,
        p => c
    );
end multiplier1;
