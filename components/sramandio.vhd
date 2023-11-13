--steven miller
--Section number: 11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sramandio is

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
end sramandio;

architecture arch of sramandio is

component SRAM is
port
(	
		aclr		: IN STD_LOGIC  := '0';
		address	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		rden		: IN STD_LOGIC  := '1';
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
);
end component;

component thirtytwobitregister is
port
(
	input : in std_logic_vector(31 downto 0);
	clk: in std_logic;
	enable: in std_logic := '1';
	reset: in std_logic := '0';
	output: out std_logic_vector(31 downto 0)

);
end component;

component thirtytwobitlatch is

port
(
	input : in std_logic_vector(31 downto 0);
	latch_enable: in std_logic;
	reset : in std_logic;
	output: out std_logic_vector(31 downto 0)

);
end component;

signal sram_out : std_logic_vector(31 downto 0);
signal sram_in : std_logic_vector(31 downto 0);
signal inport0_out : std_logic_vector(31 downto 0);
signal inport1_out : std_logic_vector(31 downto 0);
signal outport_en : std_logic;
signal inport_in_extended : std_logic_vector(31 downto 0);
signal zero_extended : std_logic_vector(21 downto 0) := (others=>'0');
signal outport_out : std_logic_vector(31 downto 0);
signal latch_input : std_logic_vector(31 downto 0);
signal sram_en : std_logic;
constant fff8 : std_logic_vector := x"0000FFF8";
constant fffc : std_logic_vector := x"0000FFFC";

begin
inport_in_extended <=zero_extended & inport_input;

inport0 : thirtytwobitregister port map(input => inport_in_extended, clk => clk, enable=>inport_en,output=>inport0_out);

inport1 : thirtytwobitregister port map(input => inport_in_extended, clk => clk, enable=>inport_en,output=>inport1_out);

outport : thirtytwobitregister port map(input => sram_data, clk => clk, enable=>outport_en, output=>outport_out);

outputlatch : thirtytwobitregister port map(input => latch_input, clk=>clk, enable => read_en, reset => reset, output => output);

sram_mem: SRAM port map(address =>address(7 downto 0),clock=>clk,data =>sram_data,rden=>read_en,wren=>sram_en, q=>sram_out);
--logic for output of entire unit
output_logic:process(address,inport0_out,inport1_out, read_en, sram_out)

--max address : ff = 1111 1111
--inport0 address: fff8 = 1111 1111 1111 1000
--inport1/outport address: fffc = 1111 1111 1111 1100
begin

if(address = fff8) then
latch_input <= inport0_out;
elsif(address = fffc) then
latch_input <= inport1_out;
else
latch_input <= sram_out;
end if;


end process;

--logic for enable of sram
sram_enable_logic: process(address,inport0_out,inport1_out, write_en, sram_out)
begin
if(write_en = '0') then
	sram_en <= '0';
	outport_en <= '0';
elsif(address = fff8) then
	sram_en <= '0';
	outport_en <= '0';
elsif(address = fffc and write_en = '1') then
	sram_en <= '0';
	outport_en <= '1';
else
	sram_en <= '1';
	outport_en <= '0';
end if;
end process;


end arch;