----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- 	Gómez Cervantes Eliezer Alberto
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_AcarreoAnticipado IS
END tb_AcarreoAnticipado;

ARCHITECTURE Practica2 OF tb_AcarreoAnticipado IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT AcarreoAnticipado
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         cin : IN  std_logic;
         s : OUT  std_logic_vector(3 downto 0);
         cout : OUT  std_logic
        );
    END COMPONENT;


   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal cin : std_logic := '0';

 	--Outputs
   signal s : std_logic_vector(3 downto 0);
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with
   -- appropriate port name

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: AcarreoAnticipado PORT MAP (
          a => a,
          b => b,
          cin => cin,
          s => s,
          cout => cout
        );

   -- Stimulus process
   stim_proc: process
   begin
		a <= "0101";		--Sumar 5 + 5
		b <= "0101";
		cin <= '0';
		wait for 100 ns;
		a <= "1100";		--Sumar  12 + 7
		b <= "0111";
		cin <= '0';
		wait for 100 ns;
		a <= "1001";		--Sumar 9 + 5
		b <= "0101";
		cin <= '0';
		wait for 100 ns;
		a <= "1110";		--Restar 14 - 9
		b <= "1001";
		cin <= '1';
		wait for 100 ns;
		a <= "0100";		--Sumar 4 + 2
		b <= "0010";
		cin <= '0';
		wait for 100 ns;
		a <= "0111";		--Restar 7 - 7
		b <= "0111";
		cin <= '1';
		wait for 100 ns;
		a <= "1111";		--Restar 15 - 5
		b <= "0101";
		cin <= '1';
		wait for 100 ns;
		a <= "1011";		--Restar 11 - 8
		b <= "1000";
		cin <= '1';
		wait for 100 ns;
		a <= "0001";		--Restar 1 - 4
		b <= "0100";
		cin <= '1';
		wait;
   end process;
end;
