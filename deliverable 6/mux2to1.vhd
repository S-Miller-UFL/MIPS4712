--Steven Miller
--11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux2to1 is
generic (width: positive := 32);
port
(
	A : in std_logic_vector(width-1 downto 0);
	B : in std_logic_vector(width-1 downto 0);
	s : in std_logic;
	y : out std_logic_vector(width-1  downto 0)
);
end mux2to1;

architecture arch of mux2to1 is
begin

process(A,B,s)

begin

case s is
	when '0'=>
			y <= A;
	when '1' =>
			y <= B;
	when others => null;
end case;
			
				  
end process;

end arch;