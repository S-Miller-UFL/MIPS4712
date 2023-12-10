--steven miller
--Section number: 11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity signextend is
port
(
	input: in std_logic_vector(15 downto 0);
	enable: in std_logic;
	output: out std_logic_vector(31 downto 0)
);
end signextend;

architecture arch of signextend is

begin
process(input, enable)
begin
if(enable = '1') then
	if(input(15) = '1') then
	output <= "1111111111111111" & input;
	else
	output <= "0000000000000000" & input; 
	end if;
else
	output <= "0000000000000000" & input;
end if;
end process;
end arch;