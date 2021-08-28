library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity actReg is
	generic(N : integer := 16);
	port( ready : in STD_LOGIC; a : in STD_LOGIC_VECTOR(N downto 0);
	clk : in STD_LOGIC; rst : in STD_LOGIC; b :out STD_LOGIC_VECTOR(N downto 0));
end actReg;

architecture actReg_arch of actReg is
begin
	process(clk, rst)
	begin
		if rst = '1' then
			b <= (others=> '0');
		elsif clk'event  and clk = '1' then
		  if ready = '1' then  
            if (a(15) = '1')then
                b <= (others=> '0');
            elsif (a(14) = '0') then
                b <= (others=> '0');
            elsif (a(14) = '1') then
                b <= a;
            end if;
          end if;
        end if;
	end process;
end actReg_arch;
