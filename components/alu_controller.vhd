--Steven Miller
--11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_controller is
port
(
	ir 			: in std_logic_vector(5 downto 0);
	aluop 		: in std_logic_vector(5 downto 0);
	hi_en 		: out std_logic;
	lo_en 		: out std_logic;
	alu_lo_hi 	: out std_logic_vector(1 downto 0);
	op_select	: out std_logic_vector(4 downto 0)
);
end alu_controller;

architecture arch of alu_controller is

begin

process(aluop,ir)

begin
if(aluop = "000000") then
	--add unsigned
	if(	ir = 	"100001") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "01";
	op_select<=	"00000";
	--sub unsigned
	elsif(ir = 	"100011") then	
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"00001";
	--multiply signed
	elsif(ir = 	"011000") then
	hi_en 	<= '1';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"00010";
	--multiply unsigned
	elsif(ir = 	"110001") then
	hi_en 	<= '1';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"00011";
	--and
	elsif(ir =  "100100") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"00100";
	--or
	elsif(ir = 	"100101") then	
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"00101";
	--xor
	elsif(ir =	"100110") then	
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"00110";
	--shift right logical
	elsif(ir = 	"000010") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"00111";	
	--shift left logical
	elsif(ir = 	"000000") then	
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"01000";	
	--shift right arithmetic
	elsif(ir	=	"000011") then	
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"01001";	
	--set on less than signed
	elsif(ir	=	"101010") then	
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"01010";	
	--set on less than unsigned
	elsif(ir = 	"101011") then	
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"01011";	
	--move from hi
	elsif(ir = 	"010000") then	
	hi_en 	<= '0';	
	lo_en 	<= '0';
	alu_lo_hi<= "10";
	op_select<=	"10011";		
	--move from low
	elsif(ir	=	"010010") then	
	hi_en 	<= '0';	
	lo_en 	<= '0';
	alu_lo_hi<= "01";
	op_select<=	"10011";
	--jump
	elsif(ir	=	"001000") then
	hi_en 	<= '0';	
	lo_en 	<= '0';
	alu_lo_hi<= "00";
	op_select<=	"10010";
	else
	hi_en 	<= '0';	
	lo_en 	<= '0';
	alu_lo_hi<= "00";
	op_select<=	"00000";
	end if;

--add immediate unsigned	
elsif(aluop = "001001") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "01";
	op_select<=	"00000";
--sub immediate unsigned
elsif(aluop = "010000") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "01";
	op_select<=	"00001";
--and immediate
elsif(aluop = "001100") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"00100";
--or immediate
elsif(aluop = "001101") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"00101";
--xor immediate
elsif(aluop = "001110") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"00110";
--set on less than immediate signed
elsif(aluop = "001010") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"01010";	
--set on less than  immediate unsigned
elsif(aluop = "001011") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"01011";
--load word
elsif(aluop = "100011") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"00000";
--store word
elsif(aluop = "101011") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"00000";
--branch on equal
elsif(aluop = "000100") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"01100";
--branch not equal
elsif(aluop = "000101") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"01101";
--branch on less than or equal to zero
elsif(aluop = "000110") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"01110";
--branch on greater than zero
elsif(aluop = "000111") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"01111";
--branch on less than zero
elsif(aluop = "000001") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"10000";
--branch on greater than or equal to zero
elsif(aluop = "") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"10001";
--jump to address
elsif(aluop = "000010") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"10010";
--jump and link
elsif(aluop = "000011") then
	hi_en 	<= '0';	
	lo_en 	<= '1';
	alu_lo_hi<= "00";
	op_select<=	"10010";
else
	hi_en 	<= '0';	
	lo_en 	<= '0';
	alu_lo_hi<= "00";
	op_select<=	"00000";
end if;

end process;


end arch;