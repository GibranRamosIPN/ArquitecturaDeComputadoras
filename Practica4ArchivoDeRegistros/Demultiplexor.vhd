----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	G�mez Cervantes Eliezer Alberto
-- Teacher Name: Vega Garc�a Nayeli
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Demultiplexor is
	 Generic (n: integer := 16);
    Port ( in_D : in  STD_LOGIC;
           writeRegister : in  STD_LOGIC_VECTOR (3 downto 0);
           out_d : inout  STD_LOGIC_VECTOR (n-1 downto 0));
end Demultiplexor;

architecture Practica4 of Demultiplexor is
begin
	process(in_D, writeRegister, out_d)
	begin
		out_d <= (others => '0');
		case writeRegister is
			when "0000" => out_d(0) <= in_D;

			when "0001" => out_d(1) <= in_D;

			when "0010" => out_d(2) <= in_D;

			when "0011" => out_d(3) <= in_D;

			when "0100" => out_d(4) <= in_D;

			when "0101" => out_d(5) <= in_D;

			when "0110" => out_d(6) <= in_D;

			when "0111" => out_d(7) <= in_D;

			when "1000" => out_d(8) <= in_D;

			when "1001" => out_d(9) <= in_D;

			when "1010" => out_d(10) <= in_D;

			when "1011" => out_d(11) <= in_D;

			when "1100" => out_d(12) <= in_D;

			when "1101" => out_d(13) <= in_D;

			when "1110" => out_d(14) <= in_D;

			when "1111" => out_d(15) <= in_D;

			when others => out_d <= (others => '0');
		end case;
	end process;
end Practica4;
