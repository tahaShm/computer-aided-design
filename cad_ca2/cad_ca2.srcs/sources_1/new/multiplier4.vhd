library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_signed.ALL;
use IEEE.numeric_std.All;

entity multiplier4 is
    port(
        a: in std_logic_vector(3 downto 0);
        b: in std_logic_vector(3 downto 0);
        c: out std_logic_vector(7 downto 0)
    );
end multiplier4;

architecture multiplier4_arch of multiplier4 is
begin
    c <= std_logic_vector(unsigned(a) * unsigned(b));
end multiplier4_arch;


 --it must be approximate

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.std_logic_unsigned.ALL;
--use IEEE.std_logic_signed.ALL;
--use IEEE.numeric_std.All;

--Library UNISIM;
--use UNISIM.vcomponents.all;

--entity multiplier4 is
--    port(
--        a: in std_logic_vector(0 to 3);
--        b: in std_logic_vector(0 to 3);
--        c: out std_logic_vector(0 to 7)
--    );
--end multiplier4;

--architecture multiplier4_arch of multiplier4 is
--    signal lut3Out : std_logic;
--begin
--    LUT1 : LUT6_2
--    generic map (
--    INIT => X"78887888aa00aa00") -- Specify LUT Contents
--    port map (
--        O6 => c(1), -- 6/5-LUT output (1-bit)
--        O5 => c(0), -- 5-LUT output (1-bit)
--        I5 => '1', -- LUT input (1-bit)
--        I4 => '0', -- LUT input (1-bit)
--        I3 => a(0), -- LUT input (1-bit)
--        I2 => b(1), -- LUT input (1-bit)
--        I1 => a(1), -- LUT input (1-bit)
--        I0 => b(0) -- LUT input (1-bit)
--    );
    
--    LUT2 : LUT6_2
--    generic map (
--    INIT => X"2777d88878887888") -- Specify LUT Contents
--    port map (
--        O6 => c(2), -- 6/5-LUT output (1-bit)
--        O5 => open, -- 5-LUT output (1-bit)
--        I5 => a(0), -- LUT input (1-bit)
--        I4 => b(2), -- LUT input (1-bit)
--        I3 => a(1), -- LUT input (1-bit)
--        I2 => b(1), -- LUT input (1-bit)
--        I1 => a(2), -- LUT input (1-bit)
--        I0 => b(0) -- LUT input (1-bit)
--    );
    
--    LUT3 : LUT6_2
--    generic map (
--    INIT => X"2777d88878887888") -- Specify LUT Contents
--    port map (
--        O6 => lut3Out, -- 6/5-LUT output (1-bit)
--        O5 => open, -- 5-LUT output (1-bit)
--        I5 => a(1), -- LUT input (1-bit)
--        I4 => b(2), -- LUT input (1-bit)
--        I3 => a(2), -- LUT input (1-bit)
--        I2 => b(1), -- LUT input (1-bit)
--        I1 => a(3), -- LUT input (1-bit)
--        I0 => b(0) -- LUT input (1-bit)
--    );
    
--    LUT4 : LUT6_2
--    generic map (
--    INIT => X"7878787878787878") -- Specify LUT Contents
--    port map (
--        O6 => c(3), -- 6/5-LUT output (1-bit)
--        O5 => open, -- 5-LUT output (1-bit)
--        I5 => '0', -- LUT input (1-bit)
--        I4 => '0', -- LUT input (1-bit)
--        I3 => '0', -- LUT input (1-bit)
--        I2 => lut3Out, -- LUT input (1-bit)
--        I1 => b(3), -- LUT input (1-bit)
--        I0 => a(0) -- LUT input (1-bit)
--    );
    
--    LUT5 : LUT6_2
--    generic map (
--    INIT => X"2777d88878887888") -- Specify LUT Contents
--    port map (
--        O6 => c(4), -- 6/5-LUT output (1-bit)
--        O5 => open, -- 5-LUT output (1-bit)
--        I5 => a(1), -- LUT input (1-bit)
--        I4 => b(3), -- LUT input (1-bit)
--        I3 => a(2), -- LUT input (1-bit)
--        I2 => b(2), -- LUT input (1-bit)
--        I1 => a(3), -- LUT input (1-bit)
--        I0 => b(1) -- LUT input (1-bit)
--    );
    
--LUT6 : LUT6_2
--    generic map (
--    INIT => X"7888788878887888") -- Specify LUT Contents
--    port map (
--        O6 => c(5), -- 6/5-LUT output (1-bit)
--        O5 => open, -- 5-LUT output (1-bit)
--        I5 => '0', -- LUT input (1-bit)
--        I4 => '0', -- LUT input (1-bit)
--        I3 => a(3), -- LUT input (1-bit)
--        I2 => b(2), -- LUT input (1-bit)
--        I1 => a(2), -- LUT input (1-bit)
--        I0 => b(3) -- LUT input (1-bit)
--    );
    
--    LUT7 : LUT6_2
--    generic map (
--    INIT => X"80000000aaaa8000") -- Specify LUT Contents
--    port map (
--        O6 => c(7), -- 6/5-LUT output (1-bit)
--        O5 => c(6), -- 5-LUT output (1-bit)
--        I5 => '1', -- LUT input (1-bit)
--        I4 => '0', -- LUT input (1-bit)
--        I3 => a(3), -- LUT input (1-bit)
--        I2 => b(2), -- LUT input (1-bit)
--        I1 => a(2), -- LUT input (1-bit)
--        I0 => b(3) -- LUT input (1-bit)
--    );
--end multiplier4;