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

ENTITY tb_MemoriaDePrograma IS
END tb_MemoriaDePrograma;

ARCHITECTURE Practica6 OF tb_MemoriaDePrograma IS

    COMPONENT MemoriaDePrograma
    PORT(
         pc : IN  std_logic_vector(11 downto 0);
         inst : OUT  std_logic_vector(24 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal pc : std_logic_vector(11 downto 0) := (others => '0');

 	--Outputs
   signal inst : std_logic_vector(24 downto 0);

BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: MemoriaDePrograma PORT MAP (
          pc => pc,
          inst => inst
        );

   -- Stimulus process
   stim_proc: process

        file ARCH_RES : TEXT;
        variable LINEA_RES : line;

        file ARCH_VEC : TEXT;
        variable LINEA_VEC : line;

        VARIABLE var_pc : STD_LOGIC_VECTOR (11 DOWNTO 0);
        VARIABLE var_inst : STD_LOGIC_VECTOR (24 DOWNTO 0);
        VARIABLE var_opcode : STD_LOGIC_VECTOR (4 DOWNTO 0);
        VARIABLE var_19_16 : STD_LOGIC_VECTOR (3 DOWNTO 0);
        VARIABLE var_15_12 : STD_LOGIC_VECTOR (3 DOWNTO 0);
        VARIABLE var_11_8 : STD_LOGIC_VECTOR (3 DOWNTO 0);
        VARIABLE var_7_4 : STD_LOGIC_VECTOR (3 DOWNTO 0);
        VARIABLE var_3_0 : STD_LOGIC_VECTOR (3 DOWNTO 0);

        VARIABLE CADENA2 : STRING(1 TO 2);
        VARIABLE CADENA4 : STRING(1 TO 4);
        VARIABLE CADENA5 : STRING(1 TO 5);
        VARIABLE CADENA6 : STRING(1 TO 6);
        VARIABLE CADENA7 : STRING(1 TO 7);
        VARIABLE CADENA8 : STRING(1 TO 8);

        begin
            file_open(ARCH_RES, "SalidaPractica6.txt", WRITE_MODE);
            file_open(ARCH_VEC, "EntradaPractica6.txt", READ_MODE);

            CADENA2 := " A";
            write(LINEA_RES, CADENA2, right, CADENA2'LENGTH+1);

            CADENA8 := "  OPCODE";
            write(LINEA_RES, CADENA8, right, CADENA8'LENGTH+1);

            CADENA6 := " 19-16";
            write(LINEA_RES, CADENA6, right, CADENA6'LENGTH+1);

            CADENA6 := " 15-12";
            write(LINEA_RES, CADENA6, right, CADENA6'LENGTH+1);

            CADENA5 := " 11-8";
            write(LINEA_RES, CADENA5, right, CADENA5'LENGTH+1);

            CADENA4 := " 7-4";
            write(LINEA_RES, CADENA4, right, CADENA4'LENGTH+1);

            CADENA4 := " 3-0";
            write(LINEA_RES, CADENA4, right, CADENA4'LENGTH+1);

            writeline(ARCH_RES,LINEA_RES);
        wait for 10 ns;

        FOR I IN 0 TO 6 LOOP
            readline(ARCH_VEC,LINEA_VEC);

            read(LINEA_VEC, var_pc);
            pc<= var_pc;

         WAIT for 10 ns;
                var_inst := inst;
                var_opcode := var_inst(24)&var_inst(23)&var_inst(22)&var_inst(21)&var_inst(20);
                var_19_16 := var_inst(19)&var_inst(18)&var_inst(17)&var_inst(16);
                var_15_12 := var_inst(15)&var_inst(14)&var_inst(13)&var_inst(12);
                var_11_8 := var_inst(11)&var_inst(10)&var_inst(9)&var_inst(8);
                var_7_4 := var_inst(7)&var_inst(6)&var_inst(5)&var_inst(4);
                var_3_0 := var_inst(3)&var_inst(2)&var_inst(1)&var_inst(0);

                Hwrite(LINEA_RES, var_pc, right, 5);
                write(LINEA_RES, var_opcode, right, 7);
                write(LINEA_RES, var_19_16, right, 7);
                write(LINEA_RES, var_15_12, right, 7);
                write(LINEA_RES, var_11_8, right, 6);
                write(LINEA_RES, var_7_4, right, 5);
                write(LINEA_RES, var_3_0, right, 5);
                writeline(ARCH_RES,LINEA_RES);
		end loop;

		file_close(ARCH_VEC);
		file_close(ARCH_RES);
		wait;
   end process;
END;
