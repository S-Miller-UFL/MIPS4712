--steven miller
--Section number: 11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sramandio_outputlogic is

port
(

inport0: in std_logic_vector(31 downto 0);
inport1: in std_logic_vector(31 downto 0);
ram	 : in std_logic_vector(31 downto 0);
address: in std_logic_vector(31 downto 0);
enable : in std_logic;
clk 	 : in std_logic;
output: out std_logic_vector(31 downto 0)

);

end sramandio_outputlogic; 

architecture arch of sramandio_outputlogic is

component sramandio_outputlogic_addressdecoder is
port
(
address: in std_logic_vector(31 downto 0);

mux_select: out std_logic_vector(1 downto 0)
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
--address decoder
signal decoder_out :	std_logic_vector(1 downto 0);
signal mux_out		 : std_logic_vector(31 downto 0);

begin

sramandio_outputlogic_decoderlogic:
sramandio_outputlogic_addressdecoder port map(
															address => address,

															mux_select=> decoder_out
															);


sramandio_outputlogic_mux:	mux4to1 generic map(width=>32) port map(
												A=>inport0,
												B=>inport1,
												C=>ram,
												s=>decoder_out,
												y=>mux_out
												);
sramandio_outputlogic_dff: thirtytwobitregister port map(input=> mux_out, output => output, clk=>clk, enable=>enable);																					
																						
end arch;