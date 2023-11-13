--steven miller
--Section number: 11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity thirtytwobitlatch is

port
(
	input : in std_logic_vector(31 downto 0);
	latch_enable: in std_logic;
	reset : in std_logic;
	output: out std_logic_vector(31 downto 0)

);
end thirtytwobitlatch;

architecture arch of thirtytwobitlatch is

signal sigout: std_logic_vector(31 downto 0);

begin

process(reset,latch_enable, input)
begin
if(reset = '1') then
	sigout <= (others => '0');
elsif(latch_enable = '1') then

		sigout <= input;
else
	sigout <= sigout;
end if;

end process;

output <= sigout;

end arch;