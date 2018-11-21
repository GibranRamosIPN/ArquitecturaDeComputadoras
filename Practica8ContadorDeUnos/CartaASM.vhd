----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	Gómez Cervantes Eliezer Alberto
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CartaASM is
    Port ( ini,clk, clr, z,a0 : in  STD_LOGIC;
           la, ea, eb, ec,lb : out  STD_LOGIC);
end CartaASM;

architecture Practica8 of CartaASM is
type estados is (e0, e1, e2);
signal edo_act, edo_sig : estados;
begin
	process (clk, clr)
	begin 
		if (clr = '1') then
			edo_act <= e0;
		elsif (clk'event and clk = '1') then
			edo_act <= edo_sig;
		end if;
	end process;
	process (edo_act, ini, z, a0)
	begin 
		la <= '0';
		lb <= '0';
		ea <= '0';
		eb <= '0';
		ec <= '0';
		case edo_act is
			when e0 =>
				lb <= '1';
				if (ini = '0') then
					la <= '1';
					edo_sig <= e0;
				else
					edo_sig <= e1;
				end if;
			when e1 =>
				ea <= '1';
				if ((z = '0') and (a0 = '0')) then
					edo_sig <= e1;
				elsif ((z = '0') and (a0 = '1')) then
					eb <= '1';
					edo_sig <= e1;
				else
					edo_sig <= e2;
				end if;
			when e2 =>
				ec <= '1';
				if (ini = '1') then
					edo_sig <= e2;
				else
					edo_sig <= e0;
				end if;
		end case;
	end process;
end Practica8;