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
--										------------------------ ALGORITMO BURBUJA -------------------------
--										
--										--CARGA DE LOS NUMEROS EN MEMORIA
--										
--										OP_CODE_LI     & R0       & "0000000000001000",--0 Lit 8
--										OP_CODE_SWI    & R0       & "0000000000000000",--1
--										OP_CODE_LI     & R0       & "0000000000000110",--2 Lit 6
--										OP_CODE_SWI    & R0       & "0000000000000001",--3
--										OP_CODE_LI     & R0       & "0000000000001100",--4 Lit 12
--										OP_CODE_SWI    & R0       & "0000000000000010",--5
--										OP_CODE_LI     & R0       & "0000000000001010",--6 Lit 10
--										OP_CODE_SWI    & R0       & "0000000000000011",--7
--										OP_CODE_LI     & R0       & "0000000000000100",--8 Lit 7
--										OP_CODE_SWI    & R0       & "0000000000000100",--9
--										OP_CODE_LI     & R0       & "0000000000000101",--10 Lit 5
--										OP_CODE_SWI    & R0       & "0000000000000101",--11
--										OP_CODE_LI     & R0       & "0000000000000010",--12 Lit 2
--										OP_CODE_SWI    & R0       & "0000000000000110",--13
--										OP_CODE_LI     & R0       & "0000000000000011",--14 Lit 3
--										OP_CODE_SWI    & R0       & "0000000000000111",--15
--										OP_CODE_LI     & R0       & "0000000000000101",--16 Lit 5
--										OP_CODE_SWI    & R0       & "0000000000001000",--17
--										OP_CODE_LI     & R0       & "0000000000001010",--18 Lit 10
--										OP_CODE_SWI    & R0       & "0000000000001001",--19
--										OP_CODE_LI     & R4       & "0000000000001001",--20 R4 = 9
--										OP_CODE_LI     & R3       & "0000000000000000",--21 R3 = 0
--
--										-- ETIQUETA 1 
--
--										OP_CODE_LI     & R0       & "0000000000000000",--22 R0 = 0
--
--										-- ETIQUETA 2										
--
--										OP_CODE_LW		& R1		& R0		& x"0000",--23 R1 = mem[R0+0]
--										OP_CODE_LW		& R2		& R0		& x"0001",--24 R2 = mem[R0+1]
--										
--										OP_CODE_BLETI	& R2		& R1		& x"0010",--25 R1 <= R2 => ETIQUETA 3
--										
--										-- Se cumple condición
--										OP_CODE_SW		& R2		& R0		& x"0000",--26 mem[R0+0] = R2
--										OP_CODE_SW		& R1		& R0		& x"0001",--27 mem[R0+1] = R1
--										
--										-- ETIQUETA 3
--										
--										OP_CODE_ADDI	& R0		& R0		& x"0001",--28 R0 = R0 +1
--										
--										OP_CODE_BLTI	& R3		& R0		& x"0017",--29 R0 < R4 => ETIQUETA 2
--										OP_CODE_BLTI	& R3		& R0		& x"0016",--29 R3 < R4 => ETIQUETA 1
--										
--										-- FIN
--										
--										OP_CODE_NOP    & SIN_USAR & SIN_USAR & SIN_USAR & SIN_USAR & SIN_USAR,--30
--										OP_CODE_B      & SIN_USAR & "0000000000011100",--31
										
										--------------------------- FIBONACCI----------------------------
										
										--CALCULO DE LOS 12 PRIMEROS ELEMENTOS FIBONACCI

										OP_CODE_LI     & R0       & "0000000000000000",
										OP_CODE_LI     & R1       & "0000000000000001",
										OP_CODE_LI     & R2       & "0000000000000000",
										OP_CODE_LI     & R3       & "0000000000001100",
										OP_CODE_TIPOR  & R4       & R0       & R1       & SIN_USAR & FUN_CODE_ADD,
										OP_CODE_SWI    & R4       & "0000000001001000",
										OP_CODE_ADDI   & R2       & R2       & "000000000001",
										OP_CODE_ADDI   & R0       & R1       & "000000000000",
										OP_CODE_ADDI   & R1       & R4       & "000000000000",
										OP_CODE_BNEI   & R2       & R3       & "111111111011",

										---- FIN
										
										OP_CODE_NOP    & SIN_USAR & SIN_USAR & SIN_USAR & SIN_USAR & SIN_USAR,
										OP_CODE_B      & SIN_USAR & "0000000000001010",
										--CALCULO DE LOS 12 PRIMEROS ELEMENTOS FIBONACCI
										
										others => (others => '0')
									 );
begin

	process(direccion)
	begin
		instruccion <= MP(conv_integer(direccion));
	end process;

end MEMORIA_PROGRAMA_ARCH;
