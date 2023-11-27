--steven miller
--Section number: 11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity datapath is

port
(
--memory unit
inport_enable 		: in std_logic;
input_switches 	: in std_logic_vector(9 downto 0);
output_leds 		: out std_logic_vector(31 downto 0);
--controller signals
memread				: in std_logic;
memwrite 			: in std_logic;
memtoreg				: in std_logic;
irwrite				: in std_logic;
pcwrite				: in std_logic;
pcwritecond			: in std_logic;
jal					: in std_logic;
issigned				: in std_logic;
pcsource				: in std_logic_vector(1 downto 0);
aluop					: in std_logic_vector(5 downto 0);
alusrcb				: in std_logic_vector(1 downto 0);
alusrca				: in std_logic;
regwrite				: in std_logic;
regdst				: in std_logic;
lord					: in std_logic;
instructiontype	: out std_logic_vector(5 downto 0);
--general use
clk					: in std_logic;
reset					: in std_logic

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
generic(width: positive :=32);
port
(
	A : in std_logic_vector(width-1 downto 0);
	B : in std_logic_vector(width-1  downto 0);
	s : in std_logic;
	y : out std_logic_vector(width-1  downto 0)
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

component instruction_register is
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
end component;

component MIPS_ALU is
port 
(
	A: in std_logic_vector(31 downto 0);
	B : in std_logic_vector(31 downto 0);
	ir : in std_logic_vector(4 downto 0);
	opcode : in std_logic_vector(4 downto 0);
	result : out std_logic_vector(31 downto 0);
	result_hi : out std_logic_vector(31 downto 0);
	branch_taken: out std_logic
	);
end component;

component alu_controller is
port
(
	ir 			: in std_logic_vector(5 downto 0);
	aluop 		: in std_logic_vector(5 downto 0);
	hi_en 		: out std_logic;
	lo_en 		: out std_logic;
	alu_lo_hi 	: out std_logic_vector(1 downto 0);
	op_select	: out std_logic_vector(4 downto 0)
);
end component;

component signextend is
port
(
	input : in std_logic_vector(15 downto 0);
	enable: in std_logic;
	output: out std_logic_vector(31 downto 0)
);
end component;

component shiftleft2 is
generic (width : positive := 32);
port
(
	input : in std_logic_vector(width-1 downto 0);
	output : out std_logic_vector(width +2 downto 0)

);
end component;

--memoryunit signals
signal memoryunit_inport_input 			: std_logic_vector(31 downto 0);
--signal memoryunit_sram_data 				: std_logic_vector(31 downto 0);
signal memoryunit_sram_address 			: std_logic_vector(31 downto 0);
signal memoryunit_output 					: std_logic_vector(31 downto 0);

--instruction register signals		
signal instructionregister_25to0 		: std_logic_vector(25 downto 0);
signal instructionregister_31to26		: std_logic_vector(5 downto 0);
signal instructionregister_25to21		: std_logic_vector(4 downto 0);
signal instructionregister_20to16		: std_logic_vector(4 downto 0);
signal instructionregister_15to11		: std_logic_vector(4 downto 0);
signal instructionregister_15to0 		: std_logic_vector(15 downto 0);
signal instructionregister_mux_0 		: std_logic_vector(4 downto 0);
signal instructionregister_mux_1 		: std_logic_vector(4 downto 0);
signal instructionregister_mux_output 	: std_logic_vector(4 downto 0);

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
signal pcsource_mux_0						: std_logic_vector(31 downto 0);
signal pcsource_mux_1						: std_logic_vector(31 downto 0);
signal pcsource_mux_2						: std_logic_vector(31 downto 0);
signal pcsource_concat						: std_logic_vector(31 downto 0);
signal pcsource_shiftleft_output			: std_logic_vector(31 downto 0);
signal pc_enable 								: std_logic;
signal concated 					: std_logic_vector(31 downto 0);
--alu signals
signal alu_input1										: std_logic_vector(31 downto 0);
signal alu_input2										: std_logic_vector(31 downto 0);
signal alu_result										: std_logic_vector(31 downto 0);
signal alu_resulthi									: std_logic_vector(31 downto 0);
signal alu_branchtaken								: std_logic;
signal alu_inputb_4x1mux_input_0					: std_logic_vector(31 downto 0);
signal alu_inputb_4x1mux_input_1					: std_logic_vector(31 downto 0);
signal alu_inputb_4x1mux_input_2					: std_logic_vector(31 downto 0);
signal alu_inputb_4x1mux_input_3					: std_logic_vector(31 downto 0);
signal alu_inputb_4x1mux_signextend_input		: std_logic_vector(31 downto 0);
signal alu_inputb_4x1mux_signextend_output	: std_logic_vector(31 downto 0);
signal alu_result_mux_input_0						: std_logic_vector(31 downto 0);
signal alu_result_mux_input_1						: std_logic_vector(31 downto 0);
signal alu_result_mux_input_2						: std_logic_vector(31 downto 0);
signal alu_result_mux_output						: std_logic_vector(31 downto 0);
signal alu_inputb_4x1mux_shiftleft2_input		: std_logic_vector(31 downto 0);
signal alu_inputb_4x1mux_shiftleft2_output	: std_logic_vector(31 downto 0);
--alu controller signals
signal alucontroller_opcode				: std_logic_Vector(4 downto 0);
signal alucontroller_hien					: std_logic;
signal alucontroller_loen					: std_logic;
signal alucontroller_alulohi				: std_logic_vector(1 downto 0);
signal shifted_left 					: std_logic_vector(31 downto 0);


begin

pc_enable <= ((alu_branchtaken and pcwritecond) or (pcwrite));
zeroextend: tentothirtytwoextender port map(
														input => input_switches, 
														output => memoryunit_inport_input
														);

memoryunit: sramandio port map(
										sram_data => alu_inputb_4x1mux_input_0,

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
instructionregistermux: mux2to1 generic map(width=>5) port map(
														A => instructionregister_20to16,
														
														B => instructionregister_15to11,
													
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
													
													rd_addr1 =>instructionregister_20to16,
													
													wr_addr=>instructionregister_mux_output,
													
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
																	
																	output=>alu_inputb_4x1mux_input_0
																);
																
registerfileoutputmux: mux2to1 generic map(width=>32) port map(
														A => pc_output,
														
														B => registerfile_rega_output,
													
														s =>alusrca,
													
														y=>registerfile_outputmux_output
													
													 );
										
instructionregister: instruction_register port map(
																	clk => clk,
																	
																	input=>memoryunit_output,
																	
																	irwrite=>irwrite,
																	
																	shiftlefttwo=>instructionregister_25to0,
																	
																	instructiontype=>instructiontype,
																	
																	readreg1=>instructionregister_25to21,
																	
																	readreg2=>instructionregister_20to16,
																	
																	write_register=>instructionregister_15to11,
																	
																	signextend=>instructionregister_15to0


																	);		
			shifted_left <= std_logic_vector(shift_left(unsigned(alu_inputb_4x1mux_signextend_output),2));													
alu_inputb_4x1mux: mux4to1 port map(
												A=>alu_inputb_4x1mux_input_0,
												B=>alu_inputb_4x1mux_input_1,
												C=>alu_inputb_4x1mux_signextend_output,
												D=>shifted_left,
												s=>alusrcb,
												y=>alu_input2
												);		
												
alu:MIPS_ALU port map(
								A=>registerfile_outputmux_output,
								B=>alu_input2,
								ir=>instructionregister_25to0(10 downto 6),
								opcode=>alucontroller_opcode,
								result=>alu_result,
								result_hi=>alu_resulthi,
								branch_taken=>alu_branchtaken
							);
memorydatamux: mux2to1 generic map(width=>32) port map(
																			A => alu_result_mux_output,
														
																			B => memorydataregister_mux_1,
													
																			s =>memtoreg,
													
																			y=>memorydataregister_mux_output
																		);
aluresultregister: thirtytwobitregister port map(
																	input=>alu_result,
																	
																	clk=>clk,
																	
																	reset=> reset,
																	
																	output=>alu_result_mux_input_0
																);
loregister: thirtytwobitregister port map(
																	input=>alu_result,
																	
																	clk=>clk,
																	
																	enable =>alucontroller_loen,
																	
																	reset=> reset,
																	
																	output=>alu_result_mux_input_1
														);
hiregister: thirtytwobitregister port map(
																	input=>alu_resulthi,
																	
																	clk=>clk,
																	
																	enable =>alucontroller_hien,
																	
																	reset=> reset,
																	
																	output=>alu_result_mux_input_2
															);
aluresultmux: mux4to1 generic map(width=>32) port map(
																		A=>alu_result_mux_input_0,
																		B=>alu_result_mux_input_1,
																		C=>alu_result_mux_input_2,
																		--D=>alu_inputb_4x1mux_input_3,
																		s=>alucontroller_alulohi,
																		y=>alu_result_mux_output
																			);
alucontroller: alu_controller port map(
													ir=>instructionregister_25to0(5 downto 0),
													aluop=> aluop,
													hi_en=>alucontroller_hien,
													lo_en=>alucontroller_loen,
													alu_lo_hi=>alucontroller_alulohi,
													op_select=>alucontroller_opcode
													);
			concated <= pc_output(31 downto 28) & instructionregister_25to0 & "00";									
pcsourcemux: mux4to1 generic map(width=>32) port map(
																		A=>alu_result,
																		B=>alu_result_mux_input_0,
																		C=> concated,
																		--D=>alu_inputb_4x1mux_input_3,
																		s=>pcsource,
																		y=>pc_input
																			);
signextender: signextend port map(
												input =>instructionregister_15to0,
												enable=> issigned,
												output=>alu_inputb_4x1mux_signextend_output
											);
programcounter: thirtytwobitregister port map(
																	input=>pc_input,
																	
																	clk=>clk,
																	
																	enable=> pc_enable,
																	
																	reset=> reset,
																	
																	output=>pc_output
																);
programcountermux: mux2to1 generic map(width=>32) port map(
																			A => pc_output,
														
																			B => alu_result_mux_output,
													
																			s =>lord,
													
																			y=>memoryunit_sram_address
																		);
end arch;