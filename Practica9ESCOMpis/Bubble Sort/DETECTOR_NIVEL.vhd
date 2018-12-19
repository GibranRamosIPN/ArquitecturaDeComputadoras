library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DETECTOR_NIVEL is
    Port ( clr : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           na : out  STD_LOGIC);
end DETECTOR_NIVEL;

architecture DETECTOR_NIVEL_ARCH of DETECTOR_NIVEL is

	signal pclk : std_logic;
	signal nclk : std_logic;

begin

	process(clk, clr)
	begin
		if(clr = '1') then
			pclk <= '0';
		elsif(rising_edge(clk)) then
			pclk <= not pclk;
		end if;
	end process;
	
	process(clk, clr)
	begin
		if(clr = '1') then
			nclk <= '0';
		elsif(falling_edge(clk)) then
			nclk <= not nclk;
		end if;
	end process;
	
	na <= pclk xor nclk;

end DETECTOR_NIVEL_ARCH;

