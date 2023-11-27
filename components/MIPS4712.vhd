--Steven Miller
--11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS4712 is
port
(	
--memory unit
	inport_en 		: in std_logic;
	input_sw		 	: in std_logic_vector(9 downto 0);
	outputs		 	: out std_logic_vector(31 downto 0);
	--general use
	clk : in std_logic;
	reset: in std_logic
);
end MIPS4712;

architecture arch of MIPS4712 is

component MIPS_controller is
port
(
	--controller signals
	instruction_type	: in std_logic_vector(5 downto 0);
	pcwritecond			: out std_logic;
	lord					: out std_logic;
	memread				: out std_logic;
	memwrite 			: out std_logic;
	memtoreg				: out std_logic;
	irwrite				: out std_logic;
	pcwrite				: out std_logic;
	jal					: out std_logic;
	issigned				: out std_logic;
	pcsource				: out std_logic_vector(1 downto 0);
	aluop					: out std_logic_vector(5 downto 0);
	alusrcb				: out std_logic_vector(1 downto 0);
	alusrca				: out std_logic;
	regwrite				: out std_logic;
	regdst				: out std_logic;
	--general signals
	clk 					: in std_logic;
	reset 				: in std_logic
);
end component;

component datapath is
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
end component;
	signal controller_instruction_type	: std_logic_vector(5 downto 0);
	signal controller_pcwritecond			: std_logic;
	signal controller_lord					: std_logic;
	signal controller_memread				: std_logic;
	signal controller_memwrite 			: std_logic;
	signal controller_memtoreg				: std_logic;
	signal controller_irwrite				: std_logic;
	signal controller_pcwrite				: std_logic;
	signal controller_jal					: std_logic;
	signal controller_issigned				: std_logic;
	signal controller_pcsource				: std_logic_vector(1 downto 0);
	signal controller_aluop					: std_logic_vector(5 downto 0);
	signal controller_alusrcb				: std_logic_vector(1 downto 0);
	signal controller_alusrca				: std_logic;
	signal controller_regwrite				: std_logic;
	signal controller_regdst				: std_logic;
begin

datapathcircuit : datapath port map
(
	inport_enable 		=>inport_en,
	input_switches 	=>input_sw,
	output_leds 		=>outputs,
	memread				=>controller_memread,
	memwrite 			=>controller_memwrite,
	memtoreg				=>controller_memtoreg,
	irwrite				=>controller_irwrite,
	pcwrite				=>controller_pcwrite,
	pcwritecond			=>controller_pcwritecond,
	jal					=>controller_jal,
	issigned				=>controller_issigned,
	pcsource				=>controller_pcsource,
	aluop					=>controller_aluop,
	alusrcb				=>controller_alusrcb,
	alusrca				=>controller_alusrca,
	regwrite				=>controller_regwrite,
	regdst				=>controller_regdst,
	lord					=>controller_lord,
	instructiontype	=> controller_instruction_type,
	clk					=>clk,
	reset					=> reset
	
);

controllercircuit : MIPS_controller port map
(

	instruction_type	=>controller_instruction_type,
	pcwritecond			=>controller_pcwritecond,
	lord					=>controller_lord		,
	memread				=>controller_memread	,
	memwrite 			=>controller_memwrite,
	memtoreg				=>controller_memtoreg,
	irwrite				=>controller_irwrite	,
	pcwrite				=>controller_pcwrite	,
	jal					=>controller_jal		,
	issigned				=>controller_issigned,
	pcsource				=>controller_pcsource,
	aluop					=>controller_aluop		,
	alusrcb				=>controller_alusrcb	,
	alusrca				=>controller_alusrca	,
	regwrite				=>controller_regwrite,
	regdst				=>controller_regdst	,
	clk 					=> clk,
	reset 				=> reset
);
end arch;