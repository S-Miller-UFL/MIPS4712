--steven miller
--Section number: 11710
LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sramandio_sramenablelogic is
port
(

address: in std_logic_vector(31 downto 0);
write_en: in std_logic;
sram_write_en: out std_logic;
outport_en: out std_logic
);
end sramandio_sramenablelogic;


architecture arch of sramandio_sramenablelogic  is

begin
--logic for enable of sram
sram_enable_logic: process(address,write_en)
begin
if(write_en = '0') then
	sram_write_en <= '0';
	outport_en <= '0';
elsif(address = x"0000FFF8") then
	sram_write_en <= '0';
	outport_en <= '0';
elsif(address = x"0000FFFC" and write_en = '1') then
	sram_write_en <= '0';
	outport_en <= '1';
else
	sram_write_en <= '1';
	outport_en <= '0';
end if;
end process;
end arch;