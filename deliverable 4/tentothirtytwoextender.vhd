--steven miller
--Section number: 11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tentothirtytwoextender is
port
(
	input : in std_logic_vector(9 downto 0);
	output : out std_logic_vector(31 downto 0)
);
end tentothirtytwoextender;

architecture arch of tentothirtytwoextender is

signal twentytwozeroes : std_logic_vector(21 downto 0) := (others => '0');

begin

output <= twentytwozeroes & input;


end arch;