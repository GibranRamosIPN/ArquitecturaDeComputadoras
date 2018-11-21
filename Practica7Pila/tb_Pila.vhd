----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	Gómez Cervantes Eliezer Alberto
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------
LIBRARY IEEE;
LIBRARY STD;
USE STD.TEXTIO.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;

ENTITY tb_Pila IS
END tb_Pila;

ARCHITECTURE Practica7 OF tb_Pila IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT Pila
    PORT(
         clr : IN  std_logic;
         clk : IN  std_logic;
         wpc : IN  std_logic;
         up : IN  std_logic;
         dw : IN  std_logic;
         D : IN  std_logic_vector(15 downto 0);
         pc : OUT  std_logic_vector(15 downto 0);
         sp_aux : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal clr : std_logic := '0';
   signal clk : std_logic := '0';
   signal wpc : std_logic := '0';
   signal up : std_logic := '0';
   signal dw : std_logic := '0';
   signal D : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal pc : std_logic_vector(15 downto 0);
   signal sp_aux : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;

BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: Pila PORT MAP (
          clr => clr,
          clk => clk,
          wpc => wpc,
          up => up,
          dw => dw,
          D => D,
          pc => pc,
          sp_aux => sp_aux
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;

   -- Stimulus process
   stim_proc: process

   ----------------------
   file ARCH_SAL : TEXT;  --Archivo de respuesta
   variable LINEA_SAL : line;

   VARIABLE RES_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
   VARIABLE RES_UP : STD_LOGIC;
    VARIABLE RES_DW : STD_LOGIC;
    VARIABLE RES_WPC : STD_LOGIC;
    VARIABLE RES_CLR : STD_LOGIC;
    VARIABLE RES_SP : STD_LOGIC_VECTOR(2 DOWNTO 0);
    VARIABLE RES_Q : STD_LOGIC_VECTOR(15 DOWNTO 0);

    file ARCH_ENT : TEXT;  --Archivo de lectura
    variable LINEA_ENT : line;

    VARIABLE IN_D : STD_LOGIC_VECTOR(15 DOWNTO 0);
    VARIABLE IN_CLR : STD_LOGIC;
    VARIABLE IN_UP : STD_LOGIC;
    VARIABLE IN_DW : STD_LOGIC;
    VARIABLE IN_WPC : STD_LOGIC;

    VARIABLE CADENA : STRING(1 TO 7);
    ---------------------------------
   begin
	file_open(ARCH_ENT, "EntradaPractica7.txt", READ_MODE);
	file_open(ARCH_SAL, "SalidaPractica7.txt", WRITE_MODE);

		CADENA := "D      ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH+2);
		CADENA := "    UP ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH+2);
		CADENA := "    DW ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH+2);
		CADENA := "   WPC ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH+2);
		CADENA := "  CLR  ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH+2);
		CADENA := " SP    ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH+2);
		CADENA := "Q      ";
		write(LINEA_SAL, CADENA, right, CADENA'LENGTH+2);

		writeline(ARCH_SAL,LINEA_SAL);
		---------------------------------------------------

		FOR I IN 0 TO 28 LOOP 				-----Iteraciones dependen del numero de filas en el archivo de inst

			readline(ARCH_ENT,LINEA_ENT);
			Hread(LINEA_ENT, IN_D);
			D <= IN_D;

			read(LINEA_ENT, IN_CLR);
			clr <= IN_CLR;

			read(LINEA_ENT, IN_UP);
			up <= IN_UP;

			read(LINEA_ENT, IN_DW);
			dw <= IN_DW;

			read(LINEA_ENT, IN_WPC);
			wpc <= IN_WPC;

			WAIT FOR 10 NS;

			RES_D := d;
			RES_UP := up;
			RES_DW := dw;
			RES_WPC := wpc;
			RES_CLR := clr;
			RES_SP := sp_aux;
			RES_Q:= pc;

			Hwrite(LINEA_SAL, RES_D, right, CADENA'LENGTH-1);
			write(LINEA_SAL, RES_UP, right, CADENA'LENGTH+3);
			write(LINEA_SAL, RES_DW, right, CADENA'LENGTH+2);
			write(LINEA_SAL, RES_WPC, right, CADENA'LENGTH+2);
			write(LINEA_SAL, RES_CLR, right, CADENA'LENGTH+1);
			write(LINEA_SAL, RES_SP, right, CADENA'LENGTH+2);
			Hwrite(LINEA_SAL, RES_Q, right, CADENA'LENGTH+2);

			writeline(ARCH_SAL,LINEA_SAL);

		end loop;

		file_close(ARCH_ENT);
		file_close(ARCH_SAL);
      wait;
   end process;
END;