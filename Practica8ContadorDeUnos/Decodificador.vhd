----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	Gómez Cervantes Eliezer Alberto
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decodificador is
    Port ( datoIn : in  STD_LOGIC_VECTOR (3 downto 0);
           datoOut : out  STD_LOGIC_VECTOR (6 downto 0));
end Decodificador;

architecture Practica8 of Decodificador is
begin
	process(datoIn)		-- Display Ánodo
	begin
		case datoIn is
			when "0000" =>   -- 0
                datoOut <= "0000001";
			when "0001" =>   -- 1
                datoOut <= "1001111";
			when "0010" =>   -- 2
                datoOut <= "0010010";
			when "0011" =>   -- 3
                datoOut <= "0000110";
			when "0100" =>   -- 4
                datoOut <= "1001100";
			when "0101" =>   -- 5
                datoOut <= "0100100";
			when "0110" =>   -- 6
                datoOut <= "0100000";
			when "0111" =>   -- 7
                datoOut <= "0001111";
			when "1000" =>   -- 8
                datoOut <= "0000000";
			when "1001" =>   -- 9
                datoOut <= "0000100";
			when "1010" =>   -- A = 10
                datoOut <= "0001000";
			when "1011" =>   -- B = 11
                datoOut <= "1100000";
			when "1100" =>   -- C = 12
                datoOut <= "0110001";
			when "1101" =>   -- D = 13
                datoOut <= "1000011";
			when "1110" =>   -- E = 14
                datoOut <= "0110000";
			when "1111" =>   -- F = 15
                datoOut <= "0111000";
			when others =>   -- Nada
                datoOut <= "1111111";
		end case;
	end process;
end Practica8;