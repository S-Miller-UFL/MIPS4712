--Steven Miller
--11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
entity mipsboard is
port
(	
--memory unit
	inport_en 		: in std_logic;
	input_sw		 	: in std_logic_vector(9 downto 0);
	hex0			 	: out std_logic_vector(6 downto 0);
	hex1			 	: out std_logic_vector(6 downto 0);
	hex2			 	: out std_logic_vector(6 downto 0);
	hex3			 	: out std_logic_vector(6 downto 0);
	hex4			 	: out std_logic_vector(6 downto 0);
	hex5			 	: out std_logic_vector(6 downto 0);
	--general use
	clk : in std_logic;
	reset: in std_logic
);
end mipsboard;

architecture arch of mipsboard is

component MIPS4712 is
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
end component;

component decoder7seg is
port
(
	inputs : in std_logic_vector(3 downto 0);
	outputs_n: out std_logic_vector(6 downto 0)
);
end component;

--general use signals
signal inports_enable : std_logic;
signal mips_reset : std_logic;

--cpu outputs
signal cpu_outputs : std_logic_vector(31 downto 0);

begin
--because the push buttons are active low
inports_enable <= not(inport_en);
mips_reset <= not(reset);

cpu: mips4712 port map(
								inport_en 	=> inports_enable,
								input_sw		=>input_sw,
								outputs		=> cpu_outputs,
								clk 			=> clk,
								reset			=> mips_reset
								);
								
decoder0: decoder7seg port map(

								inputs => cpu_outputs(3 downto 0),
								outputs_n=> hex0
										);
										
decoder1: decoder7seg port map(

								inputs => cpu_outputs(7 downto 4),
								outputs_n=> hex1
										);

decoder2: decoder7seg port map(

								inputs => cpu_outputs(11 downto 8),
								outputs_n=> hex2
										);

decoder3: decoder7seg port map(

								inputs => cpu_outputs(15 downto 12),
								outputs_n=> hex3
										);

decoder4: decoder7seg port map(

								inputs => cpu_outputs(19 downto 16),
								outputs_n=> hex4
										);

decoder5: decoder7seg port map(

								inputs => cpu_outputs(23 downto 20),
								outputs_n=> hex5
										);

end arch;