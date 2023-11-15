--Steven Miller
--Section number: 11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.NUMERIC_STD.UNSIGNED;

entity alu_tb is
end alu_tb;

architecture TB of alu_tb is
    component MIPS_ALU

        port (
		A: in std_logic_vector(31 downto 0);
		B : in std_logic_vector(31 downto 0);
		ir : in std_logic_vector(4 downto 0);
		opcode : in std_logic_vector(4 downto 0);
		result : out std_logic_vector(31 downto 0);
		result_hi : out std_logic_vector(31 downto 0);
		branch_taken: out std_logic
            );

    end component;

    signal A		: std_logic_vector(31 downto 0);
    signal B 		:  std_logic_vector(31 downto 0);
    signal ir 		:  std_logic_vector(4 downto 0);
    signal opcode 	:  std_logic_vector(4 downto 0);
    signal result 	:  std_logic_vector(31 downto 0);
    signal result_hi 	:  std_logic_vector(31 downto 0);
    signal branch_taken	: std_logic;

begin  -- TB

    UUT : entity work.MIPS_ALU
        port map 
	(
            A   => A,
            B   => B,
            IR      => IR,
            OPCODE   => OPCODE,
            RESULT => RESULT,
	    RESULT_HI => RESULT_HI,
	    BRANCH_TAKEN => BRANCH_TAKEN
	);

    process
    begin
	 
	 
	-- test 10 + 15
	opcode    <= "00000";
	A <= conv_std_logic_vector(10, A'length);
        B <= conv_std_logic_vector(15, B'length);
        wait for 50 ns;
        assert(result = (conv_std_logic_vector(25, result'length))) report "Error : 10+15 =" & integer'image(conv_integer(result)) & " instead of 25" severity warning;
        assert(result_hi = conv_std_logic_vector(0,result_hi'length)) report "Error: incorrect result_hi for addition test. result_hi is equal to " & integer'image(conv_integer(result_hi)) & "instead of 0" severity warning;
	assert(branch_taken = '0') report "Error: incorrect branch_taken for addition test. branch_taken is equal to " & std_logic'image(branch_taken) & "instead of 0" severity warning;
		  
	-- test 25 - 10
		  opcode    <= "00001";
        A <= conv_std_logic_vector(25, A'length);
        B <= conv_std_logic_vector(10, B'length);
        wait for 50 ns;
        assert(result = (conv_std_logic_vector(15, result'length))) report "Error : 25-10 = " & integer'image(conv_integer(result)) & " instead of 15" severity warning;
        assert(result_hi = conv_std_logic_vector(0,result_hi'length)) report "Error: incorrect result_hi for subtraction test. result_hi is equal to " & integer'image(conv_integer(result_hi)) & "instead of 0" severity warning;
	assert(branch_taken = '0') report "Error: incorrect branch_taken for subtraction test. branch_taken is equal to " & std_logic'image(branch_taken) & "instead of 0" severity warning;
		  

		  
	-- test 10* -4
		  opcode    <= "00010";
        A <= conv_std_logic_vector(10, A'length);
        B <= conv_std_logic_vector(-4, B'length);
        wait for 50 ns;
        assert(result = (conv_std_logic_vector(-40, result'length))) report "Error : 10* -4 = " & integer'image(conv_integer(result)) & " instead of -40" severity warning;
        assert(result_hi = conv_std_logic_vector(-1,result_hi'length)) report "Error: incorrect result_hi for signed multiply test. result_hi is equal to " & integer'image(conv_integer(result_hi)) & "instead of 0" severity warning;
	assert(branch_taken = '0') report "Error: incorrect branch_taken for signed multiply test. branch_taken is equal to " & std_logic'image(branch_taken) & "instead of 0" severity warning;

		  

	 -- test 65536 * 131072
	opcode    <= "00011";
        A <= conv_std_logic_vector(65536, A'length);
        B <= conv_std_logic_vector(131072, B'length);
        wait for 50 ns;
        assert(result = (conv_std_logic_vector(0, result'length))) report "Error :  65536 * 131072 = " & integer'image(conv_integer(result)) & " instead of 0" severity warning;
        assert(result_hi = conv_std_logic_vector(2,result_hi'length)) report "Error: incorrect result_hi for unsigned multiply test. result_hi is equal to " & integer'image(conv_integer(result_hi)) & "instead of 2" severity warning;
	assert(branch_taken = '0') report "Error: incorrect branch_taken for unsigned multiply test. branch_taken is equal to " & std_logic'image(branch_taken) & "instead of 0" severity warning;

		
	-- test 0x0000FFFF and 0xFFFF1234
        opcode    <= "00100";
        A <= conv_std_logic_vector(65535, A'length);
        B <= "11111111111111110001001000110100";
        wait for 50 ns;
        assert(result = (conv_std_logic_vector(4660, result'length))) report "Error : 0x0000FFFF and 0xFFFF1234 = " & integer'image(conv_integer(result)) & " instead of 4660" severity warning;
        assert(result_hi = conv_std_logic_vector(0,result_hi'length)) report "Error: incorrect result_hi for and test. result_hi is equal to " & integer'image(conv_integer(result_hi)) & "instead of 0" severity warning;
	assert(branch_taken = '0') report "Error: incorrect branch_taken for and test. branch_taken is equal to " & std_logic'image(branch_taken) & "instead of 0" severity warning;

  
        -- test 0x0000000F shifted 4 times logically right
        opcode    <= "00111";
        A <= conv_std_logic_vector(15, A'length);
        ir <= conv_std_logic_vector(4, ir'length);
        wait for 50 ns;
        assert(result = (conv_std_logic_vector(0, result'length))) report "Error : 0x0000000F >> 4 logically = " & integer'image(conv_integer(result)) & " instead of 0" severity warning;
        assert(result_hi = conv_std_logic_vector(0,result_hi'length)) report "Error: incorrect result_hi for logical shift right test. result_hi is equal to " & integer'image(conv_integer(result_hi)) & "instead of 0" severity warning;
	assert(branch_taken = '0') report "Error: incorrect branch_taken for logical shift right test. branch_taken is equal to " & std_logic'image(branch_taken) & "instead of 0" severity warning;

         -- test 0xF0000008 shifted 1 times arithmetically right
        opcode    <= "01001";
        A <= "11110000000000000000000000001000";
        ir <= conv_std_logic_vector(1, ir'length);
        wait for 50 ns;
        assert(result = "11111000000000000000000000000100") report "Error : 0xF0000008 >> 1 arithmetically = " & integer'image(conv_integer(result)) & " instead of 11111000000000000000000000000100" severity warning;
        assert(result_hi = conv_std_logic_vector(0, result_hi'length)) report "Error: incorrect result_hi for logical shift right test. result_hi is equal to " & integer'image(conv_integer(result_hi)) & "instead of 0" severity warning;
	assert(branch_taken = '0') report "Error: incorrect branch_taken for logical shift right test. branch_taken is equal to " & std_logic'image(branch_taken) & "instead of 0" severity warning;


        --test 0x00000008 shifted 1 times arithmetically right
        opcode    <= "01001";
        A <= conv_std_logic_vector(8, A'length);
        ir <= conv_std_logic_vector(1, ir'length);
        wait for 50 ns;
        assert(result = (conv_std_logic_vector(4, result'length))) report "Error : 0x00000008 >> 1 arithmetically = " & integer'image(conv_integer(result)) & " instead of 4" severity warning;
        assert(result_hi = conv_std_logic_vector(0,result_hi'length)) report "Error: incorrect result_hi for logical shift right test. result_hi is equal to " & integer'image(conv_integer(result_hi)) & "instead of 0" severity warning;
	assert(branch_taken = '0') report "Error: incorrect branch_taken for logical shift right test. branch_taken is equal to " & std_logic'image(branch_taken) & "instead of 0" severity warning;

		  
	-- test 10 < 15
        opcode    <= "01011";
        A <= conv_std_logic_vector(10, A'length);
        B <= conv_std_logic_vector(15, B'length);
        wait for 50 ns;
        assert(result = (conv_std_logic_vector(1, result'length))) report "Error : 10 < 15 = " & integer'image(conv_integer(result)) & " instead of 1" severity warning;
        assert(result_hi = conv_std_logic_vector(0,result_hi'length)) report "Error: incorrect result_hi for set on less than test. result_hi is equal to " & integer'image(conv_integer(result_hi)) & "instead of 0" severity warning;
	assert(branch_taken = '0') report "Error: incorrect branch_taken for set on less than test. branch_taken is equal to " & std_logic'image(branch_taken) & "instead of 0" severity warning;


        -- test 15 < 10
        opcode    <= "01011";
        A <= conv_std_logic_vector(15, A'length);
        B <= conv_std_logic_vector(10, B'length);
        wait for 50 ns;
        assert(result = (conv_std_logic_vector(0, result'length))) report "Error : 15 < 10 = " & integer'image(conv_integer(result)) & " instead of 0" severity warning;
        assert(result_hi = conv_std_logic_vector(0,result_hi'length)) report "Error: incorrect result_hi for set on less than test. result_hi is equal to " & integer'image(conv_integer(result_hi)) & "instead of 0" severity warning;
	assert(branch_taken = '0') report "Error: incorrect branch_taken for set on less than test. branch_taken is equal to " & std_logic'image(branch_taken) & "instead of 0" severity warning;


	-- test 5 <= 0 ->branch
        opcode    <= "01110";
        A <= conv_std_logic_vector(5, A'length);
        wait for 50 ns;
        assert(result = (conv_std_logic_vector(0, result'length))) report "Error : 5<=0->branch = " & integer'image(conv_integer(result)) & " instead of 0" severity warning;
        assert(result_hi = conv_std_logic_vector(0,result_hi'length)) report "Error: incorrect result_hi for branch if less than or equal to zero test. result_hi is equal to " & integer'image(conv_integer(result_hi)) & "instead of 0" severity warning;
	assert(branch_taken = '0') report "Error: incorrect branch_taken for branch if less than or equal to zero test. branch_taken is equal to " & std_logic'image(branch_taken) & "instead of 0" severity warning;


	-- test 5 > 0 ->branch
        opcode    <= "01111";
        A <= conv_std_logic_vector(5, A'length);
        wait for 50 ns;
        assert(result = (conv_std_logic_vector(1, A'length))) report "Error : 5>0->branch = " & integer'image(conv_integer(result)) & " instead of 1" severity warning;
        assert(result_hi = conv_std_logic_vector(0,result_hi'length)) report "Error: incorrect result_hi for branch if greater than or equal to zero test. result_hi is equal to " & integer'image(conv_integer(result_hi)) & "instead of 0" severity warning;
	assert(branch_taken = '1') report "Error: incorrect branch_taken for branch if greater than or equal to zero test. branch_taken is equal to " & std_logic'image(branch_taken) & "instead of 1" severity warning;

	report "simulation finished!";
        wait;

    end process;



end;
