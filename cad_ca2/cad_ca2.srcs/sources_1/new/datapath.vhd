library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity datapath is
    generic(N : integer := 16);
    port(
        clk, rstAcm, rstOut, ready : in std_logic;
        selector: in std_logic_vector(7 downto 0);
        c: out std_logic_vector(16 downto 0)
    );
end datapath;

architecture datapath_arch of datapath is
    COMPONENT actReg
        generic(N : integer := 16);
        port( ready : in STD_LOGIC; a : in STD_LOGIC_VECTOR(N  downto 0);
	          clk : in STD_LOGIC; rst : in STD_LOGIC; b :out STD_LOGIC_VECTOR(N  downto 0));
    END COMPONENT;
    COMPONENT acmReg
        generic(N : integer := 16);
        port(a : in STD_LOGIC_VECTOR(N downto 0);
        clk : in STD_LOGIC; rst : in STD_LOGIC; b :out STD_LOGIC_VECTOR(N  downto 0));
    END COMPONENT;
    COMPONENT inputVec 
        generic(N : integer := 16); 
        PORT(c:  OUT STD_LOGIC_VECTOR(9*(N+1)-1 downto 0));
    END COMPONENT;
    COMPONENT weightVec 
        generic(N : integer := 16); 
        port(c : out STD_LOGIC_VECTOR(9*(N+1)-1 downto 0));
    END COMPONENT;
    COMPONENT adder8 
        PORT(a,b: IN STD_LOGIC_VECTOR(16 downto 0);
             c:  OUT STD_LOGIC_VECTOR(16 downto 0));
    END COMPONENT;
    COMPONENT mult 
        PORT(a,b: IN STD_LOGIC_VECTOR(8 downto 0);
             c:  OUT STD_LOGIC_VECTOR(16 downto 0));
    END COMPONENT;
    COMPONENT inpSel 
       generic(N : integer := 16);
	   PORT(inputs, weights : in STD_LOGIC_VECTOR(9*(N+1)-1 downto 0);
	        selector : in STD_LOGIC_VECTOR(7 downto 0);
	        out1, out2 : out STD_LOGIC_VECTOR(8 downto 0));
    END COMPONENT;
    
    FOR all: actReg USE ENTITY WORK.actReg(actReg_arch);
    FOR all: acmReg USE ENTITY WORK.acmReg(acmReg_arch);
    FOR all: inputVec USE ENTITY WORK.inputVector(inputVector_arch);
    FOR all: weightVec USE ENTITY WORK.weightVector(weightVector_arch);
    FOR all: adder8 USE ENTITY WORK.adder(adder_arch);
    FOR all: mult USE ENTITY WORK.multiplier(multiplier_arch);
    FOR all: inpSel USE ENTITY WORK.inputSelector(inputSelector_arch);
    
    SIGNAL inputVecOut, weightVecOut : STD_LOGIC_VECTOR(9*(N+1)-1 downto 0);
    SIGNAL multIn1, multIn2 : STD_LOGIC_VECTOR(8 downto 0);
    SIGNAL multOut, acmRegOut, addOut : STD_LOGIC_VECTOR(16 downto 0);
    
begin
    m0 : inputVec PORT MAP(c => inputVecOut);
    m1 : weightVec PORT MAP(c => weightVecOut);
    m2 : inpSel PORT MAP(inputs => inputVecOut, weights => weightVecOut, selector => selector, out1 => multIn1, out2 => multIn2);
    m3 : mult PORT MAP(a => multIn1, b => multIn2, c => multOut);
    m4 : adder8 PORT MAP(a => multOut, b => acmRegOut, c => addOut);
    m5 : acmReg PORT MAP(a => addOut, clk => clk, rst => rstAcm, b => acmRegOut);
    m6 : actReg PORT MAP(ready => ready, a => acmregOut, clk => clk, rst => rstOut, b => c);
    
end datapath_arch;
