library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DECODIFICADOR_INSTRUCCION is
    Port ( op_code : in  STD_LOGIC_VECTOR (4 downto 0);
           tipo_r : out  STD_LOGIC;
           beq : out  STD_LOGIC;
           bneq : out  STD_LOGIC;
           blt : out  STD_LOGIC;
           ble : out  STD_LOGIC;
           bgt : out  STD_LOGIC;
           bget : out  STD_LOGIC);
end DECODIFICADOR_INSTRUCCION;

architecture DECODIFICADOR_INSTRUCCION_ARCH of DECODIFICADOR_INSTRUCCION is

begin

	process(op_code)
	begin
		case op_code is
			when "00000" =>
				tipo_r <= '1';
				beq <= '0';
				bneq <= '0';
				blt <= '0';
				ble <= '0';
				bgt <= '0';
				bget <= '0';
			when "01101" =>
				tipo_r <= '0';
				beq <= '1';
				bneq <= '0';
				blt <= '0';
				ble <= '0';
				bgt <= '0';
				bget <= '0';
			when "01110" =>
				tipo_r <= '0';
				beq <= '0';
				bneq <= '1';
				blt <= '0';
				ble <= '0';
				bgt <= '0';
				bget <= '0';
			when "01111" =>
				tipo_r <= '0';
				beq <= '0';
				bneq <= '0';
				blt <= '1';
				ble <= '0';
				bgt <= '0';
				bget <= '0';
			when "10000" =>
				tipo_r <= '0';
				beq <= '0';
				bneq <= '0';
				blt <= '0';
				ble <= '1';
				bgt <= '0';
				bget <= '0';
			when "10001" =>
				tipo_r <= '0';
				beq <= '0';
				bneq <= '0';
				blt <= '0';
				ble <= '0';
				bgt <= '1';
				bget <= '0';
			when "10010" =>
				tipo_r <= '0';
				beq <= '0';
				bneq <= '0';
				blt <= '0';
				ble <= '0';
				bgt <= '0';
				bget <= '1';
			when others =>
				tipo_r <= '0';
				beq <= '0';
				bneq <= '0';
				blt <= '0';
				ble <= '0';
				bgt <= '0';
				bget <= '0';
		end case;
	end process;

end DECODIFICADOR_INSTRUCCION_ARCH;

