ENTITY mips IS
	PORT(	reset										:	IN	STD_LOGIC;
			slow_clock, fast_clock				:	IN	STD_LOGIC;
			PC_out, Instruction_out				:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			Read_reg1_out, Read_reg2_out		:	OUT STD_LOGIC_VECTOR(4  DOWNTO 0);
			Write_reg_out							:	OUT STD_LOGIC_VECTOR(4  DOWNTO 0);
			Read_data1_out, Read_data2_out	:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
			Write_data_out							:	OUT STD_LOGIC_VECTOR(31 DOWNTO 0));
END mips;

ARCHITECTURE arc OF signExtImmediate IS
	SIGNAL leading	: STD_LOGIC_VECTOR ( 15 DOWNTO 0 );
	
	COMPONENT mipsControl			PORT (	opcode					:	IN	STD_LOGIC_VECTOR(5 DOWNTO 0);
														funct						:	IN STD_LOGIC_VECTOR(5 DOWNTO 0);
														RegDst, ALUSrc			:	OUT STD_LOGIC;
														Jump, jal, Jr			:	OUT STD_LOGIC;
														Beq, Bne					:	OUT STD_LOGIC;
														MemRead, MemWrite		:	OUT STD_LOGIC;
														RegWrite, MemtoReg	:	OUT STD_LOGIC;
														ALUControl				:  OUT STD_LOGIC_VECTOR(3 DOWNTO 0)	);
														END COMPONENT;
													
	COMPONENT mips_register_file	PORT (	clock, reset, RegWrite	: IN	STD_LOGIC;
														read_reg1, read_reg2		: IN	STD_LOGIC_VECTOR( 4 DOWNTO 0);
														write_reg					: IN	STD_LOGIC_VECTOR( 4 DOWNTO 0);
														write_data					: IN	STD_LOGIC_VECTOR(31 DOWNTO 0);
														read_data1, read_data2  : OUT	STD_LOGIC_VECTOR(31 DOWNTO 0) );
														END COMPONENT;
 
BEGIN
	PROCESS ( input, leading )
		BEGIN
	END PROCESS;
END arc;
		