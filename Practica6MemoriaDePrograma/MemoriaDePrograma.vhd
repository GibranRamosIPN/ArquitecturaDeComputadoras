----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	Gómez Cervantes Eliezer Alberto
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------

library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity MemoriaDePrograma is
    Port ( pc : in  STD_LOGIC_VECTOR (11 downto 0);
           inst : out  STD_LOGIC_VECTOR (24 downto 0));
end MemoriaDePrograma;

architecture Practica6 of MemoriaDePrograma is
--CONSTANTES DE INSTRUCCIONES
    --CODIGO DE OPERACION DE INSTRUCCIONES
constant tipo_r : std_logic_Vector(4 downto 0) := "00000";  --Formato R
        --Identificadores para los formatos R
constant add :    std_logic_vector (3 downto 0) := "0000";
constant sub :    std_logic_vector (3 downto 0) := "0001";
constant i_and :  std_logic_vector (3 downto 0) := "0010";
constant i_or :   std_logic_vector (3 downto 0) := "0011";
constant i_xor :  std_logic_vector (3 downto 0) := "0100";
constant i_nand : std_logic_vector (3 downto 0) := "0101";
constant i_nor :  std_logic_vector (3 downto 0) := "0110";
constant i_xnor : std_logic_vector (3 downto 0) := "0111";
constant i_not :  std_logic_vector (3 downto 0) := "1000";
constant i_sll :  std_logic_vector (3 downto 0) := "1001";
constant i_srl :  std_logic_vector (3 downto 0) := "1010";

constant li :    std_logic_vector (4 downto 0) := "00001";
constant lwi :   std_logic_vector (4 downto 0) := "00010";
constant swi :   std_logic_vector (4 downto 0) := "00011";
constant sw :    std_logic_vector (4 downto 0) := "00100";
constant addi :  std_logic_vector (4 downto 0) := "00101";
constant subi :  std_logic_vector (4 downto 0) := "00110";
constant andi :  std_logic_vector (4 downto 0) := "00111";
constant ori :   std_logic_vector (4 downto 0) := "01000";
constant xori :  std_logic_vector (4 downto 0) := "01001";
constant nandi : std_logic_vector (4 downto 0) := "01010";
constant nori :  std_logic_vector (4 downto 0) := "01011";
constant xnori : std_logic_vector (4 downto 0) := "01100";
constant beqi :  std_logic_vector (4 downto 0) := "01101";
constant bnei :  std_logic_vector (4 downto 0) := "01110";
constant blti :  std_logic_vector (4 downto 0) := "01111";
constant bleti : std_logic_vector (4 downto 0) := "10000";
constant bgti :  std_logic_vector (4 downto 0) := "10001";
constant bgeti : std_logic_vector (4 downto 0) := "10010";
constant b :     std_logic_vector (4 downto 0) := "10011";
constant call :  std_logic_vector (4 downto 0) := "10100";
constant ret :   std_logic_vector (4 downto 0) := "10101";
constant nop :   std_logic_vector (4 downto 0) := "10110";
constant lw :    std_logic_vector (4 downto 0) := "10111";

    --Registros
constant r0 :   std_logic_vector (3 downto 0) := "0000";
constant r1 :   std_logic_vector (3 downto 0) := "0001";
constant r2 :   std_logic_vector (3 downto 0) := "0010";
constant r3 :   std_logic_vector (3 downto 0) := "0011";
constant r4 :   std_logic_vector (3 downto 0) := "0100";
constant r5 :   std_logic_vector (3 downto 0) := "0101";
constant r6 :   std_logic_vector (3 downto 0) := "0110";
constant r7 :   std_logic_vector (3 downto 0) := "0111";
constant r8 :   std_logic_vector (3 downto 0) := "1000";
constant r9 :   std_logic_vector (3 downto 0) := "1001";
constant r10 :  std_logic_vector (3 downto 0) := "1010";
constant r11 :  std_logic_vector (3 downto 0) := "1011";
constant r12 :  std_logic_vector (3 downto 0) := "1100";
constant r13 :  std_logic_vector (3 downto 0) := "1101";
constant r14 :  std_logic_vector (3 downto 0) := "1110";
constant r15 :  std_logic_vector (3 downto 0) := "1111";

constant su :   std_logic_vector (3 downto 0) := "0000";	--S/U: Sin usar

type p6 is array (0 to 4096) of std_logic_Vector (24 downto 0);

constant aux : p6 := (

    li&r0&x"0001",   --LI R0, #1 (0)
    li&r1&x"0007",    --LI R1, #7 (1)
    tipo_r&r1&r1&r0&su&add,    --CICLO: ADD R1, R1, R0 (2)
    swi&r1&x"0005",    --SWI R1, 5 (3)
    b&su&x"0002",    --B CICLO (4)

    others=>(others=> '0')
);
begin
    inst <= aux (conv_integer(PC));
end Practica6;