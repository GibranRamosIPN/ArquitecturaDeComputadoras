library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MICROCODIGO_OPERACION is
		generic(TAM_DIRECCION : integer := 5;
				  TAM_INSTRUCCION : integer := 20);
    Port ( op_code : in  STD_LOGIC_VECTOR (TAM_DIRECCION-1 downto 0);
           S : out  STD_LOGIC_VECTOR (TAM_INSTRUCCION-1 downto 0));
end MICROCODIGO_OPERACION;

architecture MICROCODIGO_OPERACION_ARCH of MICROCODIGO_OPERACION is

	type arreglo is array(0 to (2**TAM_DIRECCION)-1) of std_logic_vector(TAM_INSTRUCCION-1 downto 0);
	constant MO : arreglo := ("00001000000001110001", --VERIFICACION
									  "00000000010000000000", --LI
									  "00000100010000001000", --LWI
									  "00001000000000001100", --SWI
									  "00001010000100110101", --SW
									  "00000100010100110011", --ADDI
									  "00000100010101110011", --SUBI
									  "00000100010100000011", --ANDI
									  "00000100010100010011", --ORI
									  "00000100010100100011", --XORI
									  "00000100010111010011", --NANDI
									  "00000100010111000011", --NORI
									  "00000100010101100011", --XNORI
									  "10010000001100110010", --BEQI
									  "10010000001100110010", --BNEI
									  "10010000001100110010", --BLTI
									  "10010000001100110010", --BLETI
									  "10010000001100110010", --BGTI
									  "10010000001100110010", --BGETI
									  "00010000000000000000", --B
									  "01010000000000000000", --CALL
									  "00100000000000000000", --RET
									  "00000000000000000000", --NOP
									  "00000110010100110001", --LW
						 others => "00000000000000000000");

begin

	process(op_code)
	begin
		S <= MO(conv_integer(op_code));
	end process;

end MICROCODIGO_OPERACION_ARCH;

