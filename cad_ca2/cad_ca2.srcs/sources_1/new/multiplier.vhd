library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
--use IEEE.std_logic_signed.ALL;
use IEEE.numeric_std.All;

entity multiplier is
    port(
        a: in std_logic_vector(8 downto 0);
        b: in std_logic_vector(8 downto 0);
        c: out std_logic_vector(16 downto 0)
    );
end multiplier;

architecture multiplier_arch of multiplier is
    COMPONENT mult4 PORT(a,b: IN STD_LOGIC_VECTOR(3 downto 0);
                         c:  OUT STD_LOGIC_VECTOR(7 downto 0)
                         );
    END COMPONENT;
    FOR all : mult4 USE ENTITY WORK.multiplier4(multiplier4_arch);
    signal out0, out1, out2, out3 : std_logic_vector(15 downto 0) := "0000000000000000";                                                                  
begin
    mult0: mult4 PORT MAP(a => a(3 downto 0), b => b(3 downto 0), c => out0(7 downto 0));
    mult1: mult4 PORT MAP(a => a(7 downto 4), b => b(3 downto 0), c => out1(11 downto 4));
    mult2: mult4 PORT MAP(a => a(3 downto 0), b => b(7 downto 4), c => out2(11 downto 4));
    mult3: mult4 PORT MAP(a => a(7 downto 4), b => b(7 downto 4), c => out3(15 downto 8));
    c(16) <= a(8) xor b(8);
    c(15 downto 0) <= out0 + out1 + out2 + out3;
end multiplier_arch;
