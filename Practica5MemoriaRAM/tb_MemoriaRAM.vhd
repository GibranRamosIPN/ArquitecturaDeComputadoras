----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	Gómez Cervantes Eliezer Alberto
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------

LIBRARY ieee;
LIBRARY STD;
USE STD.TEXTIO.ALL;

USE ieee.std_logic_TEXTIO.ALL;	--PERMITE USAR STD_LOGIC
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_UNSIGNED.ALL;
USE ieee.std_logic_ARITH.ALL;


ENTITY tb_MemoriaRAM IS
END tb_MemoriaRAM;

ARCHITECTURE Practica5 OF tb_MemoriaRAM IS
    COMPONENT MemoriaRAM
    PORT(
         dir : IN  std_logic_vector(15 downto 0);
         dato_in : IN  std_logic_vector(15 downto 0);
         dato_out : OUT  std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         wd : IN  std_logic
        );
    END COMPONENT;

   --Inputs
   signal dir : std_logic_vector(15 downto 0) := (others => '0');
   signal dato_in : std_logic_vector(15 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal wd : std_logic := '0';

 	--Outputs
   signal dato_out : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: MemoriaRAM PORT MAP (
          dir => dir,
          dato_in => dato_in,
          dato_out => dato_out,
          clk => clk,
          wd => wd
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
   file ARCH_RES : TEXT;
	variable LINEA_RES : line;

	file ARCH_VEC : TEXT;
	variable LINEA_VEC : line;

	VARIABLE var_dato_in    :  STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE var_dato_out    :  STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE var_dir    :  STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE var_wd    :  STD_LOGIC;

	VARIABLE CADENA4 : STRING(1 TO 4);
	VARIABLE CADENA3 : STRING(1 TO 3);
	begin
		file_open(ARCH_RES, "SalidaPractica5.txt", WRITE_MODE);
		file_open(ARCH_VEC, "EntradaPractica5.txt", READ_MODE);

		CADENA4 := " Dir";
		write(LINEA_RES, CADENA4, right, CADENA4'LENGTH+1);
		CADENA3 := " WD";
		write(LINEA_RES, CADENA3, right, CADENA3'LENGTH+1);
		CADENA4 := "  in";
		write(LINEA_RES, CADENA4, right, CADENA4'LENGTH+1);
		CADENA4 := " out";
		write(LINEA_RES, CADENA4, right, CADENA4'LENGTH+1);
		writeline(ARCH_RES,LINEA_RES);
		wait for 10 ns;
		for i in 0 to 9 loop
			readline(ARCH_VEC,LINEA_VEC);

			read(LINEA_VEC, var_dir);
			dir<=var_dir;

			read(LINEA_VEC, var_wd);
			wd<=var_wd;

			read(LINEA_VEC, var_dato_in);
			dato_in<=var_dato_in;

         WAIT UNTIL RISING_EDGE(CLK);
			var_dato_out := dato_out;
			Hwrite(LINEA_RES, var_dir, right, 5);
			write(LINEA_RES, var_wd, right, 5);
			Hwrite(LINEA_RES, var_dato_in, right, 5);
			Hwrite(LINEA_RES, var_dato_out, right, 5);
			writeline(ARCH_RES,LINEA_RES);
			wait for 10 ns;
		end loop;

		file_close(ARCH_VEC);
		file_close(ARCH_RES);
		wait;
   end process;
END;