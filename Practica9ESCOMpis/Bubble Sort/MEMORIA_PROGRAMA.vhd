library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
library WORK;
use WORK.ESCOMIPS_PKG.ALL;

entity MEMORIA_PROGRAMA is
		generic(TAM_DIRECCION : integer := 1024;
				  TAM_INSTRUCCION : integer := 25);
    Port ( direccion : in  STD_LOGIC_VECTOR (TAM_DIRECCION-1 downto 0);
           instruccion : out  STD_LOGIC_VECTOR (TAM_INSTRUCCION-1 downto 0));
end MEMORIA_PROGRAMA;

architecture MEMORIA_PROGRAMA_ARCH of MEMORIA_PROGRAMA is
	type arreglo is array(0 to (2**TAM_DIRECCION)-1) of std_logic_vector(TAM_INSTRUCCION-1 downto 0);
	constant MP : arreglo := (
										------------------------ ALGORITMO BURBUJA ------------------------
										
										-- 0 Llamada a inicializacion
										OP_CODE_CALL 	& SIN_USAR & "0000000000000100",
										-- 1 Llamada a bubble sort
										OP_CODE_CALL 	& SIN_USAR & "0000000000011011",
										-- 2 Llamada a despliegue
										OP_CODE_CALL 	& SIN_USAR & "0000000000101101",
										-- 3 Ciclo de despliegue
										OP_CODE_B		& SIN_USAR & "0000000000000010",
										
										-- Subrutina de inicializacion [4-26]
										OP_CODE_LI 		& R0	& "0000000000000000",
										OP_CODE_LI 		& R1	& "0000000000001001",	-- 5

										-- Cargar 9
										OP_CODE_LI 		& R2	& "0000000000001001",
										OP_CODE_SW 		& R2	& R0 	& "000000000000", --Mem(R0+0)=R2	-- 7
										
										-- Cargar 13
										OP_CODE_LI 		& R2	& "0000000000001101",
										OP_CODE_SW 		& R2	& R0	& "000000000010",	-- 9
										
										-- Cargar 69
										OP_CODE_LI 		& R2	& "0000000001000101",
										OP_CODE_SW 		& R2	& R0	& "000000000001",	-- 11
										
										-- Cargar 35
										OP_CODE_LI 		& R2	& "0000000000100011",
										OP_CODE_SW 		& R2	& R0	& "000000000011",	-- 13
										
										-- Cargar 49
										OP_CODE_LI 		& R2	& "0000000000110001",
										OP_CODE_SW 		& R2	& R0	& "000000000100",	-- 15
										
										-- Cargar 11
										OP_CODE_LI 		& R2	& "0000000000001011",
										OP_CODE_SW 		& R2	& R0	& "000000000101",	-- 17										
										-- Cargar 56
										OP_CODE_LI 		& R2	& "0000000000111000",
										OP_CODE_SW 		& R2	& R0	& "000000000110",	-- 19
										
										-- Cargar 47
										OP_CODE_LI 		& R2	& "0000000000101111",
										OP_CODE_SW 		& R2	& R0	& "000000000111",	-- 21
										
										-- Cargar 10
										OP_CODE_LI 		& R2	& "0000000000001010",
										OP_CODE_SW 		& R2	& R0	& "000000001000",	-- 23
										
										-- Cargar 0
										OP_CODE_LI 		& R2	& "0000000000000000",
										OP_CODE_SW 		& R2	& R0	& "000000001001",	-- 25
										
										-- Return
										OP_CODE_RET 	& SIN_USAR & SIN_USAR & SIN_USAR & SIN_USAR & SIN_USAR,	-- 26
										
										-- Subrutina de ordenamiento [27-44]
										OP_CODE_LI 		& R3 	& "0000000000000000",
										OP_CODE_BGETI 	& R1 	& R3 	& "000000010000",
										OP_CODE_LI 		& R4 	& "0000000000000000",
										OP_CODE_BGETI 	& R1 	& R4 	& "000000001100",	-- 30
										OP_CODE_LW 		& R5 	& R4 	& "000000000000",
										OP_CODE_LW 		& R6 	& R4 	& "000000000001",
										OP_CODE_BLETI 	& R6 	& R5 	& "000000000111",
										OP_CODE_TIPOR 	& R7 	& R0 	& R4 	& SIN_USAR & FUN_CODE_ADD,
										OP_CODE_ADDI 	& R8 	& R7 	& "000000000001",
										OP_CODE_LW 		& R9 	& R7 	& "000000000000",
										OP_CODE_LW 		& R10 	& R8 	& "000000000000",
										OP_CODE_SW 		& R10 	& R7 	& "000000000000",
										OP_CODE_SW 		& R9 	& R8 	& "000000000000",
										OP_CODE_ADDI 	& R4 	& R4 	& "000000000001",	-- 40
										OP_CODE_B 		& SIN_USAR & "0000000000011110",
										OP_CODE_ADDI	& R3 	& R3 	& "000000000001",
										OP_CODE_B 		& SIN_USAR & "0000000000011100",
										OP_CODE_RET 	& SIN_USAR & SIN_USAR & SIN_USAR & SIN_USAR & SIN_USAR,	-- 44
										
										-- Subrutina de despliegue [45-5]
										OP_CODE_SWI 	& R0 & x"0000",	-- 45 x2D
										OP_CODE_SWI 	& R0 & x"0001",
										OP_CODE_SWI 	& R0 & x"0002",
										OP_CODE_SWI 	& R0 & x"0003",
										OP_CODE_SWI 	& R0 & x"0004",
										OP_CODE_SWI 	& R0 & x"0005",	-- 50
										OP_CODE_SWI 	& R0 & x"0006",
										OP_CODE_SWI 	& R0 & x"0007",
										OP_CODE_SWI 	& R0 & x"0008",
										OP_CODE_SWI 	& R0 & x"0009",	-- 54
										
										OP_CODE_RET 	& SIN_USAR & SIN_USAR & SIN_USAR & SIN_USAR & SIN_USAR,	-- 56
										
										--------------------------- FIBONACCI----------------------------
										
--										--CALCULO DE LOS 12 PRIMEROS ELEMENTOS FIBONACCI
--
--										OP_CODE_LI     & R0       & "0000000000000000",
--										OP_CODE_LI     & R1       & "0000000000000001",
--										OP_CODE_LI     & R2       & "0000000000000000",
--										OP_CODE_LI     & R3       & "0000000000001100",
--										OP_CODE_TIPOR  & R4       & R0       & R1       & SIN_USAR & FUN_CODE_ADD,
--										OP_CODE_SWI    & R4       & "0000000001001000",
--										OP_CODE_ADDI   & R2       & R2       & "000000000001",
--										OP_CODE_ADDI   & R0       & R1       & "000000000000",
--										OP_CODE_ADDI   & R1       & R4       & "000000000000",
--										OP_CODE_BNEI   & R2       & R3       & "111111111011",
--
--										---- FIN
--										
--										OP_CODE_NOP    & SIN_USAR & SIN_USAR & SIN_USAR & SIN_USAR & SIN_USAR,
--										OP_CODE_B      & SIN_USAR & "0000000000001010",
--										--CALCULO DE LOS 12 PRIMEROS ELEMENTOS FIBONACCI
										
										others => (others => '0')
									 );
begin

	process(direccion)
	begin
		instruccion <= MP(conv_integer(direccion));
	end process;

end MEMORIA_PROGRAMA_ARCH;
