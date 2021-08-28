library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;  
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_signed.ALL;

entity tb2 is
--  Port ( );
end tb2;

architecture testBench2 of tb2 is
    COMPONENT mult PORT(a,b: IN STD_LOGIC_VECTOR(0 to 3);
                        c:  OUT STD_LOGIC_VECTOR(0 to 7)
                        );
    
    END COMPONENT;
    FOR test1: mult USE ENTITY WORK.mult3(multiplier3);
    SIGNAL a,b: STD_LOGIC_VECTOR (0 to 3);
    SIGNAL c: STD_LOGIC_VECTOR (0 to 7);
    
begin
    test1: mult PORT MAP(a => a, b => b, c => c);
    init: 
        process is
            variable seed1 : positive;
            variable seed2 : positive;
            variable valRange : real;
            variable x1, x2 : real;
            variable avg: integer:= 0;
        begin
            seed1 := 1;
            seed2 := 1;
            valRange := 15.0;
            for i in 1 to 64 loop
                uniform(seed1, seed2, x1);
                uniform(seed1, seed2, x2);
                a <= std_logic_vector(to_unsigned(integer(x1 * valRange), 4));
                b <= std_logic_vector(to_unsigned(integer(x2 * valRange), 4));
                wait for 10 ns;
                avg := avg + abs(to_integer(unsigned(c)) - to_integer(unsigned(a)) * to_integer(unsigned(b)));
            end loop;
             avg := avg / 64;
            std.env.stop;
       end process;   
end testBench2;