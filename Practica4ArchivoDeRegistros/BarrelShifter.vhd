----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	Gómez Cervantes Eliezer Alberto
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BarrelShifter is
	 Generic (n: integer := 16);
    Port ( data_in : in  STD_LOGIC_VECTOR (n-1 downto 0);
           shamt : in  STD_LOGIC_VECTOR (3 downto 0);
           data_out : out  STD_LOGIC_VECTOR (n-1 downto 0);
           dir : in  STD_LOGIC);
end BarrelShifter;

architecture Practica4 of BarrelShifter is
begin
	process(shamt, data_in, dir)
	variable temp : std_logic_vector(15 downto 0);
	begin
		temp := data_in;
		if (dir = '1') then
			for i in 0 to 3 loop
				for j in 15 downto 0 loop
					if (shamt(i) = '1') then
						if (j-2**i > -1) then
							temp(j) := temp(j-2**i);
						else
							temp(j) := '0';
						end if;
					end if;
				end loop;
			end loop;
		else
			for i in 0 to 3 loop
				for j in 0 to 15 loop
					if (shamt(i) = '1') then
						if (j+2**i < 16 ) then
							temp(j) := temp(j+2**i);
						else
							temp(j) := '0';
						end if;
					end if;
				end loop;
			end loop;
		end if;
		DATA_OUT <= temp;
	end process;
end Practica4;
