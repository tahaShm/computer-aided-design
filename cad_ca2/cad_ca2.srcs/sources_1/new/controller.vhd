library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all ;
use IEEE.std_logic_unsigned.ALL;
--use ieee.std_logic_arith.all;

entity controller is
    Port (
        start, clk, rst : in std_logic;
        n : in std_logic_vector(7 downto 0);
        ready, rstAcm, rstOut : out std_logic;
        selector : buffer std_logic_vector(7 downto 0)
      );
end controller;

architecture controller_arch of controller is
    type state_type is (idle, init, starting, MAC, ending);
    signal state_reg, state_next : state_type;
    signal selSignal : std_logic_vector(7 downto 0);
begin
    --state register
    process (clk, rst)
    begin
        if (rst = '1') then
            state_reg <= idle;
        elsif (clk'event and clk = '1') then
            state_reg <= state_next;
        end if;
    end process;
    
    --next_state logic
    process (clk, state_reg, start, n)
    begin
        if (clk'event and clk = '1') then
            case state_reg is 
                when idle =>
                    if start = '0' then
                        state_next <= idle;
                    else
                        state_next <= init;
                    end if;
                when init =>
                    state_next <= starting;
                when starting =>
                    state_next <= MAC;
                when MAC =>
                    if (selector <= n) then
                        state_next <= MAC;
                    else
                        state_next <= ending;
                    end if;
                when ending =>
                    state_next <= idle;
                when others => null;
            end case;
        end if;
    end process;
    
    --output logic
    process (clk, state_reg)
    begin
        if (clk'event and clk = '1') then
            case state_reg is 
                when idle =>
                    rstAcm <= '0';  
                    rstOut <= '0';
                    selector <= "00000000";
                    ready <= '0';
                    
                when init =>
                    rstAcm <= '1';
                    rstOut <= '1';
                    selector <= "00000000";
                    ready <= '0';
                when starting =>
                    rstAcm <= '0';
                    rstOut <= '0';
                when MAC =>
                    rstOut <= '1';
                    selector <= selector + '1';
                when ending =>
                    rstOut <= '0';
                    ready <= '1';
                when others => null;
            end case;
        end if;
    end process;
end controller_arch;