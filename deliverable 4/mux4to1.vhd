--Steven Miller
--11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux4to1 is
generic (width: positive := 32);
port
(
	A : in std_logic_vector(width-1 downto 0);
	B : in std_logic_vector(width-1  downto 0);
	C : in std_logic_vector(width-1  downto 0);
	D : in std_logic_vector(width-1  downto 0);
	s : in std_logic_vector(1 downto 0);
	y : out std_logic_vector(width-1  downto 0)
);
end mux4to1;

architecture arch of mux4to1 is
begin
process(A,B,C,D,s)

begin

case s is
	when "00"=>
			y <= A;
	when "01" =>
			y <= B;
	when "10" =>
			y <= C;
	when "11" =>
			y <= D;
	when others => null;
end case;
			
				  
end process;

end arch;