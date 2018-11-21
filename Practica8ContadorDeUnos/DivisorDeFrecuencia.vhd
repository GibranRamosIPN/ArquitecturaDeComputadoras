----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	Gómez Cervantes Eliezer Alberto
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DivisorDeFrecuencia is
    Port ( clk, clr : in  STD_LOGIC;
			  salida : out STD_LOGIC);
end DivisorDeFrecuencia;

architecture Practica8 of DivisorDeFrecuencia is
signal contador: std_logic_vector(25 downto 0) := "00000000000000000000000000";
begin
	process(clk, clr)
	begin
		if (clr = '1') then
			contador <= "00000000000000000000000000";
		elsif (clk'event and clk = '1') then
			if (contador(25) = '0') then
				salida <= '0';
			else
				salida <= '1';
			end if;
			contador <= contador + 1;
		end if;
	end process;
end Practica8;