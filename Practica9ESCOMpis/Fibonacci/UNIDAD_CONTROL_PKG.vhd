library IEEE;
use IEEE.STD_LOGIC_1164.all;

package UNIDAD_CONTROL_PKG is
	
	component CONTROL is
    Port ( tipo_r : in  STD_LOGIC;
           beq : in  STD_LOGIC;
           bneq : in  STD_LOGIC;
           blt : in  STD_LOGIC;
           ble : in  STD_LOGIC;
           bgt : in  STD_LOGIC;
           bget : in  STD_LOGIC;
           eq : in  STD_LOGIC;
           neq : in  STD_LOGIC;
           lt : in  STD_LOGIC;
           le : in  STD_LOGIC;
           gt : in  STD_LOGIC;
           get : in  STD_LOGIC;
           na : in  STD_LOGIC;
           sdopc : out  STD_LOGIC;
           sm : out  STD_LOGIC);
	end component;
	
	component DECODIFICADOR_INSTRUCCION is
    Port ( op_code : in  STD_LOGIC_VECTOR (4 downto 0);
           tipo_r : out  STD_LOGIC;
           beq : out  STD_LOGIC;
           bneq : out  STD_LOGIC;
           blt : out  STD_LOGIC;
           ble : out  STD_LOGIC;
           bgt : out  STD_LOGIC;
           bget : out  STD_LOGIC);
	end component;
	
	component DETECTOR_CONDICION is
    Port ( banderas_in : in  STD_LOGIC_VECTOR (3 downto 0);
           eq : out  STD_LOGIC;
           neq : out  STD_LOGIC;
           l : out  STD_LOGIC;
           le : out  STD_LOGIC;
           g : out  STD_LOGIC;
           ge : out  STD_LOGIC);
	end component;
	
	component DETECTOR_NIVEL is
    Port ( clr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           na : out  STD_LOGIC);
	end component;
	
	component MICROCODIGO_FUNCION is
		generic(TAM_DIRECCION : integer := 4;
				  TAM_INSTRUCCION : integer := 20);
    Port ( I : in  STD_LOGIC_VECTOR (TAM_DIRECCION-1 downto 0);
           S : out  STD_LOGIC_VECTOR (TAM_INSTRUCCION-1 downto 0));
	end component;
	
	component MICROCODIGO_OPERACION is
		generic(TAM_DIRECCION : integer := 5;
				  TAM_INSTRUCCION : integer := 20);
    Port ( op_code : in  STD_LOGIC_VECTOR (TAM_DIRECCION-1 downto 0);
           S : out  STD_LOGIC_VECTOR (TAM_INSTRUCCION-1 downto 0));
	end component;

	component REGISTRO_ESTADO is
    Port ( banderas_in : in  STD_LOGIC_VECTOR (3 downto 0);
           LF : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           banderas_out : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
end UNIDAD_CONTROL_PKG;
