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

entity MICROCODIGO_FUNCION is
		generic(TAM_DIRECCION : integer := 4;
				  TAM_INSTRUCCION : integer := 20);
    Port ( I : in  STD_LOGIC_VECTOR (TAM_DIRECCION-1 downto 0);
           S : out  STD_LOGIC_VECTOR (TAM_INSTRUCCION-1 downto 0));
end MICROCODIGO_FUNCION;

architecture MICROCODIGO_FUNCION_ARCH of MICROCODIGO_FUNCION is

	type arreglo is array(0 to (2**TAM_DIRECCION)-1) of std_logic_vector(TAM_INSTRUCCION-1 downto 0);
	constant MF : arreglo := ("00000100010000110011", --ADD
									  "00000100010001110011", --SUB
									  "00000100010000000011", --AND
									  "00000100010000010011", --OR
									  "00000100010000100011", --XOR
									  "00000100010011010011", --NAND
									  "00000100010011000011", --NOR
									  "00000100010001100011", --XNOR
									  "00000100010011010011", --NOT
									  "00000001110000000001", --SLL
									  "00000001010000000001", --SRL
						 others => "00000000000000000000");

begin

	process(I)
	begin
		S <= MF(conv_integer(I));
	end process;

end MICROCODIGO_FUNCION_ARCH;

