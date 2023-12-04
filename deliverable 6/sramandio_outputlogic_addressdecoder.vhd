--steven miller
--Section number: 11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sramandio_outputlogic_addressdecoder is

port
(
address: in std_logic_vector(31 downto 0);

mux_select: out std_logic_vector(1 downto 0)
);

end sramandio_outputlogic_addressdecoder;

architecture arch of sramandio_outputlogic_addressdecoder is

begin

output_logic:process(address)

--max address : ff = 1111 1111
--inport0 address: fff8 = 1111 1111 1111 1000
--inport1/outport address: fffc = 1111 1111 1111 1100
begin

if(address = x"0000FFF8") then

--inport 0
mux_select <= "00";

elsif(address = x"0000FFFC") then

--inport 1
mux_select <= "01";

else

--ram
mux_select <= "10";

end if;


end process;

end arch;