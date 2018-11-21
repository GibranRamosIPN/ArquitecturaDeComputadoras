
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_ContadorDeUnos IS
END tb_ContadorDeUnos;
 
ARCHITECTURE Practica8 OF tb_ContadorDeUnos IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ContadorDeUnos
    PORT(
         D : IN  std_logic_vector(8 downto 0);
         clk : IN  std_logic;
         clr : IN  std_logic;
         ini : IN  std_logic;
         display : OUT  std_logic_vector(6 downto 0);
         A : INOUT  std_logic_vector(8 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal D : std_logic_vector(8 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal clr : std_logic := '0';
   signal ini : std_logic := '0';

 	--Outputs
   signal display : std_logic_vector(6 downto 0);
   signal A : std_logic_vector(8 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ContadorDeUnos PORT MAP (
          D => D,
          clk => clk,
          clr => clr,
          ini => ini,
          display => display,
          A => A
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 
   -- Stimulus process
   stim_proc: process
   begin		
      D <= "001110001";	
		ini <= '0';
		clr <= '1';
		wait for 100 ns;
		clr <= '0';
		wait for 20 ns;
		ini <= '1';
		wait for 100 ns;
		ini <= '0';
		wait for 100 ns;
		ini <= '1';
		wait for 100 ns;
		ini <= '0';
      wait;
   end process;
END;