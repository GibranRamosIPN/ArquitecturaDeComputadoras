----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	Gómez Cervantes Eliezer Alberto
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registro is
	 Generic (n: integer := 16);
    Port ( clk, clr, L : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (n-1 downto 0);
           Q : inout  STD_LOGIC_VECTOR (n-1 downto 0));
end Registro;

architecture Practica4 of Registro is
begin
	process(clk, clr)
	begin
		if (clr = '1') then
			Q <= (others => '0');
		elsif (rising_edge(clk)) then
			case L is
				when '1' =>
					Q <= D;
				when others =>
					Q <= Q;
			end case;
		end if;
	end process;
end Practica4;