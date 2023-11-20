--Steven Miller
--11710
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MIPS_controller is
port
(
--controller signals
instruction_type	: in std_logic_vector(5 downto 0);
pcwritecond			: out std_logic;
lord					: out std_logic;
memread				: out std_logic;
memwrite 			: out std_logic;
memtoreg				: out std_logic;
irwrite				: out std_logic;
pcwrite				: out std_logic;
jal					: out std_logic;
issigned				: out std_logic;
pcsource				: out std_logic;
aluop					: out std_logic_vector(5 downto 0);
alusrcb				: out std_logic_vector(1 downto 0);
alusrca				: out std_logic;
regwrite				: out std_logic;
regdst				: out std_logic;
--general signals
clk 					: in std_logic 
);
end MIPS_controller;

architecture arch of MIPS_controller is
type asmstatetype is (
							fetch,
							
							decode,
							
							compute_R, 
							
							store_inregisterfile_R,
							
							compute_I,
							
							store_inregisterfile_I,
							
							compute_address,
							
							memaccess_SW,
							
							memaccess_lw,
							
							store_inregisterfile_lw
							);
signal state: asmstatetype := fetch;
begin
--states
process(clk)

begin
if (clk'event and clk = '1') then

	--so state only updates on rising edge
	
	case state is
	
		when fetch=>
		
			state<=decode;
			
		when decode=>
		
			--if R type
			if (instruction_type = "000000") then
				state<=compute_R;
			--if immediate
			elsif(instruction_type(5 downto 3) = "001") then
				state<=compute_I;
			--if load word
			elsif(instruction_type = "100011") then
				state<=compute_address;
			--if store word
			elsif(instruction_type = "101011") then
				state<=compute_address;
			else
				state <= fetch;
			end if;
			
		when compute_address=>
		
			--load word
			if(instruction_type = "100011") then
				state <= memaccess_SW;
			--store word
			else
				state<= memaccess_LW;
			end if;
			
		--alu op on R type
		when compute_R =>
			state <= store_inregisterfile_R;
			
		--alu op on I type
		when compute_I =>
			state <= store_inregisterfile_I;
			
		--store into ram
		when memaccess_SW=>
			state<=fetch;
			
		--load from ram
		when memaccess_LW=>
			state<=store_inregisterfile_lw;
			
		when store_inregisterfile_lw=>
			state <= fetch;
			
		when store_inregisterfile_I=>
			state <= fetch;
			
		when store_inregisterfile_R=>
			state <= fetch;
	end case;
	
end if;
end process;

--outputs
process(state)
variable default_op : std_logic_vector(5 downto 0) := "000000";
begin
case state is

	when fetch=>
		pcwritecond <= '0';	
		lord			<=	'0';
		memread		<= '1';	
		memwrite 	<=	'0';
		memtoreg		<=	'0';
		irwrite		<=	'1';
		pcwrite		<=	'1';
		jal			<=	'0';
		issigned		<=	'0';
		pcsource		<=	'0';
		aluop			<=	default_op;
		alusrcb		<= "01";
		alusrca		<= '0';
		regwrite		<=	'0';
		regdst		<=	'0';
		
	when decode =>
		pcwritecond <= '0';	
		lord			<=	'0';
		memread		<= '0';	
		memwrite 	<=	'0';
		memtoreg		<=	'0';
		irwrite		<=	'0';
		pcwrite		<=	'0';
		jal			<=	'0';
		issigned		<=	'0';
		pcsource		<=	'0';
		aluop			<=	default_op;
		alusrcb		<= "11";
		alusrca		<= '0';
		regwrite		<=	'0';
		regdst		<=	'0';	
	when compute_R=>
		pcwritecond <= '0';	
		lord			<=	'0';
		memread		<= '0';	
		memwrite 	<=	'0';
		memtoreg		<=	'0';
		irwrite		<=	'0';
		pcwrite		<=	'0';
		jal			<=	'0';
		issigned		<=	'0';
		pcsource		<=	'0';
		aluop			<=	instruction_type;
		alusrcb		<= "00";
		alusrca		<= '1';
		regwrite		<=	'0';
		regdst		<=	'0';	
	when store_inregisterfile_R =>
		pcwritecond <= '0';	
		lord			<=	'0';
		memread		<= '0';	
		memwrite 	<=	'0';
		memtoreg		<=	'0';
		irwrite		<=	'0';
		pcwrite		<=	'0';
		jal			<=	'0';
		issigned		<=	'0';
		pcsource		<=	'0';
		aluop			<=	default_op;
		alusrcb		<= "00";
		alusrca		<= '0';
		regwrite		<=	'1';
		regdst		<=	'1';	
	when compute_I =>
		pcwritecond <= '0';	
		lord			<=	'0';
		memread		<= '0';	
		memwrite 	<=	'0';
		memtoreg		<=	'0';
		irwrite		<=	'0';
		pcwrite		<=	'0';
		jal			<=	'0';
		issigned		<=	'1';
		pcsource		<=	'0';
		aluop			<=	instruction_type;
		alusrcb		<= "10";
		alusrca		<= '1';
		regwrite		<=	'0';
		regdst		<=	'0';	
	when store_inregisterfile_I =>
		pcwritecond <= '0';	
		lord			<=	'0';
		memread		<= '0';	
		memwrite 	<=	'0';
		memtoreg		<=	'0';
		irwrite		<=	'0';
		pcwrite		<=	'0';
		jal			<=	'0';
		issigned		<=	'0';
		pcsource		<=	'0';
		aluop			<=	default_op;
		alusrcb		<= "00";
		alusrca		<= '0';
		regwrite		<=	'1';
		regdst		<=	'0';	
	when compute_address =>
		pcwritecond <= '0';	
		lord			<=	'0';
		memread		<= '0';	
		memwrite 	<=	'0';
		memtoreg		<=	'0';
		irwrite		<=	'0';
		pcwrite		<=	'0';
		jal			<=	'0';
		issigned		<=	'1';
		pcsource		<=	'0';
		aluop			<=	default_op;
		alusrcb		<= "10";
		alusrca		<= '1';
		regwrite		<=	'0';
		regdst		<=	'0';	
	when memaccess_SW =>
		pcwritecond <= '0';	
		lord			<=	'1';
		memread		<= '0';	
		memwrite 	<=	'1';
		memtoreg		<=	'0';
		irwrite		<=	'0';
		pcwrite		<=	'0';
		jal			<=	'0';
		issigned		<=	'0';
		pcsource		<=	'0';
		aluop			<=	default_op;
		alusrcb		<= "00";
		alusrca		<= '0';
		regwrite		<=	'0';
		regdst		<=	'0';	
	when memaccess_LW =>
		pcwritecond <= '0';	
		lord			<=	'1';
		memread		<= '1';	
		memwrite 	<=	'0';
		memtoreg		<=	'0';
		irwrite		<=	'0';
		pcwrite		<=	'0';
		jal			<=	'0';
		issigned		<=	'0';
		pcsource		<=	'0';
		aluop			<=	default_op;
		alusrcb		<= "00";
		alusrca		<= '0';
		regwrite		<=	'0';
		regdst		<=	'0';	
	when store_inregisterfile_lw =>
		pcwritecond <= '0';	
		lord			<=	'1';
		memread		<= '0';	
		memwrite 	<=	'1';
		memtoreg		<=	'1';
		irwrite		<=	'0';
		pcwrite		<=	'0';
		jal			<=	'0';
		issigned		<=	'0';
		pcsource		<=	'0';
		aluop			<=	default_op;
		alusrcb		<= "00";
		alusrca		<= '0';
		regwrite		<=	'1';
		regdst		<=	'0';
	when others=>
		pcwritecond <= '0';	
		lord			<=	'0';
		memread		<= '0';	
		memwrite 	<=	'0';
		memtoreg		<=	'0';
		irwrite		<=	'0';
		pcwrite		<=	'0';
		jal			<=	'0';
		issigned		<=	'0';
		pcsource		<=	'0';
		aluop			<=	default_op;
		alusrcb		<= "00";
		alusrca		<= '0';
		regwrite		<=	'0';
		regdst		<=	'0';	
end case;

end process;
end arch;