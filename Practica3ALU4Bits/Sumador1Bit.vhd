----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	Gómez Cervantes Eliezer Alberto
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sumador1Bit is
    Port ( a,b,cin : in  STD_LOGIC;
           s,cout : out  STD_LOGIC);
end Sumador1Bit;

architecture Practica3 of Sumador1Bit is
begin
	s <= a xor b xor cin;
	cout <= (b and cin) or (a and cin) or (a and b);
end Practica3;