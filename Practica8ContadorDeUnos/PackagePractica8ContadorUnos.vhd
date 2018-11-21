----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	Gómez Cervantes Eliezer Alberto
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

package PackagePractica8ContadorUnos is
	component Decodificador is
		 Port ( datoIn : in  STD_LOGIC_VECTOR (3 downto 0);
				  datoOut : out  STD_LOGIC_VECTOR (6 downto 0));
	end component;

	component RegistroA is
		 Port ( D : in  STD_LOGIC_VECTOR (8 downto 0);
				  LA, EA, CLK, CLR : in  STD_LOGIC;
				  A : out  STD_LOGIC_VECTOR (8 downto 0));
	end component;
	
	component RegistroB is
		 Port ( clk, clr, lb, eb : in  STD_LOGIC;
				  b : inout  STD_LOGIC_VECTOR (3 downto 0));
	end component;

	component CartaASM is
		 Port ( ini,clk, clr, z,a0 : in  STD_LOGIC;
				  la, ea, eb, ec,lb : out  STD_LOGIC);
	end component;

	component DivisorDeFrecuencia is
		 Port ( clk, clr: in  STD_LOGIC;
				  salida : out STD_LOGIC);
	end component;
end PackagePractica8ContadorUnos;