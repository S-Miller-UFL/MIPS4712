--Steven Miller
--Section number: 11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use ieee.NUMERIC_STD.UNSIGNED;;;;

entity alu_tb is
end alu_tb;

architecture TB of alu_tb is
    component alu

        port (
            input1   : in  std_logic_vector(WIDTH-1 downto 0);
            input2   : in  std_logic_vector(WIDTH-1 downto 0);
            sel      : in  std_logic_vector(3 downto 0);
            output   : out std_logic_vector(WIDTH-1 downto 0);
            overflow : out std_logic
            );

    end component;

    constant WIDTH  : positive                           := 16;
    signal input1   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal input2   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal sel      : std_logic_vector(3 downto 0)       := (others => '0');
    signal output   : std_logic_vector(WIDTH-1 downto 0);
    signal overflow : std_logic;

begin  -- TB

    UUT : alu_ns
        generic map (WIDTH => WIDTH)
        port map (
            input1   => input1,
            input2   => input2,
            sel      => sel,
            output   => output,
            overflow => overflow);

    process
    begin
	 
	 
	-- test not 10101010
	sel    <= "0000";
        input1 <= conv_std_logic_vector(170, input1'length);
        wait for 50 ns;
        assert(output = not(conv_std_logic_vector(170, input1'length))) report "Error : not 10101010 =" & integer'image(conv_integer(output)) & " instead of 01010101" severity warning;
        assert(overflow = '0') report "Error: incorrect overflow for NOT test. overflow is equal to " & std_logic'image(overflow) & "instead of 0" severity warning;
		  
	-- test 00000000 nor 10101010
		  sel    <= "0001";
        input1 <= conv_std_logic_vector(0, input1'length);
        input2 <= conv_std_logic_vector(170, input2'length);
        wait for 50 ns;
        assert(output = (conv_std_logic_vector(0, input1'length) nor conv_std_logic_vector(170, input2'length))) report "Error : 00000000 nor 10101010 = " & integer'image(conv_integer(output)) & " instead of 0101010101010101" severity warning;
        assert(overflow = '0') report "Error: incorrect overflow for NOR test. overflow is equal to " & std_logic'image(overflow) & "instead of 0" severity warning;
		  
	-- test 11111111 xor 10101010
		  sel    <= "0010";
        input1 <= conv_std_logic_vector(255, input1'length);
        input2 <= conv_std_logic_vector(170, input2'length);
        wait for 50 ns;
        assert(output = (conv_std_logic_vector(255, input1'length) xor conv_std_logic_vector(170, input2'length))) report "Error : 11111111 xor 10101010 = " & integer'image(conv_integer(output)) & " instead of 10101010" severity warning;
        assert(overflow = '0') report "Error: incorrect overflow for XOR test. overflow is equal to " & std_logic'image(overflow) & "instead of 0" severity warning;

	 -- test 00000000  or 10101010
	sel    <= "0011";
        input1 <= conv_std_logic_vector(0, input1'length);
        input2 <= conv_std_logic_vector(170, input2'length);
        wait for 50 ns;
        assert(output = (conv_std_logic_vector(0, input1'length)or conv_std_logic_vector(170, input2'length))) report "Error : 00000000 or 10101010 = " & integer'image(conv_integer(output)) & " instead of " & integer'image(conv_integer("00000000" or "10101010")) severity warning;
        assert(overflow = '0') report "Error: incorrect overflow for OR test. overflow is equal to " & std_logic'image(overflow) & "instead of 0" severity warning;
		
	-- test 00000000  and 10101010
        sel    <= "0100";
        input1 <= conv_std_logic_vector(0, input1'length);
        input2 <= conv_std_logic_vector(170, input2'length);
        wait for 50 ns;
        assert(output = (conv_std_logic_vector(0, input1'length) and conv_std_logic_vector(170, input2'length))) report "Error : 00000000 and 10101010 = " & integer'image(conv_integer(output)) & " instead of 00000000" severity warning;
        assert(overflow = '0')  report "Error: incorrect overflow for AND test. overflow is equal to " & std_logic'image(overflow) & "instead of 0" severity warning;
  
        -- test 2+6 
        sel    <= "0101";
        input1 <= conv_std_logic_vector(2, input1'length);
        input2 <= conv_std_logic_vector(6, input2'length);
        wait for 50 ns;
        assert(output = conv_std_logic_vector(8, output'length)) report "Error : 2+6 = " & integer'image(conv_integer(output)) & " instead of 8" severity warning;
        assert(overflow = '0')  report "Error: incorrect overflow for addition with no overflow test. overflow is equal to " & std_logic'image(overflow) & "instead of 0" severity warning;

        -- test 65535+1 (overflow test)
        sel    <= "0101";
        input1 <= conv_std_logic_vector(65535, input1'length);
        input2 <= conv_std_logic_vector(1, input2'length);
        wait for 50 ns;
        assert(output = conv_std_logic_vector(0, output'length)) report "Error : 250+50 = " & integer'image(conv_integer(output)) & " instead of 65536" severity warning;
        assert(overflow = '1') report "Error: incorrect overflow for addition with overflow test. overflow is equal to " & std_logic'image(overflow) & "instead of 1" severity warning;

        -- test 250-50
        sel    <= "0110";
        input1 <= conv_std_logic_vector(250, input1'length);
        input2 <= conv_std_logic_vector(50, input2'length);
        wait for 50 ns;
        assert(output = conv_std_logic_vector(200, output'length)) report "Error : 250-50 = " & integer'image(conv_integer(output)) & " instead of 200" severity warning;
        assert(overflow = '0') report "Error: incorrect overflow for subtraction test. overflow is equal to " & std_logic'image(overflow) & "instead of 0" severity warning;
		  
	-- test 5*6
        sel    <= "0111";
        input1 <= conv_std_logic_vector(5, input1'length);
        input2 <= conv_std_logic_vector(6, input2'length);
        wait for 50 ns;
        assert(output = conv_std_logic_vector(30, output'length)) report "Error : 5*6 = " & integer'image(conv_integer(output)) & " instead of 30" severity warning;
        assert(overflow = '0') report "Error: incorrect overflow for multiplication without overflow test. overflow is equal to " & std_logic'image(overflow) & "instead of 0" severity warning;

        -- test 39936*2 (overflow)
        sel    <= "0111";
        input1 <= conv_std_logic_vector(39936, input1'length);
        input2 <= conv_std_logic_vector(2, input2'length);
        wait for 50 ns;
        assert(output = conv_std_logic_vector(14336, output'length)) report "Error : 39936*2 = " & integer'image(conv_integer(output)) & " instead of 14336" severity warning;
        assert(overflow = '1') report "Error: incorrect overflow for mutliplication with overflow test. overflow is equal to " & std_logic'image(overflow) & "instead of 1" severity warning;

	-- test 00001111 << 1
        sel    <= "1000";
        input1 <= conv_std_logic_vector(15, input1'length);
        wait for 50 ns;
        assert(output = conv_std_logic_vector(30, output'length)) report "Error : 00001111 << 1 = " & integer'image(conv_integer(output)) & " instead of 00011110" severity warning;
        assert(overflow = '0') report "Error: incorrect overflow for left shift test. overflow is equal to " & std_logic'image(overflow) & "instead of 0" severity warning;

	-- test 00001111 >> 1
        sel    <= "1001";
        input1 <= conv_std_logic_vector(15, input1'length);
        wait for 50 ns;
        assert(output = conv_std_logic_vector(7, output'length)) report "Error : 00001111 >> 1 = " & integer'image(conv_integer(output)) & " instead of 00000111" severity warning;
        assert(overflow = '1') report "Error: incorrect overflow for right shift test. overflow is equal to " & std_logic'image(overflow) & "instead of 1" severity warning;

	-- test 11110000 rotate right
        sel    <= "1010";
        input1 <= conv_std_logic_vector(240, input1'length);
        wait for 50 ns;
        assert(output = conv_std_logic_vector(61440,output'length)) report "Error : 11110000 rotated right = " & integer'image(conv_integer(output)) & " instead of 11110000" severity warning;
        assert(overflow = '0') report "Error: incorrect overflow for rotation test. overflow is equal to " & std_logic'image(overflow) & "instead of 0" severity warning;

	-- test 11110000 swap
        sel    <= "1011";
        input1 <= conv_std_logic_vector(240, input1'length);
        wait for 50 ns;
        assert(output =  conv_std_logic_vector(61440,output'length) ) report "Error : 11110000 swapped = " & integer'image(conv_integer(output)) & " instead of 11110000" severity warning;
        assert(overflow = '0') report "Error: incorrect overflow for swap test. overflow is equal to " & std_logic'image(overflow) & "instead of 0" severity warning;

	--add test for odd width later

	report "simulation finished!";
        wait;

    end process;



end;
