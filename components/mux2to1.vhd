--Steven Miller
--11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux2to1 is
port
(
	d : in std_logic_vector(63 downto 0);
	s : in std_logic;
	y : out std_logic_vector(31 downto 0)
);
end mux2to1;

architecture arch of mux2to1 is
begin

process(d,s)

begin

case s is
	when '0'=>
			y <= d(63 downto 32);
	when '1' =>
			y <= d(31 downto 0);
	when others => null;
end case;
			
				  
end process;

end arch;