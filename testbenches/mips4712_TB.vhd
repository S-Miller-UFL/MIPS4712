--Steven Miller
--Section number: 11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.NUMERIC_STD.UNSIGNED;

entity mips4712_TB is
end mips4712_TB;

architecture TB of mips4712_TB is
    component MIPS4712 is
        port (
		inport_en 		: in std_logic;
		input_sw		 	: in std_logic_vector(9 downto 0);
		outputs		 	: out std_logic_vector(31 downto 0);
		--general use
		clk : in std_logic;
		reset: in std_logic
            );

    end component;

    signal inport_en 		:  std_logic;
    signal input_sw		:  std_logic_vector(9 downto 0);
    signal outputs		:  std_logic_vector(31 downto 0);
    signal clk 		:  std_logic := '0';
    signal reset		: std_logic := '1';

begin  -- TB

    UUT : entity work.MIPS4712
        port map 
	(
            inport_en   => inport_en,
            input_sw   => input_sw,
            outputs      => outputs,
            clk   => clk,
            reset => reset
	);

clk <= not(clk) after 5 ns;
process
begin
inport_en <= '1';

input_sw <= "0111111111";
wait for 50 ns;

--input_sw <= "1000000111";
wait for 50 ns;

reset <= '0';
wait for 50 ns;
wait until outputs = x"00000037";
report "simulation finished!";
wait;
end process;

end TB;