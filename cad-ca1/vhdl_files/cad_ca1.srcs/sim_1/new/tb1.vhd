library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.math_real.all;  
use IEEE.numeric_std.all;

entity tb1 is
--  Port ( );
end tb1;

architecture testBench1 of tb1 is
    COMPONENT mult PORT(a,b: IN STD_LOGIC_VECTOR(0 to 3);
                        c:  OUT STD_LOGIC_VECTOR(0 to 7)
                        );
    
    END COMPONENT;
    FOR test1: mult USE ENTITY WORK.mult1(multiplier1);
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
            variable y : integer;
        begin
            seed1 := 1;
            seed2 := 1;
            valRange := 15.0;
            for i in 1 to 10 loop
                uniform(seed1, seed2, x1);
                uniform(seed1, seed2, x2);
                a <= std_logic_vector(to_unsigned(integer(x1 * valRange), 4));
                b <= std_logic_vector(to_unsigned(integer(x2 * valRange), 4));
                wait for 10 ns;
            end loop;
            std.env.stop;
       end process;   
end testBench1;