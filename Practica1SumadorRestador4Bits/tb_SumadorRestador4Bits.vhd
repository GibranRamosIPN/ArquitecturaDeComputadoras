----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_SumadorRestador4Bits IS
END tb_SumadorRestador4Bits;

ARCHITECTURE behavior OF tb_SumadorRestador4Bits IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT SumadorRestador4Bits
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
   uut: SumadorRestador4Bits PORT MAP (
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
		a <= "1100";		--Sumar  12 + 8
		b <= "1000";
		cin <= '0';
		wait for 100 ns;
		a <= "1001";		--Sumar 9 + 5
		b <= "0101";
		cin <= '0';
		wait for 100 ns;
		a <= "1010";		--Restar 10 - 9
		b <= "1001";
		cin <= '1';
		wait for 100 ns;
		a <= "0100";		--Sumar 4 + 2
		b <= "0010";
		cin <= '0';
		wait for 100 ns;
		a <= "0111";		--Restar 7 - 9
		b <= "1001";
		cin <= '1';
		wait for 100 ns;
		a <= "1111";		--Restar 15 - 15
		b <= "1111";
		cin <= '1';
		wait for 100 ns;
		a <= "1011";		--Restar 11 + 8
		b <= "1000";
		cin <= '1';
		wait for 100 ns;
		a <= "0001";		--Restar 1 - 4
		b <= "0100";
		cin <= '1';
		wait;
   end process;
END;