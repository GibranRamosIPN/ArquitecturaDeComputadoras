----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	Gómez Cervantes Eliezer Alberto
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU4Bits is
    Port ( a,b : in  STD_LOGIC_VECTOR (3 downto 0);
           op : in  STD_LOGIC_VECTOR (1 downto 0);
           sel_a,sel_b : in  STD_LOGIC;
           res : out  STD_LOGIC_VECTOR (3 downto 0):="0000";
			  banderas : out  STD_LOGIC_VECTOR (3 downto 0):="0000");
end ALU4Bits;

architecture Practica3 of ALU4Bits is
component ALU1Bit is
    Port ( 	op : in std_logic_Vector(1 downto 0);
				a,b,sel_a, sel_b,cin : in  STD_LOGIC;
            res,cout : out  STD_LOGIC);
end component;

signal c : std_logic_vector(4 downto 0);
signal aux_res : std_logic_vector(3 downto 0);
begin
	 c(0) <= sel_b;

	ciclo : for i in 0 to 3 generate
		 Sumador : ALU1Bit
    Port map
	 (
	 op => op,
	 a => a(i),
	 b => b(i),
	 sel_a => sel_a,
	 sel_b => sel_b,
	 cin => c(i),
	 res => aux_res(i),
	 cout => c(i+1)
	 );
	end generate;

	res <= aux_res;

    --	Banderas
	banderas(3) <= c(4) xor c(3);	-- OV
	banderas(2) <= aux_res(3);	-- N
	banderas(1) <= (aux_res(0) or aux_res(1)) nor (aux_res(2) or aux_res(3));	-- Z
	banderas(0) <= c(4);	-- C
end Practica3;
