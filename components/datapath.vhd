--steven miller
--Section number: 11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity datapath is

port
(
--memory unit
inport_enable 	: in std_logic;
input_switches : in std_logic_vector(9 downto 0);
output_leds 	: out std_logic_vector(31 downto 0);
--controller signals
memread			: in std_logic;
memwrite 		: in std_logic;
memtoreg			: in std_logic;
irwrite			: in std_logic;
pcwrite			: in std_logic;
jal				: in std_logic;
issigned			: in std_logic;
pcsource			: in std_logic;
aluop				: in std_logic;
alusrcb			: in std_logic;
alusrca			: in std_logic;
regwrite			: in std_logic;
regdst			: in std_logic;
--general use
clk				: in std_logic;
reset				: in std_logic

);
end datapath;

architecture arch of datapath is

component register_file is
port
(		  
		  clk : in std_logic;
        rst : in std_logic;
		  
        rd_addr0 : in std_logic_vector(4 downto 0); --read reg 1
        rd_addr1 : in std_logic_vector(4 downto 0); --read reg 2
		  
        wr_addr : in std_logic_vector(4 downto 0); --write register
        wr_en : in std_logic;
        wr_data : in std_logic_vector(31 downto 0); --write data
		  
        rd_data0 : out std_logic_vector(31 downto 0); --read data 1
        rd_data1 : out std_logic_vector(31 downto 0); --read data 2
		  --JAL
		  PC_4 : in std_logic_vector(31 downto 0);
		  JumpAndLink : in std_logic
);
end component;

component sramandio is
port
(	
		  sram_data : in std_logic_vector(31 downto 0);
		  address: in std_logic_vector(31 downto 0);
		  read_en: in std_logic;
		  write_en: in std_logic;
		  clk: in std_logic;
		  reset: in std_logic := '0';
		  inport_en : in std_logic;
		  inport_input : in std_logic_vector(31 downto 0);
		  switchten : in std_logic;
		  output: out std_logic_vector(31 downto 0);
		  outport_output : out std_logic_vector(31 downto 0)

);
end component;

component mux2to1 is
port
(
	d : in std_logic_vector(63 downto 0);
	s : in std_logic;
	y : out std_logic_vector(31 downto 0)
);
end component;

component mux4to1 is
port
(	
	d : in std_logic_vector(127 downto 0);
	s : in std_logic_vector(1 downto 0);
	y : out std_logic_vector(31 downto 0)
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

component tentothirtytwoextender is
port
(
	input : in std_logic_vector(9 downto 0);
	output : out std_logic_vector(31 downto 0)
);
end component;


--memoryunit signals
signal memoryunit_inport_input 			: std_logic_vector(31 downto 0);
signal memoryunit_sram_data 				: std_logic_vector(31 downto 0);
signal memoryunit_sram_address 			: std_logic_vector(31 downto 0);
signal memoryunit_output 					: std_logic_vector(31 downto 0);

--instruction register signals		
signal instructionregister_25to0 		: std_logic_vector(25 downto 0);
signal instructionregister_31to26		: std_logic_vector(5 downto 0);
signal instructionregister_25to21		: std_logic_vector(4 downto 0);
signal instructionregister_20to16		: std_logic_vector(4 downto 0);
signal instructionregister_15to11		: std_logic_vector(3 downto 0);
signal instructionregister_15to0 		: std_logic_vector(15 downto 0);
signal instructionregister_mux_0 		: std_logic_vector(31 downto 0);
signal instructionregister_mux_1 		: std_logic_vector(31 downto 0);
signal instructionregister_mux_output 	: std_logic_vector(31 downto 0);

--memory data signals
signal memorydataregister_input			: std_logic_Vector(31 downto 0);
signal memorydataregister_output			: std_logic_Vector(31 downto 0);
signal memorydataregister_mux_0			: std_logic_Vector(31 downto 0);
signal memorydataregister_mux_1			: std_logic_Vector(31 downto 0);
signal memorydataregister_mux_output	: std_logic_vector(31 downto 0);

--register file signals
signal registerfile_readdata1				: std_logic_vector(31 downto 0);
signal registerfile_readdata2 			: std_logic_vector(31 downto 0);
signal registerfile_rega_output			: std_logic_vector(31 downto 0);
signal registerfile_regb_output			: std_logic_vector(31 downto 0);
signal registerfile_regaregister_output: std_logic_vector(31 downto 0);
signal registerfile_regbregister_output: std_logic_vector(31 downto 0);
signal registerfile_outputmux_0			: std_logic_vector(31 downto 0);
signal registerfile_outputmux_1			: std_logic_vector(31 downto 0);
signal registerfile_outputmux_output	: std_logic_vector(31 downto 0);

--program counter signals
signal pc_input								: std_logic_vector(31 downto 0);
signal pc_output								: std_logic_vector(31 downto 0);

--alu signals
signal alu_input1								: std_logic_vector(31 downto 0);
signal alu_input2								: std_logic_vector(31 downto 0);

begin


zeroextend: tentothirtytwoextender port map(
														input => input_switches, 
														output => memoryunit_inport_input
														);

memoryunit: sramandio port map(
										sram_data => memoryunit_sram_data,

										address => memoryunit_sram_address,

										read_en => memread,
										
										write_en=>memwrite,
										
										clk=>clk,
										
										reset=>reset,
										
										inport_en=>inport_enable,
										
										inport_input=>memoryunit_inport_input,
										
										switchten=>input_switches(9),
										
										output=>memoryunit_output, 
										
										outport_output => output_leds
										);
										
--change this so that the mux inputs are 5 bits wide, not 32.
instructionregistermux: mux2to1 port map(
														d => (instructionregister_mux_1 & instructionregister_mux_0),
													
														s =>regdst,
													
														y=>instructionregister_mux_output
													
													 );

memorydataregister: thirtytwobitregister port map(
																	input=>memoryunit_output,
																	
																	clk=>clk,
																	
																	reset=> reset,
																	
																	output=>memorydataregister_mux_1
																);
													
registerfile: register_file port map(
													clk => clk,
													
													rst=>reset, 
													
													rd_addr0=>instructionregister_25to21,
													
													rd_addr1 => instructionregister_20to16,
													
													wr_addr=>instructionregister_mux_output(4 downto 0),
													
													wr_en=>regwrite, 
													
													wr_data=>memorydataregister_mux_output,
													
													rd_data0=>registerfile_readdata1,
													
													rd_data1=>registerfile_readdata2,
													
													pc_4=>pc_output,
													
													jumpandlink=> jal
													
												);
												
registerfilerega: thirtytwobitregister port map(
																	input=>registerfile_readdata1,
																	
																	clk=>clk,
																	
																	reset=> reset,
																	
																	output=>registerfile_rega_output
																);
																
registerfileregb: thirtytwobitregister port map(
																	input=>registerfile_readdata2,
																	
																	clk=>clk,
																	
																	reset=> reset,
																	
																	output=>registerfile_regb_output
																);
																
registerfilemux: mux2to1 port map(
														d => (registerfile_rega_output & registerfile_regb_output),
													
														s =>alusrca,
													
														y=>instructionregister_mux_output
													
													 );
										
										

end arch;