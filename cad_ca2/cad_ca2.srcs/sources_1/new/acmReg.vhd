library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity acmReg is
	generic(N : integer := 16);
	port(a : in STD_LOGIC_VECTOR(N  downto 0);
	clk : in STD_LOGIC; rst : in STD_LOGIC; b :out STD_LOGIC_VECTOR(N downto 0));
end acmReg;

architecture acmReg_arch of acmReg is
begin
	process(clk, rst)
	begin
		if rst = '1' then
			b <= (others => '0');
		elsif clk'event  and clk = '1' then
            b <= a;
        end if;
	end process;
end acmReg_arch;
