----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	Gómez Cervantes Eliezer Alberto
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.NUMERIC_STD.ALL;

entity RegistroA is
    Port ( D : in  STD_LOGIC_VECTOR (8 downto 0);
           LA, EA, CLK, CLR : in  STD_LOGIC;
           A : out  STD_LOGIC_VECTOR (8 downto 0));
end RegistroA;

architecture Practica8 of RegistroA is
begin
	process(LA, EA, CLK, CLR)
	variable aux : bit_vector(8 downto 0);
	begin
		if (CLR = '1') then
			A <= "000000000";
			aux := "000000000";
		elsif (rising_edge(CLK)) then
			if (LA = '1') then
				A <= D;
				aux := to_bitvector(D);
			elsif (EA = '1') then
				aux := aux SRL 1;		--Corrimiento lógico a la derecha en 1 bit.
				A <= to_stdlogicvector(aux);
			else
				A <= to_stdlogicvector(aux);
			end if;
		end if;
	end process;
end Practica8;