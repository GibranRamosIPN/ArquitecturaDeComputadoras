----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	G�mez Cervantes Eliezer Alberto
-- Teacher Name: Vega Garc��a Nayeli
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ArchivoDeRegistros is
	 Generic (n: integer := 16);
    Port ( WR, she, dir, clk, clr : in STD_LOGIC;
           readRegister_1, readRegister_2, shamt, writeRegister : in STD_LOGIC_VECTOR (3 downto 0);
           writeData : in STD_LOGIC_VECTOR (n-1 downto 0);
           readData_1, readData_2 : inout  STD_LOGIC_VECTOR (n-1 downto 0));
end ArchivoDeRegistros;

architecture Practica4 of ArchivoDeRegistros is
type matrix is array (0 to n-1) OF STD_LOGIC_VECTOR (n-1 downto 0);
signal R_Matrix: matrix;
signal L_Vector : STD_LOGIC_VECTOR (n-1 downto 0);
signal newWriteData : STD_LOGIC_VECTOR (n-1 downto 0);
signal BSWriteData : STD_LOGIC_VECTOR (n-1 downto 0);

component Registro
	Port (
		clk : in STD_LOGIC;
		clr : in STD_LOGIC;
		L: in STD_LOGIC;
		D: in STD_LOGIC_VECTOR (n-1 downto 0);
		Q: inout STD_LOGIC_VECTOR (n-1 downto 0)
	);
end component;

COMPONENT Multiplexor
	PORT(
		data_0 : in STD_LOGIC_VECTOR (n-1 downto 0);
		data_1 : in STD_LOGIC_VECTOR (n-1 downto 0);
		data_2 : in STD_LOGIC_VECTOR (n-1 downto 0);
		data_3 : in STD_LOGIC_VECTOR (n-1 downto 0);
		data_4 : in STD_LOGIC_VECTOR (n-1 downto 0);
		data_5 : in STD_LOGIC_VECTOR (n-1 downto 0);
		data_6 : in STD_LOGIC_VECTOR (n-1 downto 0);
		data_7 : in STD_LOGIC_VECTOR (n-1 downto 0);
		data_8 : in STD_LOGIC_VECTOR (n-1 downto 0);
		data_9 : in STD_LOGIC_VECTOR (n-1 downto 0);
		data_10 : in STD_LOGIC_VECTOR (n-1 downto 0);
		data_11 : in STD_LOGIC_VECTOR (n-1 downto 0);
		data_12 : in STD_LOGIC_VECTOR (n-1 downto 0);
		data_13 : in STD_LOGIC_VECTOR (n-1 downto 0);
		data_14 : in STD_LOGIC_VECTOR (n-1 downto 0);
		data_15 : in STD_LOGIC_VECTOR (n-1 downto 0);
		readReg : in STD_LOGIC_VECTOR (3 downto 0);
		o_data : inout STD_LOGIC_VECTOR (n-1 downto 0)
	);
END COMPONENT;

component Demultiplexor
	Port (
		in_D : in STD_LOGIC;
		writeRegister : in STD_LOGIC_VECTOR (3 downto 0);
		out_D : inout STD_LOGIC_VECTOR (n-1 downto 0)
	);
end component;

component Multiplexor2a1
	Port (
		in_uno : in STD_LOGIC_VECTOR (n-1 downto 0);
		in_dos : in STD_LOGIC_VECTOR (n-1 downto 0);
		she : in STD_LOGIC;
		outm : inout STD_LOGIC_VECTOR (n-1 downto 0)
	);
end component;

component BarrelShifter
	Port (
		shamt :  in STD_LOGIC_VECTOR (3 downto 0);
		DIR :  in STD_LOGIC;
		data_in :  inout  STD_LOGIC_VECTOR    (n-1 downto 0);
		data_out :  inout STD_LOGIC_VECTOR (n-1 downto 0)
	);
end component;

begin
	Ciclo: for i in 0 to n-1 generate
		reg: Registro Port map (
		clk => clk,
		clr => clr,
		L => L_Vector(i),
		D => newWriteData,
		Q => R_Matrix(i)
	);
	end generate Ciclo;

	mux1: Multiplexor PORT MAP(
	data_0 => R_Matrix(0),
	data_1 => R_Matrix(1),
	data_2 => R_Matrix(2),
	data_3 => R_Matrix(3),
	data_4 => R_Matrix(4),
	data_5 => R_Matrix(5),
	data_6 => R_Matrix(6),
	data_7 => R_Matrix(7),
	data_8 => R_Matrix(8),
	data_9 => R_Matrix(9),
	data_10 => R_Matrix(10),
	data_11 => R_Matrix(11),
	data_12 => R_Matrix(12),
	data_13 => R_Matrix(13),
	data_14 => R_Matrix(14),
	data_15 => R_Matrix(15),
	readReg => readRegister_1,
	o_data => readData_1
	);

	mux2: Multiplexor PORT MAP(
	data_0 => R_Matrix(0),
	data_1 => R_Matrix(1),
	data_2 => R_Matrix(2),
	data_3 => R_Matrix(3),
	data_4 => R_Matrix(4),
	data_5 => R_Matrix(5),
	data_6 => R_Matrix(6),
	data_7 => R_Matrix(7),
	data_8 => R_Matrix(8),
	data_9 => R_Matrix(9),
	data_10 => R_Matrix(10),
	data_11 => R_Matrix(11),
	data_12 => R_Matrix(12),
	data_13 => R_Matrix(13),
	data_14 => R_Matrix(14),
	data_15 => R_Matrix(15),
	readReg => readRegister_2,
	o_data => readData_2
	);

	demux: Demultiplexor Port map (
		in_D => WR,
		writeRegister => writeRegister,
		out_D => L_Vector
	);

	mux2a1: Multiplexor2a1 Port map (
		in_uno => BSWriteData,
		in_dos => writeData,
		she => she,
		outm => newWriteData
	);

	barrelS: BarrelShifter Port map (
		shamt => shamt,
		DIR => DIR,
		data_in => readData_2,
		data_out => BSWriteData
	);
end Practica4;
