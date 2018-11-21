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
use work.PackagePractica8ContadorUnos.all;

entity ContadorDeUnos is
	Port ( D : in  STD_LOGIC_VECTOR (8 downto 0);
			clk, clr, ini : in  STD_LOGIC;
			display : out  STD_LOGIC_VECTOR (6 downto 0);
			A : inout  STD_LOGIC_VECTOR (8 downto 0));
end ContadorDeUnos;

architecture Practica8 of ContadorDeUnos is
signal a0, z, la, lb, ea, eb, ec: std_logic;
signal datoIn: std_logic_vector(3 downto 0);
signal datoOut: std_logic_vector(6 downto 0);
signal salida : STD_LOGIC;
begin
	divFre : DivisorDeFrecuencia
	Port map ( 
		clk => clk,
		clr => clr,
		salida => salida
	);

	carta : CartaASM 
	Port map ( 
		ini => ini,
		a0 => a0,
		clk => salida,
		clr => clr,
		z => z,
		ea => ea,
		la => la,
		eb => eb,
		lb => lb,
		ec => ec
	);

	regA : RegistroA
	Port map	(
		la => la,
		ea => ea,
		d => d,
		clk => salida,
		clr => clr,
		a => A
	);
	
	regB : Registrob
	Port map	(
		clk => salida,
		clr => clr,
		lb => lb,
		eb => eb,
		b =>datoIn
	);
	
	dec : Decodificador
	Port map (
		datoIn => datoIn,
		datoOut =>datoOut
	);
	
	a0 <= a(0);
	z <= not (a(0) or a(1) or a(2) or a(3) or a(4) or a(5) or a(6) or a(7) or a(8) );
	process(ec, datoOut)
	begin
		case ec is
			when '1' =>
				display <= datoOut;
			when others =>
				display <= "1111110";	-- '-'
		end case;
	end process;
end Practica8;