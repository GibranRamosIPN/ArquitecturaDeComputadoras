----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU1Bit is
    Port ( 	op : in std_logic_Vector(1 downto 0);
				a,b,sel_a, sel_b,cin : in  STD_LOGIC;
            res,cout : out  STD_LOGIC);
end ALU1Bit;

architecture Practica3 of ALU1Bit is

component Sumador1Bit is
    Port ( a,b,cin : in  STD_LOGIC;
           s,cout : out  STD_LOGIC);
end component;

signal res_a, res_b, res_and, res_or, res_xor, res_sum, aux_cout: std_logic;
begin
	res_a <= a xor sel_a;
	res_b <= b xor sel_b;
	res_and <= res_a and res_b;
	res_or <= res_a or res_b;
	res_xor <= res_a xor res_b;

	Sumador : Sumador1Bit port map (
	a => res_a,
	b => res_b,
	cin => cin,
   s => res_sum,
   cout => aux_cout
	);

	process (res_and, res_or, res_xor, res_sum, op, aux_cout)
	begin
		if (op = "00") then	-- AND
			cout <= '0';
			res <= res_and;
		elsif (op = "01") then	-- OR
			cout <= '0';
			res <= res_or;
		elsif (op = "10") then	-- XOR
			cout <= '0';
			res <= res_xor;
		else	-- Suma
			cout <= aux_cout;
			res <= res_sum;
		end if;
	end process;
end Practica3;