--Steven Miller
--11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_controller is
port
(
	ir 			: in std_logic_vector(5 downto 0);
	aluop 		: in std_logic_vector(4 downto 0);
	hi_en 		: out std_logic;
	lo_en 		: out std_logic;
	alu_lo_hi 	: out std_logic_vector(1 downto 0);
	op_select	: out std_logic_vector(4 downto 0)
);
end alu_controller;

architecture arch of alu_controller is

begin


end arch;