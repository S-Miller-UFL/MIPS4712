--steven miller
--Section number: 11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity thirtytwobitregister is

port
(
	input : in std_logic_vector(31 downto 0);
	clk: in std_logic;
	enable: in std_logic := '1';
	reset: in std_logic := '0';
	output: out std_logic_vector(31 downto 0)

);
end thirtytwobitregister;

architecture arch of thirtytwobitregister is

signal sigout: std_logic_vector(31 downto 0);

begin

process(clk,reset)

begin

if(reset = '1') then

	sigout <= (others => '0');

elsif(clk'event and clk = '1') then

	if(enable = '1') then
	
		sigout <= input;
		
	else
	
		sigout <= sigout;
		
	end if;
	
end if;

end process;

output <= sigout;

end arch;