--Steven Miller
--Section number: 11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.NUMERIC_STD.UNSIGNED;

entity MIPS_controller_tb is
end MIPS_controller_tb;

architecture TB of MIPS_controller_tb is

    component MIPS_controller

        port 
		  (
			--controller signals
			instruction_type	: in std_logic_vector(5 downto 0);
			ir						: in std_logic_vector(5 downto 0);
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
			clk 					: in std_logic;
			reset					: in std_logic
           );

    end component;
	 
			signal instruction_type		: std_logic_vector(5 downto 0);
			signal pcwritecond			: std_logic;
			signal lord						: std_logic;
			signal memread					: std_logic;
			signal memwrite 				: std_logic;
			signal memtoreg				: std_logic;
			signal irwrite					: std_logic;
			signal pcwrite					: std_logic;
			signal jal						: std_logic;
			signal issigned				: std_logic;
			signal pcsource				: std_logic_vector(1 downto 0);
			signal aluop					: std_logic_vector(5 downto 0);
			signal alusrcb					: std_logic_vector(1 downto 0);
			signal alusrca					: std_logic;
			signal regwrite				: std_logic;
			signal regdst					: std_logic;
			signal clk 						: std_logic:='0'; 
			signal reset 					: std_logic;
			signal ir						: std_logic_vector(5 downto 9);
			
begin

UUT : entity work.MIPS_controller
        port map 
	(
           instruction_type	=> instruction_type,
			  ir						=> ir,
			  pcwritecond 			=>	pcwritecond,
			  lord					=>	lord		,		
			  memread				=>	memread	,	
			  memwrite 				=>	memwrite ,	
			  memtoreg				=>	memtoreg	,
			  irwrite				=>	irwrite	,	
			  pcwrite				=>	pcwrite	,	
			  jal						=>	jal		,	
			  issigned				=>	issigned	,
			  pcsource				=>	pcsource	,
			  aluop					=>	aluop		,
			  alusrcb				=>	alusrcb	,	
			  alusrca				=>	alusrca	,	
			  regwrite				=>	regwrite	,
			  regdst					=>	regdst,
			  clk						=> clk,
			  reset => reset
			  );

clk<= not(clk) after 5 ns;
	
process

begin
instruction_type <= "000000";
wait until rising_edge(clk);

report "simulation finished!";
end process;
end TB;