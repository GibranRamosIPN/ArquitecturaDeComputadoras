library IEEE;
use IEEE.STD_LOGIC_1164.all;

package ESCOMIPS_PKG is

	component ALU is
		generic (N: integer := 16);
    Port ( a : in  STD_LOGIC_VECTOR ((N-1) downto 0);
           b : in  STD_LOGIC_VECTOR ((N-1) downto 0);
           ainvert : in  STD_LOGIC;
           binvert : in  STD_LOGIC;
           op : in  STD_LOGIC_VECTOR (1 downto 0);
           res : inout  STD_LOGIC_VECTOR ((N-1) downto 0);
			  Zban : out  STD_LOGIC;
			  Nban : out  STD_LOGIC;
			  Cban : out  STD_LOGIC;
			  OVban : out  STD_LOGIC);
	end component;
	
	component ARCHIVO_REGISTROS is
		generic (TAM_REGISTRO : integer := 16;
					TAM_DIRECCION : integer := 4);
    Port ( write_register : in  STD_LOGIC_VECTOR (TAM_DIRECCION - 1 downto 0);
			  read_register_1 : in  STD_LOGIC_VECTOR (TAM_DIRECCION - 1 downto 0);
			  read_register_2 : in  STD_LOGIC_VECTOR (TAM_DIRECCION - 1 downto 0);
			  write_data : in  STD_LOGIC_VECTOR (TAM_REGISTRO - 1 downto 0);
           read_data_1 : out  STD_LOGIC_VECTOR (TAM_REGISTRO - 1 downto 0);
			  read_data_2 : out  STD_LOGIC_VECTOR (TAM_REGISTRO - 1 downto 0);
			  shamt : in STD_LOGIC_VECTOR (TAM_DIRECCION - 1 downto 0);
           wr : in  STD_LOGIC;
			  she : in  STD_LOGIC;
			  dir : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clr : in  STD_LOGIC);
	end component;
	
	component MEMORIA_DATOS is
		generic(TAM_DIRECCION : integer := 12;
				  TAM_DATO : integer := 16);
    Port ( direccion : in  STD_LOGIC_VECTOR (TAM_DIRECCION-1 downto 0);
           entrada : in  STD_LOGIC_VECTOR (TAM_DATO-1 downto 0);
           salida : out  STD_LOGIC_VECTOR (TAM_DATO-1 downto 0);
           wd : in  STD_LOGIC;
           clk : in  STD_LOGIC);
	end component;
	
	component MEMORIA_PROGRAMA is
		generic(TAM_DIRECCION : integer := 16;
				  TAM_INSTRUCCION : integer := 25);
    Port ( direccion : in  STD_LOGIC_VECTOR (TAM_DIRECCION-1 downto 0);
           instruccion : out  STD_LOGIC_VECTOR (TAM_INSTRUCCION-1 downto 0));
	end component;
	
	component PILA is
		generic(TAM_DIRECCION : integer := 16;
				  TAM_PILA : integer := 8);
    Port ( entrada : in  STD_LOGIC_VECTOR (TAM_DIRECCION-1 downto 0);
           salida : out  STD_LOGIC_VECTOR (TAM_DIRECCION-1 downto 0);
           up : in  STD_LOGIC;
           dw : in  STD_LOGIC;
           wpc : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           clk : in  STD_LOGIC);
	end component;
	
	component UNIDAD_CONTROL is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           op_code : in  STD_LOGIC_VECTOR (4 downto 0);
           banderas : in  STD_LOGIC_VECTOR (3 downto 0);
           clr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (19 downto 0));
	end component;
	
	component DIVISOR is
    Port ( 
           OSC_CLK, CLR : in  STD_LOGIC;
           CLK : inout  STD_LOGIC);
	end component;
	
	--Códigos de operación
	constant OP_CODE_TIPOR : std_logic_vector(4 downto 0) := "00000";
	constant OP_CODE_LI    : std_logic_vector(4 downto 0) := "00001";
	constant OP_CODE_LWI   : std_logic_vector(4 downto 0) := "00010";
	constant OP_CODE_SWI   : std_logic_vector(4 downto 0) := "00011";
	constant OP_CODE_SW    : std_logic_vector(4 downto 0) := "00100";
	constant OP_CODE_ADDI  : std_logic_vector(4 downto 0) := "00101";
	constant OP_CODE_SUBI  : std_logic_vector(4 downto 0) := "00110";
	constant OP_CODE_ANDI  : std_logic_vector(4 downto 0) := "00111";
	constant OP_CODE_ORI   : std_logic_vector(4 downto 0) := "01000";
	constant OP_CODE_XORI  : std_logic_vector(4 downto 0) := "01001";
	constant OP_CODE_NANDI : std_logic_vector(4 downto 0) := "01010";
	constant OP_CODE_NORI  : std_logic_vector(4 downto 0) := "01011";
	constant OP_CODE_XNORI : std_logic_vector(4 downto 0) := "01100";
	constant OP_CODE_BEQI  : std_logic_vector(4 downto 0) := "01101";
	constant OP_CODE_BNEI  : std_logic_vector(4 downto 0) := "01110";
	constant OP_CODE_BLTI  : std_logic_vector(4 downto 0) := "01111";
	constant OP_CODE_BLETI : std_logic_vector(4 downto 0) := "10000";
	constant OP_CODE_BGTI  : std_logic_vector(4 downto 0) := "10001";
	constant OP_CODE_BGETI : std_logic_vector(4 downto 0) := "10010";
	constant OP_CODE_B     : std_logic_vector(4 downto 0) := "10011";
	constant OP_CODE_CALL  : std_logic_vector(4 downto 0) := "10100";
	constant OP_CODE_RET   : std_logic_vector(4 downto 0) := "10101";
	constant OP_CODE_NOP   : std_logic_vector(4 downto 0) := "10110";
	constant OP_CODE_LW    : std_logic_vector(4 downto 0) := "10111";
	
	--Códigos de función
	constant FUN_CODE_ADD  : std_logic_vector(3 downto 0) := "0000";
	constant FUN_CODE_SUB  : std_logic_vector(3 downto 0) := "0001";
	constant FUN_CODE_AND  : std_logic_vector(3 downto 0) := "0010";
	constant FUN_CODE_OR   : std_logic_vector(3 downto 0) := "0011";
	constant FUN_CODE_XOR  : std_logic_vector(3 downto 0) := "0100";
	constant FUN_CODE_NAND : std_logic_vector(3 downto 0) := "0101";
	constant FUN_CODE_NOR  : std_logic_vector(3 downto 0) := "0110";
	constant FUN_CODE_XNOR : std_logic_vector(3 downto 0) := "0111";
	constant FUN_CODE_NOT  : std_logic_vector(3 downto 0) := "1000";
	constant FUN_CODE_SLL  : std_logic_vector(3 downto 0) := "1001";
	constant FUN_CODE_SRL  : std_logic_vector(3 downto 0) := "1010";
	
	--Códigos de registros
	constant R0  : std_logic_vector(3 downto 0) := "0000";
	constant R1  : std_logic_vector(3 downto 0) := "0001";
	constant R2  : std_logic_vector(3 downto 0) := "0010";
	constant R3  : std_logic_vector(3 downto 0) := "0011";
	constant R4  : std_logic_vector(3 downto 0) := "0100";
	constant R5  : std_logic_vector(3 downto 0) := "0101";
	constant R6  : std_logic_vector(3 downto 0) := "0110";
	constant R7  : std_logic_vector(3 downto 0) := "0111";
	constant R8  : std_logic_vector(3 downto 0) := "1000";
	constant R9  : std_logic_vector(3 downto 0) := "1001";
	constant R10 : std_logic_vector(3 downto 0) := "1010";
	constant R11 : std_logic_vector(3 downto 0) := "1011";
	constant R12 : std_logic_vector(3 downto 0) := "1100";
	constant R13 : std_logic_vector(3 downto 0) := "1101";
	constant R14 : std_logic_vector(3 downto 0) := "1110";
	constant R15 : std_logic_vector(3 downto 0) := "1111";
	
	--Código sin usar
	constant SIN_USAR : std_logic_vector(3 downto 0) := "0000";

end ESCOMIPS_PKG;