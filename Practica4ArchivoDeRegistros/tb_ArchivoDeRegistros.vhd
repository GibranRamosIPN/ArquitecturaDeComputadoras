----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	G�mez Cervantes Eliezer Alberto
-- Teacher Name: Vega Garc�a Nayeli
----------------------------------------------------------------------------------
library ieee;
library STD;
use STD.TEXTIO.ALL;

use ieee.std_logic_TEXTIO.ALL;	--PERMITE USAR STD_LOGIC
use ieee.std_logic_1164.ALL;
use ieee.std_logic_UNSIGNED.ALL;
use ieee.std_logic_ARITH.ALL;

entity tb_ArchivoDeRegistros is
end tb_ArchivoDeRegistros;

ARCHITECTURE Practica4 OF tb_ArchivoDeRegistros is
    component ArchivoDeRegistros
    Port (
         readRegister_1 : in STD_LOGIC_VECTOR (3 downto 0) ;
         readRegister_2 : in STD_LOGIC_VECTOR (3 downto 0) ;
         shamt : in STD_LOGIC_VECTOR (3 downto 0) ;
         writeRegister : in STD_LOGIC_VECTOR (3 downto 0) ;
         writeData : in STD_LOGIC_VECTOR (15 downto 0);
         WR : in STD_LOGIC;
         she : in STD_LOGIC;
         dir : in STD_LOGIC;
         readData_1 : inout  STD_LOGIC_VECTOR (15 downto 0);
         readData_2 : inout  STD_LOGIC_VECTOR (15 downto 0);
         clk : in STD_LOGIC;
         clr : in STD_LOGIC
        );
    end component;

   signal readRegister_1 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
   signal readRegister_2 : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
   signal writeRegister : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
   signal shamt : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
   signal writeData : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
   signal CLK : STD_LOGIC := '0';
   signal she : STD_LOGIC := '0';
   signal dir : STD_LOGIC := '0';
   signal WR : STD_LOGIC := '0';
   signal clr : STD_LOGIC := '0';
   signal readData_1 : STD_LOGIC_VECTOR (15 downto 0);
   signal readData_2 : STD_LOGIC_VECTOR (15 downto 0);

   constant CLK_period : time := 10 ns;

BEGIN

   uut: ArchivoDeRegistros Port Map (
          readRegister_1 => readRegister_1,
          readRegister_2 => readRegister_2,
          writeRegister => writeRegister,
          shamt => shamt,
          writeData => writeData,
          readData_1 => readData_1,
          readData_2 => readData_2,
          CLK => CLK,
          she => she,
          dir => dir,
          WR => WR,
          clr => clr
        );

   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;


   stim_proc: process
	file ARCH_RES : TEXT;
	variable LINEA_RES : line;
	VARIABLE VAR_RDU : STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE VAR_RDD : STD_LOGIC_VECTOR(15 DOWNTO 0);

	file ARCH_VEC : TEXT;
	variable LINEA_VEC : line;


	VARIABLE VAR_RR1    :  STD_LOGIC_VECTOR(3 DOWNTO 0);
	VARIABLE VAR_RR2    :  STD_LOGIC_VECTOR(3 DOWNTO 0);
	VARIABLE VAR_shamt  :  STD_LOGIC_VECTOR(3 DOWNTO 0);
	VARIABLE VAR_WRE    :  STD_LOGIC_VECTOR(3 DOWNTO 0);
	VARIABLE VAR_WD     :  STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE VAR_WR     :  STD_LOGIC;
	VARIABLE VAR_she    :  STD_LOGIC;
	VARIABLE VAR_dir    :  STD_LOGIC;
	VARIABLE VAR_clr    :  STD_LOGIC;


	VARIABLE CADENA : STRING(1 TO 4);
	VARIABLE CADENA_I : STRING(1 TO 6);
	VARIABLE CADENA_W : STRING(1 TO 10);
	VARIABLE CADENA_X : STRING(1 TO 5);

   begin
		file_open(ARCH_RES, "SalidaArchivoDeRegistros.txt", WRITE_MODE);
		file_open(ARCH_VEC, "EntradaArchivoDeRegistros.txt", READ_MODE);

		CADENA_X := "  RR1";
		write(LINEA_RES, CADENA_X, right, CADENA_X'LENGTH+1);
		CADENA := " RR2";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA_I := "shamt ";
		write(LINEA_RES, CADENA_I, right, CADENA_I'LENGTH+1);
		CADENA := "WREG";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := " WD ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := " WR ";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := " she";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := " dir";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := " RD1";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		CADENA := " RD2";
		write(LINEA_RES, CADENA, right, CADENA'LENGTH+1);
		writeline(ARCH_RES,LINEA_RES);
      wait for 100 ns;

		FOR I IN 0 TO 9 LOOP
			readline(ARCH_VEC,LINEA_VEC);

			read(LINEA_VEC, VAR_RR1);
			readRegister_1<=VAR_RR1;

			read(LINEA_VEC, VAR_RR2);
			readRegister_2<=VAR_RR2;

			read(LINEA_VEC, VAR_shamt);
			shamt<=VAR_shamt;

			read(LINEA_VEC, VAR_WRE);
			writeRegister<=VAR_WRE;

			read(LINEA_VEC, VAR_WD);
			writeData<=VAR_WD;

			read(LINEA_VEC, VAR_WR);
			WR<=VAR_WR;

			read(LINEA_VEC, VAR_she);
			she<=VAR_she;

			read(LINEA_VEC, VAR_dir);
			dir<=VAR_dir;

			read(LINEA_VEC, VAR_clr);
			clr<=VAR_clr;

			WAIT UNTIL RISING_EDGE(CLK);
			VAR_RDU := readData_1;
			VAR_RDD := readData_2;

			Hwrite(LINEA_RES, VAR_RR1, 	right, 5);
			Hwrite(LINEA_RES, VAR_RR2, 	right, 5);
			Hwrite (LINEA_RES, VAR_shamt, right, 5);
			Hwrite (LINEA_RES, VAR_WRE, 	right, 5);
			Hwrite (LINEA_RES, VAR_WD, 	right, 5);
			write(LINEA_RES, VAR_WR, 	right, 5);
			write(LINEA_RES, VAR_she, 	right, 5);
			write(LINEA_RES, VAR_dir, 	right, 5);
			Hwrite (LINEA_RES, VAR_RDU, right, 5);
			Hwrite (LINEA_RES, VAR_RDD, right, 5);
			writeline(ARCH_RES,LINEA_RES);

		end loop;

		file_close(ARCH_VEC);
		file_close(ARCH_RES);

      wait for CLK_period*10;

      wait;
   end process;

end;
