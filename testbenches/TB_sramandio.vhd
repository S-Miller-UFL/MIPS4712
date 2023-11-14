--steven miller
--Section number: 11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.NUMERIC_STD.UNSIGNED;

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
read_en <= '1';
reset <= '1';
wait for 10 ns;
reset <= '0';
sram_data <= std_logic_vector(to_unsigned(0,sram_data'length));
--test sram read
for i in 0 to 255 loop
	address <= std_logic_vector(to_unsigned(i,address'length));
	wait until rising_edge(clk);
end loop;

--test inport0
inport_en <= '1';
inport_input <= "1111100000";
address <= x"0000FFF8";
read_en <= '0';
wait until rising_edge(clk);
read_en <= '1';
--wait until rising_edge(clk);
report "simulation finished!";
wait;
end process;
end TB;