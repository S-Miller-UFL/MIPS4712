--Steven Miller
--11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controllerandsram is

port
(
	input: in std_logic_vector(31 downto 0);
	output: out std_logic_vector(31 downto 0);
	switchten: in std_logic;
	clk : in std_logic
);
end controllerandsram;

architecture arch of controllerandsram is

component mips_controller is
port
(
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
	pcsource				: out std_logic;
	aluop					: out std_logic_vector(5 downto 0);
	alusrcb				: out std_logic_vector(1 downto 0);
	alusrca				: out std_logic;
	regwrite				: out std_logic;
	regdst				: out std_logic;
	--general signals
	clk 					: in std_logic 
);
end component;

component sramandio is

port
(
	sram_data 		: in std_logic_vector(31 downto 0);
	address			: in std_logic_vector(31 downto 0);
	read_en			: in std_logic;
	write_en			: in std_logic;
	clk				: in std_logic;
	reset				: in std_logic := '0';
	inport_en		: in std_logic := '1';
	inport_input	: in std_logic_vector(31 downto 0):= (others=>'0');
	switchten 		: in std_logic := '0';
	output			: out std_logic_vector(31 downto 0);
	outport_output : out std_logic_vector(31 downto 0) := (others => '0')
);
end component;

signal pctosram: std_logic_Vector(31 downto 0);
signal controllermemwrite : std_logic; 
signal controllermemread : std_logic;
signal sramoutput : std_logic_vector(31 downto 0);
begin

output <= sramoutput;
sram: sramandio port map(
							sram_data=>input, 		
							address=>pctosram,			
							read_en=>controllermemread,			
							write_en	=>controllermemwrite,		
							clk=>clk,									
							output => sramoutput

								);
								

end arch;