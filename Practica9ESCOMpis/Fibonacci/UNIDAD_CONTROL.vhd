library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library WORK;
use WORK.UNIDAD_CONTROL_PKG.ALL;

entity UNIDAD_CONTROL is
    Port ( I : in  STD_LOGIC_VECTOR (3 downto 0);
           op_code : in  STD_LOGIC_VECTOR (4 downto 0);
           banderas : in  STD_LOGIC_VECTOR (3 downto 0);
           clr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (19 downto 0));
end UNIDAD_CONTROL;

architecture UNIDAD_CONTROL_ARCH of UNIDAD_CONTROL is

	signal SF : std_logic_vector(19 downto 0);
	constant ceros : std_logic_vector(4 downto 0) := "00000";
	signal op_code_in : std_logic_vector(4 downto 0);
	signal SO : std_logic_vector(19 downto 0);
	signal sdopc : std_logic;
	signal sm : std_logic;
	signal tipo_r : std_logic;
	signal beq : std_logic;
	signal bneq : std_logic;
	signal blt : std_logic;
	signal ble : std_logic;
	signal bgt : std_logic;
	signal bget : std_logic;
	signal na : std_logic;
	signal eq : std_logic;
	signal neq : std_logic;
	signal lt : std_logic;
	signal le : std_logic;
	signal gt : std_logic;
	signal get : std_logic;
	signal banderas_in : std_logic_vector(3 downto 0);
	signal salida : std_logic_vector(19 downto 0);

begin

	Cont : CONTROL Port map
	( 
		tipo_r => tipo_r,
		beq => beq,
		bneq => bneq,
		blt => blt,
		ble => ble,
		bgt => bgt,
		bget => bget,
		eq => eq,
		neq => neq,
		lt => lt,
		le => le,
		gt => gt,
		get => get,
		na => na,
		sdopc => sdopc,
		sm => sm
	);
	
	Deco_Inst : DECODIFICADOR_INSTRUCCION Port map
	(
		op_code => op_code,
		tipo_r => tipo_r,
		beq => beq, 
		bneq => bneq,
		blt => blt,
		ble => ble,
		bgt => bgt,
		bget => bget
	);
	
	Dect_Cond : DETECTOR_CONDICION Port map
	(
		banderas_in => banderas_in,
		eq => eq,
		neq => neq,
		l => lt,
		le => le,
		g => gt,
		ge => get
	);
	
	Dect_Niv : DETECTOR_NIVEL Port map
	(
		clr => clr,
		clk => clk,
		na => na
	);
	
	Mic_Fun : MICROCODIGO_FUNCION Port map
	(
		I => I,
		S => SF
	);
	
	Mic_Ope : MICROCODIGO_OPERACION Port map
	(
		op_code => op_code_in,
		S => SO
	);
	
	Reg_Est : REGISTRO_ESTADO Port map
	(
		banderas_in => banderas,
		LF => salida(0),
		clr => clr,
		clk => clk,
		banderas_out => banderas_in
	);
	
	op_code_in <= ceros when sdopc = '0' else
					  op_code;
	S <= SF when sm = '0' else
		  SO;
		  
	salida <= SF when sm = '0' else
				 SO;

end UNIDAD_CONTROL_ARCH;

