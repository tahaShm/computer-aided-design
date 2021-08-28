library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb is
end tb;

architecture testBench of tb is
--    COMPONENT acreg
--        generic(N : integer := 16);
--        port( ready : in STD_LOGIC; a : in STD_LOGIC_VECTOR(N-1  downto 0);
--	          clk : in STD_LOGIC; rst : in STD_LOGIC; b :out STD_LOGIC_VECTOR(N-1  downto 0));
--    END COMPONENT;
--    FOR tester: acreg USE ENTITY WORK.actReg(actReg_arch);
--    SIGNAL clk, rst, ready: STD_LOGIC := '0';
--    SIGNAL a,b : std_logic_vector(15 downto 0);
    
--begin
--    tester: acreg PORT MAP(ready => ready, a => a, clk => clk, rst => rst, b => b);
--    a <= "0000000010101010",
--    "0000000010101010" after 100ps,
--    "0011000010101010" after 200ps,
--    "1000000010101010" after 300ps,
--    "0100000000000000" after 400ps,
--    "0100000110000000" after 500ps,
--    "0000111111111111" after 600ps;
    
--    clk <= not clk after 10 ps;
--    rstLabel : rst <= '1' after 20 ps,
--                   '0' after 40 ps;
--    readyLabel : ready <= '1' after 20 ps;

--acmreg test begin
--    COMPONENT acreg
--        generic(N : integer := 16);
--        port(a : in STD_LOGIC_VECTOR(N-1  downto 0);
--        clk : in STD_LOGIC; rst : in STD_LOGIC; b :out STD_LOGIC_VECTOR(N-1  downto 0));
--    END COMPONENT;
--    FOR tester: acreg USE ENTITY WORK.acmReg(acmReg_arch);
--    SIGNAL clk, rst: STD_LOGIC := '0';
--    SIGNAL a,b : std_logic_vector(15 downto 0);
    
--begin
--    tester: acreg PORT MAP(a => a, clk => clk, rst => rst, b => b);
--    a <= "0000000010101010",
--    "0000000010101010" after 100ps,
--    "0011000010101010" after 200ps,
--    "1000000010101010" after 300ps,
--    "0000000000000000" after 400ps;
    
--    clk <= not clk after 10 ps;
--    controlLabel : rst <= '1' after 20 ps,
--                   '0' after 40 ps;
--acmreg test end

--vector test bench start
--    COMPONENT inputVec 
--        generic(N : integer := 16); 
--        PORT(c:  OUT STD_LOGIC_VECTOR(9*(N+1)-1 downto 0));
--    END COMPONENT;
--    FOR tester: inputVec USE ENTITY WORK.weightVector(weightVector_arch);
--    SIGNAL c: STD_LOGIC_VECTOR (9*(17)-1 downto 0);
    
--begin
--    tester: inputVec PORT MAP(c => c);
--    process begin
--        wait for 1000ps;
--    end process;
-- vector test bench end

--add test bench start
    COMPONENT adder8 PORT(a,b: IN STD_LOGIC_VECTOR(16 downto 0);
                         c:  OUT STD_LOGIC_VECTOR(16 downto 0)
                         );
    
    END COMPONENT;
    FOR tester: adder8 USE ENTITY WORK.adder(adder_arch);
    SIGNAL a,b: STD_LOGIC_VECTOR (16 downto 0);
    SIGNAL c: STD_LOGIC_VECTOR (16 downto 0);
    
begin
    tester: adder8 PORT MAP(a => a, b => b, c => c);
    aLabel: a <= "00000000000000000",
    "00000000000000001" after 1000 ps,
    "00000000000110001" after 2000 ps,
    "00000010101000000" after 3000 ps,
    "00011100000000000" after 4000 ps,
    "01000000000011000" after 5000 ps,
    "10000100000000000" after 6000 ps,
    "10000001100110000" after 7000 ps,
    "10001110000110000" after 8000 ps,
    "10000000100000000" after 9000 ps,
    "10000000011100000" after 10000 ps;
    bLabel: b <= "00000000000000000",
    "00000001111000000" after 1000 ps,
    "10000000000000000" after 2000 ps,
    "00000110001010000" after 3000 ps,
    "10000000000000000" after 4000 ps,
    "00000000010100000" after 5000 ps,
    "11011000000000000" after 6000 ps,
    "00000000000000000" after 7000 ps,
    "1000000001000000" after 8000 ps,
    "01100000000000000" after 9000 ps,
    "10000011000000000" after 10000 ps;
--add test bench end 

--mult test bench begin
--COMPONENT mult PORT(a,b: IN STD_LOGIC_VECTOR(8 downto 0);
--                         c:  OUT STD_LOGIC_VECTOR(16 downto 0)
--                         );
    
--    END COMPONENT;
--    FOR tester: mult USE ENTITY WORK.multiplier(multiplier_arch);
--    SIGNAL a,b: STD_LOGIC_VECTOR (8 downto 0);
--    SIGNAL c: STD_LOGIC_VECTOR (16 downto 0);
    
--begin
--    tester: mult PORT MAP(a => a, b => b, c => c);
--    aLabel: a <= "000000000",
--    "000000001" after 1000 ps,
--    "000000010" after 2000 ps,
--    "000000100" after 3000 ps,
--    "000001000" after 4000 ps,
--    "000010100" after 5000 ps,
--    "100011000" after 6000 ps,
--    "100111000" after 7000 ps,
--    "100110000" after 8000 ps,
--    "100000011" after 9000 ps,
--    "001100000" after 10000 ps;
--    bLabel: b <= "000000000",
--    "100000010" after 1000 ps,
--    "000000100" after 2000 ps,
--    "100000011" after 3000 ps,
--    "000100011" after 4000 ps,
--    "111000000" after 5000 ps,
--    "000000000" after 6000 ps,
--    "100110000" after 7000 ps,
--    "000000000" after 8000 ps,
--    "101100000" after 9000 ps,
--    "000011100" after 10000 ps;
--mult test bench end

--controller test bench start
--COMPONENT cntlr PORT(start, clk, rst : in std_logic;
--                     n : in std_logic_vector(7 downto 0); 
--                     ready, rstAcm, rstOut : out std_logic;
--                     selector : buffer std_logic_vector(7 downto 0)
--                     );
    
--    END COMPONENT;
--    FOR tester: cntlr USE ENTITY WORK.controller(controller_arch);
--    SIGNAL start, clk, rst: STD_LOGIC := '0';
--    SIGNAL n : std_logic_vector(7 downto 0) := "00001001"; 
--    SIGNAL ready, rstAcm, rstOut: STD_LOGIC;
--    SIGNAL selector : std_logic_vector(7 downto 0);
    
--begin
--    tester: cntlr PORT MAP(start => start, clk => clk, rst => rst, n => n, ready => ready, rstAcm => rstAcm, rstOut => rstOut, selector => selector);
--    clk <= not clk after 10 ps;
--    controlLabel : rst <= '1' after 20 ps,
--                   '0' after 40 ps;
--    controlLabel2 : start <= '1' after 100 ps,
--                   '0' after 200 ps;
--    process begin 
--        wait for 100000 ps;
--    end process;
--controller test bench end
end testBench;
