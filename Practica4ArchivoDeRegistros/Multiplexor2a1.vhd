----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	G�mez Cervantes Eliezer Alberto
-- Teacher Name: Vega Garc�a Nayeli
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexor2a1 is
	 Generic (n: integer := 16);
    Port ( in_uno, in_dos : in  STD_LOGIC_VECTOR (n-1 downto 0);
           she : in  STD_LOGIC;
           outm : inout  STD_LOGIC_VECTOR (n-1 downto 0));
end Multiplexor2a1;

architecture Practica4 of Multiplexor2a1 is
begin
	process(in_uno, in_dos, she, outm)
	begin
		if (she = '1') then
			outm <= in_uno;
		else
			outm <= in_dos;
		end if;
	end process;
end Practica4;
