----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AcarreoAnticipado is
	generic (
		n : integer := 4);

    Port (
    	a,b : in std_logic_vector(n-1 downto 0);
		cin : in  STD_LOGIC;
		s : out std_logic_vector (n-1 downto 0);
		cout : out  STD_LOGIC);
end AcarreoAnticipado;

architecture Practica2 of AcarreoAnticipado is
begin
	process(a,b,cin)
	variable cUno, cDos, cTres : std_logic;
	variable Eb, P, G: std_logic_vector(n-1 downto 0);
	variable c : std_logic_Vector(n downto 0);
	begin
		c(0) := cin;
		ciclo : for i in 0 to n-1 loop
			Eb(i) := b(i) xor c(0);
			P(i) := a(i) xor Eb(i);
			--cUno := P(i);	--Auxiliar para la multiplicatoriaUno
			G(i) := a(i) and Eb(i);
			S(i) <= P(i) xor c(i);
			if (i = 0) then
				c(1) := (c(0) and P(0)) or g(0);
			elsif (i = 1) then
				c(2) := (P(1) and ((c(0) and P(0)) or G(0))) or G(1);
			else
				multiplicatoriaUno : for j in 0 to i loop
					if (j = 0) then
						cUno := P(j);
					else
						cUno := cUno and P(j);	--PI (P(n))
					end if;
				end loop;
				cDos := '0';
				sumatoria : for m in 0 to i-1 loop
					--cTres := P(1);	--Auxliliar para la multipicatoriaDos
					multiplicatoriaDos : for j in m+1 to i loop
						if (j = (m+1)) then
							cTres := P(j);
						else
							cTres := cTres and P(j);	--PI (P(j))
						end if;
					end loop;
					cDos := cDos or (G(m) and cTres);	--SIGMA (G(m) and PI P(j))
				end loop;
				c(i+1) := (c(0) and cUno) or cDos or G(i);
			end if;
		end loop;

		cout <= C(n);
	end process;
end Practica2;
