LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ESCOMIPS_TB IS
END ESCOMIPS_TB;
 
ARCHITECTURE behavior OF ESCOMIPS_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ESCOMIPS
    PORT(
         clr : IN  std_logic;
         clk : IN  std_logic;
         instruccion_out : OUT  std_logic_vector(24 downto 0);
         pc_pila : OUT  std_logic_vector(15 downto 0);
         salida_alu : OUT  std_logic_vector(15 downto 0);
         salida_mem_datos : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clr : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal instruccion_out : std_logic_vector(24 downto 0);
   signal pc_pila : std_logic_vector(15 downto 0);
   signal salida_alu : std_logic_vector(15 downto 0);
   signal salida_mem_datos : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ESCOMIPS PORT MAP (
          clr => clr,
          clk => clk,
          instruccion_out => instruccion_out,
          pc_pila => pc_pila,
          salida_alu => salida_alu,
          salida_mem_datos => salida_mem_datos
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
      -- hold reset state for 100 ns.
		clr <= '1';
		
		wait until rising_edge(clk);
		wait until falling_edge(clk);
		
		clr <= '0';

      wait for clk_period*10;

      wait;
   end process;

END;
