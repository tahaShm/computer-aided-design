library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;  
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.ALL;
--use IEEE.std_logic_signed.ALL;

entity weightVector is
    generic(N : integer := 16);
	port(c : out STD_LOGIC_VECTOR(9*(N+1)-1 downto 0));
end weightVector;

architecture weightVector_arch of weightVector is
    signal inputs : STD_LOGIC_VECTOR(9*(N+1)-1 downto 0);
begin
    process is
        variable seed1 : positive;
        variable seed2 : positive;
        variable x1, x2 : real;
        variable avg: integer:= 0;
    begin
        seed1 := 1;
        seed2 := 1;
        for i in 0 to 9*(N+1)-1 loop
            uniform(seed1, seed2, x1);
            uniform(seed1, seed2, x2);
            inputs(i downto i) <= std_logic_vector(to_unsigned(integer(x1), 1));
            wait for 1ps;
        end loop;
   end process;   
   c <= inputs;

end weightVector_arch;
