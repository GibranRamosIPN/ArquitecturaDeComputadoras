----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	Gómez Cervantes Eliezer Alberto
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SumadorRestador4Bits is
	generic (
		n : integer := 4
	);

    Port (
    	a,b : in std_logic_vector(n-1 downto 0);
		cin : in  STD_LOGIC;
        s : out std_logic_vector (n-1 downto 0);
		cout : out  STD_LOGIC
	);
end SumadorRestador4Bits;

architecture Behavioral of SumadorRestador4Bits is
signal Eb : std_logic_vector(n-1 downto 0);
signal C : std_logic_Vector(n downto 0);
begin
	c(0) <= cin;
	ciclo : for i in 0 to n-1 generate
		Eb(i) <= b(i) xor c(0);
		S(i) <= a(i) xor Eb(i) xor c(i);
		c(i+1) <= (Eb(i) and C(i)) or (a(i) and c(i)) or( A(i) and Eb(i));
	end generate;

	cout <= C(n);
end Behavioral;
