----------------------------------------------------------------------------------
-- Team Members:
-- 	Castellanos Castro David
-- Teacher Name: Vega García Nayeli
----------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_ALU4Bits IS
END tb_ALU4Bits;

ARCHITECTURE Practica3 OF tb_ALU4Bits IS
    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT ALU4Bits
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         op : IN  std_logic_vector(1 downto 0);
         sel_a : IN  std_logic;
         sel_b : IN  std_logic;
         res : OUT  std_logic_vector(3 downto 0);
         banderas : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');
   signal op : std_logic_vector(1 downto 0) := (others => '0');
   signal sel_a : std_logic := '0';
   signal sel_b : std_logic := '0';

 	--Outputs
   signal res : std_logic_vector(3 downto 0);
   signal banderas : std_logic_vector(3 downto 0);

BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: ALU4Bits PORT MAP (
          a => a,
          b => b,
          op => op,
          sel_a => sel_a,
          sel_b => sel_b,
          res => res,
          banderas => banderas
        );

   -- Stimulus process
   stim_proc: process
   begin
		a <= "0101";	-- 5
		b <= "1110";	-- -2
		sel_a <= '0';
		sel_b <= '0';
		op <= "11";	--	A + B
		wait for 100 ns;
		sel_a <= '0';
		sel_b <= '1';
		op <= "11";	-- A - B
		wait for 100 ns;
		sel_a <= '0';
		sel_b <= '0';
		op <= "00"; --	AND
		wait for 100 ns;
		sel_a <= '1';
		sel_b <= '1';
		op <= "01"; --	NAND
		wait for 100 ns;
		sel_a <= '0';
		sel_b <= '0';
		op <= "01"; --	OR
		wait for 100 ns;
		sel_a <= '1';
		sel_b <= '1';
		op <= "00"; -- NOR
		wait for 100 ns;
		sel_a <= '0';
		sel_b <= '0';
		op <= "10"; -- XOR
		wait for 100 ns;
		sel_a <= '1';
		sel_b <= '0';
		op <= "10"; -- XNOR
		wait for 100 ns;

		a <= "0101";	-- 5
		b <= "0111";	-- 7
		sel_a <= '0';
		sel_b <= '0';
		op <= "11";	--	A + B
		wait for 100 ns;

		a <= "0101";	-- 5
		b <= "0101";	-- 5
--		sel_a <= '0';
--		sel_b <= '1';
--		op <= "11";	--	A - B
--		wait for 150 ns;
		sel_a <= '1';
		sel_b <= '1';
		op <= "01";	--	NOT (NAND)
		wait;
   end process;
END;
