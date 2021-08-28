library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity neurontb is

end neurontb;

architecture test of neurontb is
    COMPONENT cntlr 
    PORT(start, clk, rst : in std_logic;
         n : in std_logic_vector(7 downto 0); 
         ready, rstAcm, rstOut : out std_logic;
         selector : buffer std_logic_vector(7 downto 0));
    END COMPONENT;
    COMPONENT dp 
        generic(N : integer := 16);
        port(
            clk, rstAcm, rstOut, ready : in std_logic;
            selector: in std_logic_vector(7 downto 0);
            c: out std_logic_vector(16 downto 0)
        );
    END COMPONENT;
    
    FOR ALL : cntlr USE ENTITY WORK.controller(controller_arch);
    FOR ALL : dp USE ENTITY WORK.datapath(datapath_arch);
    
    SIGNAL start, clk, rst : STD_LOGIC := '0';
    SIGNAL ready, rstAcm, rstOut : STD_LOGIC;
    SIGNAL n : STD_LOGIC_VECTOR(7 downto 0) := "00001101";
    SIGNAL selector : STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL c : STD_LOGIC_VECTOR(16 downto 0);
    
begin
    m0 : cntlr PORT MAP(start => start, clk => clk, rst => rst, n => n, ready => ready, rstAcm => rstAcm, rstOut => rstOut, selector => selector);
    m1 : dp PORT MAP(clk => clk, rstAcm => rstAcm, rstOut => rstOut, ready => ready, selector => selector, c => c);
    
    clk <= not clk after 10 ps;
    rstlabel : rst <= '1' after 50 ps,
               '0' after 90 ps;
    startlabel : start <= '1' after 60 ps,
               '0' after 100 ps;
          
    process begin
        wait for 1000ns;
    end process;
end test;
