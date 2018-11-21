----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	Gómez Cervantes Eliezer Alberto
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity MemoriaRAM is
    Port ( dir : in  STD_LOGIC_VECTOR (15 downto 0);
           dato_in : in  STD_LOGIC_VECTOR (15 downto 0);
           dato_out : out  STD_LOGIC_VECTOR (15 downto 0);
           clk, wd : in  STD_LOGIC);
end MemoriaRAM;

architecture Practica5 of MemoriaRAM is
type aux is array (0 to 65535) of std_logic_vector(15 downto 0);
signal aux2 : aux;
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (wd = '1') then
				aux2(conv_integer(dir)) <= dato_in;
			end if;
		end if;
	end process;
	dato_out <= aux2(conv_integer(dir));
end Practica5;