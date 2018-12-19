library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library WORK;
use WORK.ESCOMIPS_PKG.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ESCOMIPS is
	Port ( clr : in std_logic;
			 clk : in std_logic;
			 --instruccion_out : out std_logic_vector(24 downto 0);
			 pc_pila : out std_logic_vector(7 downto 0);
			 salida_alu : out std_logic_vector(7 downto 0);
			 --salida_mem_datos : out std_logic_vector(15 downto 0);
			 clk_out : out std_logic);
end ESCOMIPS;

architecture ESCOMIPS_ARCH of ESCOMIPS is

	--Señales de un bit
	signal up : std_logic;
	signal dw : std_logic;
	signal wpc : std_logic;
	signal sdmp : std_logic;
	signal sr2 : std_logic;
	signal swd : std_logic;
	signal sext : std_logic;
	signal she : std_logic;
	signal dir : std_logic;
	signal wr : std_logic;
	signal sop1 : std_logic;
	signal sop2 : std_logic;
	signal sdmd : std_logic;
	signal wd : std_logic;
	signal sr : std_logic;
	
	--Señales de 4 bits
	signal mux_read_reg_2 : std_logic_vector(3 downto 0);
	signal banderas : std_logic_vector(3 downto 0);
	signal alu_op : std_logic_vector(3 downto 0);
	
	--Señales de 16 bits
	signal mux_pila : std_logic_vector(15 downto 0);
	signal q_pila : std_logic_vector(15 downto 0);
	signal mux_wr_data : std_logic_vector(15 downto 0);
	signal extensor_signo : std_logic_vector(15 downto 0);
	signal extensor_dir : std_logic_vector(15 downto 0);
	signal mux_extensores : std_logic_vector(15 downto 0);
	signal mux_alu_1 : std_logic_vector(15 downto 0);
	signal mux_alu_2 : std_logic_vector(15 downto 0);
	signal mux_alu_out : std_logic_vector(15 downto 0);
	signal mux_mem_datos : std_logic_vector(15 downto 0);
	signal read_data_1 : std_logic_vector(15 downto 0);
	signal read_data_2 : std_logic_vector(15 downto 0);
	signal alu_out : std_logic_vector(15 downto 0);
	signal mem_datos_out : std_logic_vector(15 downto 0);
	
	--Señales de 20 bits
	signal micro_inst : std_logic_vector(19 downto 0);
	
	--Señales de 25 bits
	signal instruccion : std_logic_vector(24 downto 0);
	
	--Constantes para extensores
	constant ext_ceros : std_logic_vector(3 downto 0) := "0000";
	constant ext_unos  : std_logic_vector(3 downto 0) := "1111";
	
	--Clock del divisor
	signal div_clk : std_logic;

begin

	ArLoUn : ALU Port map
	(
		a => mux_alu_1,
		b => mux_alu_2,
		ainvert => alu_op(3),
		binvert => alu_op(2),
		op => alu_op(1 downto 0),
		res => alu_out,
		Zban => banderas(1),
		Nban => banderas(2),
		Cban => banderas(0),
		OVban => banderas(3)
	);
	
	ArchReg : ARCHIVO_REGISTROS Port map
   (
		write_register => instruccion(19 downto 16),
		read_register_1 => instruccion(15 downto 12),
		read_register_2 => mux_read_reg_2,
		write_data => mux_wr_data,
		read_data_1 => read_data_1,
		read_data_2 => read_data_2,
		shamt => instruccion(7 downto 4),
		wr => wr,
		she => she,
		dir => dir,
		clk => div_clk,
		clr => clr
	);
	
	MemDat : MEMORIA_DATOS Port map
	(
		direccion => mux_alu_out(11 downto 0),
		entrada => read_data_2,
		salida => mem_datos_out,
		wd => wd,
		clk => div_clk
	);
	
	MemProg : MEMORIA_PROGRAMA Port map
	(
		direccion => q_pila,
		instruccion => instruccion
	);
	
	Pil : PILA Port map
	(
		entrada => mux_pila,
		salida => q_pila,
		up => up,
		dw => dw,
		wpc => wpc,
		clr => clr,
		clk => div_clk
	);
	
	UniCont : UNIDAD_CONTROL Port map
   (
		I => instruccion(3 downto 0),
		op_code => instruccion(24 downto 20),
		banderas => banderas,
		clr => clr,
		clk => div_clk,
		S => micro_inst
	);
	
	Div : DIVISOR Port map
   (
		OSC_CLK => clk,
		CLR => clr,
		CLK => div_clk
	);
	
	--Asignación de valores
	sdmp   <= micro_inst(19);
	up     <= micro_inst(18);
	dw     <= micro_inst(17);
	wpc    <= micro_inst(16);
	sr2    <= micro_inst(15);
	swd    <= micro_inst(14);
	sext   <= micro_inst(13);
	she    <= micro_inst(12);
	dir    <= micro_inst(11);
	wr     <= micro_inst(10);
	sop1   <= micro_inst(9);
	sop2   <= micro_inst(8);
	alu_op <= micro_inst(7 downto 4);
	sdmd   <= micro_inst(3);
	wd     <= micro_inst(2);
	sr     <= micro_inst(1);
	
	--Descripción de extensores
	extensor_signo <= ext_ceros & instruccion(11 downto 0) when instruccion(11) = '0' else
							ext_unos  & instruccion(11 downto 0);
	extensor_dir   <= ext_ceros & instruccion(11 downto 0);
	
	
	--Descripción de multiplexores
	mux_read_reg_2 <= instruccion(11 downto 8) when sr2 = '0' else
							instruccion(19 downto 16);
	mux_pila       <= instruccion(15 downto 0) when sdmp = '0' else
							mux_mem_datos;
	mux_wr_data    <= instruccion(15 downto 0) when swd = '0' else
							mux_mem_datos;
	mux_extensores <= extensor_signo when sext = '0' else
							extensor_dir;
	mux_alu_1      <= read_data_1 when sop1 = '0' else
							q_pila;
	mux_alu_2      <= read_data_2 when sop2 = '0' else
							mux_extensores;
	mux_alu_out    <= alu_out when sdmd = '0' else
							instruccion(15 downto 0);
	mux_mem_datos  <= mem_datos_out when sr = '0' else
							alu_out;
	
	--Definición de salidas
	--instruccion_out  <= instruccion;
	pc_pila          <= q_pila(7 downto 0);
	salida_alu       <= alu_out(7 downto 0);
	--salida_mem_datos <= read_data_2;
	clk_out          <= div_clk;

end ESCOMIPS_ARCH;

