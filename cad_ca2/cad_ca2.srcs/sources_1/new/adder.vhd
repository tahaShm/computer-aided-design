library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
--use IEEE.std_logic_signed.ALL;
use IEEE.numeric_std.All;

entity adder is
    port(
        a: in std_logic_vector(16 downto 0);
        b: in std_logic_vector(16 downto 0);
        c: out std_logic_vector(16 downto 0)
    );
end adder;

architecture adder_arch of adder is
signal aSign : std_logic;
signal bSign : std_logic;
signal aVal : std_logic_vector(15 downto 0);
signal bVal : std_logic_vector(15 downto 0);
begin
    aSign <= a(16);
    bSign <= b(16);
    aVal <= a(15 downto 0);
    bVal <= b(15 downto 0);
    c(16) <= aSign when aSign = bSign else
            aSign when aVal > bVal else
            bSign when aVal < bVal else
            '0' when aVal = bVal;
            
    c(15 downto 0) <= aVal + bVal when aSign = bSign else
            aVal - bVal when aVal >= bVal else
            bVal - aVal when aVal < bVal;
end adder_arch;
