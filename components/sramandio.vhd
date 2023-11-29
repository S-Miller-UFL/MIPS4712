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

component mux4to1 is
generic(width: positive := 32);
port
(	
	A : in std_logic_vector(width-1  downto 0);
	B : in std_logic_vector(width-1  downto 0);
	C : in std_logic_vector(width-1  downto 0);
	D : in std_logic_vector(width-1  downto 0) := (others=>'0');
	s : in std_logic_vector(1 downto 0);
	y : out std_logic_vector(width-1 downto 0)
);
end component;

component sramandio_outputlogic is
port
(

inport0: in std_logic_vector(31 downto 0);
inport1: in std_logic_vector(31 downto 0);
ram	 : in std_logic_vector(31 downto 0);
address: in std_logic_vector(31 downto 0);
enable : in std_logic;
clk	: in std_logic;
output: out std_logic_vector(31 downto 0)

);

end component;

component sramandio_sramenablelogic is
port
(

address: in std_logic_vector(31 downto 0);
write_en: in std_logic;
sram_write_en: out std_logic;
outport_en: out std_logic
);
end component;


signal sram_out : std_logic_vector(31 downto 0);

signal inport0_out : std_logic_vector(31 downto 0);

signal inport1_out : std_logic_vector(31 downto 0);

signal outport_en : std_logic;

signal sram_en : std_logic;

signal sram_address_word : std_logic_vector(7 downto 0);

signal inport0_en : std_logic;

signal inport1_en : std_logic;


begin

sram_address_word <= std_logic_vector(shift_right(unsigned(address(7 downto 0)),2));

inport0_en <= not(switchten) and inport_en;

inport1_en <= (switchten) and inport_en;

inport0 : thirtytwobitregister port map(input => inport_input, clk => clk, enable=>inport0_en,output=>inport0_out);

inport1 : thirtytwobitregister port map(input => inport_input, clk => clk, enable=>inport1_en,output=>inport1_out);

outport : thirtytwobitregister port map(input => sram_data, clk => clk, enable=>outport_en, output=>outport_output);

outputlogic: sramandio_outputlogic port map(
								inport0 => inport0_out,
								inport1=>inport1_out,
								ram	=> sram_out,
								address=>address,
								enable =>read_en,
								clk => clk,
								output=>output 
								);
sram_enablelogic: sramandio_sramenablelogic port map(
																	address=>address,
																	write_en=>write_en,
																	sram_write_en=>sram_en,
																	outport_en=>outport_en
																	);

sram_mem: SRAM port map(address =>sram_address_word,clock=>clk,data =>sram_data,rden=>read_en,wren=>sram_en, q=>sram_out);




end arch;