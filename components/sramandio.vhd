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
	inport_input : in std_logic_vector(31 downto 0);
	switchten : in std_logic;
	output: out std_logic_vector(31 downto 0);
	outport_output : out std_logic_vector(31 downto 0)

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


signal sram_out : std_logic_vector(31 downto 0);
signal sram_in : std_logic_vector(31 downto 0);
signal inport0_out : std_logic_vector(31 downto 0);
signal inport1_out : std_logic_vector(31 downto 0);
signal outport_en : std_logic;
signal inport_in_extended : std_logic_vector(31 downto 0);
signal zero_extended : std_logic_vector(21 downto 0) := (others=>'0');
signal outport_out : std_logic_vector(31 downto 0);
signal sram_en : std_logic;
constant fff8 : std_logic_vector := x"0000FFF8";
constant fffc : std_logic_vector := x"0000FFFC";
signal sram_address_word : std_logic_vector(7 downto 0);
signal inport0_en : std_logic;
signal inport1_en : std_logic;

--do not write immediately after reading


begin
sram_address_word <= std_logic_vector(shift_right(unsigned(address(7 downto 0)),2));
--inport_in_extended <=zero_extended & inport_input;
inport0_en <= not(switchten) and inport_en;
inport1_en <= (switchten) and inport_en;

inport0 : thirtytwobitregister port map(input => inport_input, clk => clk, enable=>inport0_en,output=>inport0_out);

inport1 : thirtytwobitregister port map(input => inport_input, clk => clk, enable=>inport1_en,output=>inport1_out);

outport : thirtytwobitregister port map(input => sram_data, clk => clk, enable=>outport_en, output=>outport_output);

sram_mem: SRAM port map(address =>sram_address_word,clock=>clk,data =>sram_data,rden=>read_en,wren=>sram_en, q=>sram_out);


--logic for output of entire unit
output_logic:process(address,inport0_out,inport1_out, read_en, sram_out)

--max address : ff = 1111 1111
--inport0 address: fff8 = 1111 1111 1111 1000
--inport1/outport address: fffc = 1111 1111 1111 1100
begin

if(address = fff8) then
output <= inport0_out;
elsif(address = fffc) then
output <= inport1_out;
else
output <= sram_out;
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