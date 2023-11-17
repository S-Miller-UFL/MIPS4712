--Steven Miller
--11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux4to1 is
port
(
	d : in std_logic_vector(127 downto 0);
	s : in std_logic_vector(1 downto 0);
	y : out std_logic_vector(31 downto 0)
);
end mux4to1;

architecture arch of mux4to1 is
begin
process(d,s)

begin

case s is
	when "00"=>
			y <= d(127 downto 96);
	when "01" =>
			y <= d(95 downto 64);
	when "10" =>
			y <= d(63 downto 32);
	when "11" =>
			y <= d(31 downto 0);
	when others => null;
end case;
			
				  
end process;

end arch;