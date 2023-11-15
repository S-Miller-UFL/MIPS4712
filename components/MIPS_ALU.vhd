--ALU
--Steven Miller
--Section number: 11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity MIPS_ALU is
port (
	A: in std_logic_vector(31 downto 0);
	B : in std_logic_vector(31 downto 0);
	ir : in std_logic_vector(4 downto 0);
	opcode : in std_logic_vector(4 downto 0);
	result : out std_logic_vector(31 downto 0);
	result_hi : out std_logic_vector(31 downto 0);
	branch_taken: out std_logic
);
end MIPS_ALU;

architecture arch of MIPS_ALU is
signal tempsum : unsigned(31 downto 0) := (others=>'0');
signal hi: unsigned(31 downto 0) := (others=>'0');
signal lo: unsigned(31 downto 0) := (others=>'0');
signal ir_sig : unsigned(4 downto 0) := (others => '0');
begin
process(A,B,opcode,ir)

variable tempmult :std_logic_Vector(63 downto 0) := (others => '0');

begin
tempsum <= (others => '0');
branch_taken <= '0';
result_hi <= (others => '0');
result <= (others=> '0');
case opcode is

--A+B (UNSIGNED)
when "00000" =>
--tempsum <= unsigned(A) + unsigned(B);
result <= std_logic_vector(unsigned(A) + unsigned(B));

--A-B (UNSIGNED)
when "00001" =>
result <= std_logic_vector(unsigned(A) - unsigned(B));

--A*B (SIGNED)
when "00010" =>
tempmult := std_logic_vector(signed(A) * signed(B));
result <= tempmult(31 downto 0);
result_hi <= tempmult(63 downto 32);

--A*B (UNSIGNED)
when "00011" =>
tempmult := std_logic_vector(unsigned(A) * unsigned(B));
result <= tempmult(31 downto 0);
result_hi <= tempmult(63 downto 32);

--A AND B
when "00100" =>
result <= A and B;

--A OR B
when "00101" =>
result <= A or B;

--A XOR B
when "00110" =>
result <= A xor B;

--SHIFT LOGICAL RIGHT A BY IR
when "00111" =>
result <= std_logic_vector(shift_right(unsigned(A),to_integer(unsigned(ir))));

--SHIFT LOGICAL LEFT A BY IR
when "01000" =>
result <= std_logic_vector(shift_left(unsigned(A),to_integer(unsigned(ir))));

--SHIFT ARITHMETIC RIGHT A
when "01001" =>
result <= std_logic_vector(shift_right(signed(A),to_integer(unsigned(ir))));

--A < B? (SIGNED)
when "01010" =>
if(signed(A) < signed(B)) then
	result <= std_logic_vector(to_unsigned(1,32));
else
	result <= (others=>'0');
end if;

--A < B? (UNSIGNED)
when "01011" =>
if(unsigned(A) < unsigned(B)) then
	result <= std_logic_vector(to_unsigned(1,32));
else
	result <= (others=>'0');
end if;

--A = B -> branch
when "01100" =>
if(signed(A) = signed(B)) then
	result <= std_logic_vector(to_unsigned(1,32));
	branch_taken <= '1';
else
	result <= (others=>'0');
	branch_taken <= '0';
end if;

--A != B -> branch
when "01101" =>
if(signed(A) /= signed(B)) then
	result <= std_logic_vector(to_unsigned(1,32));
	branch_taken <= '1';
else
	result <= (others=>'0');
	branch_taken <= '0';
end if;

--A <= 0 -> branch
when "01110" =>
if(signed(A) <= to_signed(0,32)) then
	result <= std_logic_vector(to_unsigned(1,32));
	branch_taken <= '1';
else
	result <= (others=>'0');
	branch_taken <= '0';
end if;

--A > 0 -> branch 
when "01111" =>
if(signed(A)  > to_signed(0,32)) then
	result <= std_logic_vector(to_unsigned(1,32));
	branch_taken <= '1';
else
	result <= (others=>'0');
	branch_taken <= '0';
end if;

--A < 0 -> branch 
when "10000" =>
if(signed(A)  < to_signed(0,32)) then
	result <= std_logic_vector(to_unsigned(1,32));
	branch_taken <= '1';
else
	result <= (others=>'0');
	branch_taken <= '0';
end if;

--A >= 0 -> branch
when "10001" =>
if(signed(A) >= to_signed(0,32)) then
	result <= std_logic_vector(to_unsigned(1,32));
	branch_taken <= '1';
else
	result <= (others=>'0');
	branch_taken <= '0';
end if;

--JUMP REGISTER
when "10010"=>
if(signed(A)  > to_signed(0,32)) then
	result <= std_logic_vector(to_unsigned(1,32));
	branch_taken <= '1';
else
	result <= (others=>'0');
	branch_taken <= '0';
end if;

when others =>
	null;

end case;

end process;

end arch;