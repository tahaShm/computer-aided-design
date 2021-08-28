library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;  
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.ALL;

entity inputSelector is
    generic(N : integer := 16);
	port(
	   inputs, weights : in STD_LOGIC_VECTOR(9*(N+1)-1 downto 0);
	   selector : in STD_LOGIC_VECTOR(7 downto 0);
	   out1, out2 : out STD_LOGIC_VECTOR(8 downto 0)
	);
end inputSelector;

architecture inputSelector_arch of inputSelector is

begin
   out1 <= inputs(9*to_integer(unsigned(selector)) + 8 downto 9*to_integer(unsigned(selector))); 
   out2 <= weights(9*to_integer(unsigned(selector)) + 8 downto 9*to_integer(unsigned(selector)));
end inputSelector_arch;
