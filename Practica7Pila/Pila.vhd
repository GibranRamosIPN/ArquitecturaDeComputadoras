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
entity Pila is
    generic (long : integer := 16);
    Port ( clr, clk, wpc, up, dw : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (long-1 downto 0);
           pc : out  STD_LOGIC_VECTOR (long-1 downto 0);
           sp_aux : out  STD_LOGIC_VECTOR (2 downto 0));
end Pila;

architecture Practica7 of Pila is
type banco is array (0 to 7) of std_logic_vector (long-1 downto 0);
signal aux : banco;
begin
	process(clk, clr, aux)
	variable sp : std_logic_vector (2 downto 0);
	begin
		if (clr = '1') then
			sp := "000";
			for i in 0 to 7 loop
				aux(i) <= "0000000000000000";
			end loop;
		elsif (rising_edge(clk)) then
			if (wpc = '0' and up = '0' and dw = '0') then
				aux (conv_integer(sp)) <= aux(conv_integer(sp)) + 1;
			elsif (up = '1' and wpc = '1' and dw = '0') then
				sp := sp + 1;
				aux(conv_integer(sp)) <= D;
			elsif (up = '0' and wpc = '1' and dw = '0') then
				aux(conv_integer(sp)) <= D;
			elsif (up = '0' and wpc = '0' and dw = '1') then
				sp := sp - 1;
				aux(conv_integer(sp)) <= aux(conv_integer(sp)) + 1;
			end if;
		end if;
		pc <= aux(conv_integer(sp));
		sp_aux <= sp;
	end process;
end Practica7;