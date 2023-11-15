--steven miller
--Section number: 11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.NUMERIC_STD.UNSIGNED;
use std.textio.all;

entity TB_sramandio is

end TB_sramandio;

architecture TB of TB_sramandio is

component sramandio is
port
(
	sram_data : in std_logic_vector(31 downto 0);
	address: in std_logic_vector(31 downto 0);
	read_en: in std_logic;
	write_en: in std_logic;
	clk: in std_logic;
	reset: in std_logic;
	inport_en : in std_logic;
	inport_input : in std_logic_vector(9 downto 0);
	output: out std_logic_vector(31 downto 0)
);
end component;

	signal sram_data : 	std_logic_vector(31 downto 0);
	signal address: 		std_logic_vector(31 downto 0);
	signal read_en: 		std_logic;
	signal write_en: 		std_logic;
	signal clk: 			std_logic := '0';
	signal reset: 			std_logic :='0';
	signal inport_en : 	std_logic;
	signal inport_input :std_logic_vector(9 downto 0);
	signal output: 		 std_logic_vector(31 downto 0);
	signal done : std_logic := '0';

begin
UUT: entity work.sramandio
port map
(
	sram_data =>sram_data,
	address => address,
	read_en => read_en,
	write_en => write_en,
	clk => clk,
	reset => reset,
	inport_en => inport_en,
	inport_input =>inport_input,
	output => output
);

clk <= not(clk) after 20 ns;
process
begin
--write 0x0A0A0A0A to byte address 0X00000000
write_en <= '1';
read_en <= '0';
address <= x"00000000";
sram_data <= x"0A0A0A0A";
wait until rising_edge(clk);

--write 0xF0F0F0F0 to byte address 0x00000004
write_en <= '1';
read_en <= '0';
address <= x"00000004";
sram_data <= x"F0F0F0F0";
wait until rising_edge(clk);

--read from byte address 0X00000000
write_en <= '0';
read_en <= '1';
address <= x"00000000";
wait until rising_edge(clk);
wait for 5ns;
assert(output = x"0A0A0A0A") report "ERROR: byte address 0x00000000 is not 0x0A0A0A0A";

--read from byte address 0x00000001
write_en <= '0';
read_en <= '1';
address <= x"00000001";
wait until rising_edge(clk);
wait for 5ns;
assert(output = x"0A0A0A0A") report "ERROR: byte address 0x00000001 is not 0x0A0A0A0A";

--read from byte address 0x00000004
write_en <= '0';
read_en <= '1';
address <= x"00000004";
wait until rising_edge(clk);
wait for 5ns;
assert(output = x"F0F0F0F0") report "ERROR: byte address 0x00000004 is not 0xF0F0F0F0";

--read from byte address 0x00000005
write_en <= '0';
read_en <= '1';
address <= x"00000005";
wait until rising_edge(clk);
wait for 5ns;
assert(output = x"F0F0F0F0") report "ERROR: byte address 0x00000005 is not 0xF0F0F0F0";


report "simulation finished!";
end process;
end TB;