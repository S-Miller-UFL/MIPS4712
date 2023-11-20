--Steven Miller
--11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity instruction_register is

port
(
	clk								: in std_logic;
	input								: in std_logic_vector(31 downto 0);
	irwrite							: in std_logic;
	shiftlefttwo 					: out std_logic_vector(25 downto 0);
	instructiontype				: out std_logic_vector(5 downto 0);
	readreg1							: out std_logic_vector(4 downto 0);
	readreg2							: out std_logic_vector(4 downto 0);
	write_register					: out std_logic_vector(4 downto 0);
	signextend		 				: out std_logic_vector(15 downto 0)

);
end instruction_register;

architecture arch of instruction_register is

begin

process(clk)

begin
	if(clk'event and clk = '1') then
		if(irwrite = '1') then
			shiftlefttwo 					<= input(25 downto 0);
			instructiontype				<= input(31 downto 26);
			readreg1							<= input(25 downto 21);
			readreg2							<= input(20 downto 16);
			write_register					<= input(15 downto 11);
			signextend		 				<= input(15 downto 0);
		end if;
	end if;	
end process;


end arch;