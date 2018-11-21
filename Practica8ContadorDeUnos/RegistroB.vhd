----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	Gómez Cervantes Eliezer Alberto
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity RegistroB is
    Port ( clk, clr, lb, eb : in  STD_LOGIC;
           b : inout  STD_LOGIC_VECTOR (3 downto 0));
end RegistroB;

architecture Practica8 of RegistroB is
begin
	process (clk,clr)
	begin
		if (clr = '1') then
			b <= "0000";
		elsif (clk = '1' AND clk'event) then
			if (lb = '1') then
				b <= "0000";
			end if;
			if (eb = '1') then
				b <= b + 1; 
			end if;
		end if;	
	end process;
end Practica8;