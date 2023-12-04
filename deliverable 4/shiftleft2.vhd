--steven miller
--Section number: 11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;


entity shiftleft2 is
generic (width: positive := 32);
port
(
	input : in std_logic_vector(width-1 downto 0);
	output : out std_logic_vector(width+1 downto 0)
);
end shiftleft2;

architecture arch of shiftleft2 is

begin

output <= input & "00";


end arch;