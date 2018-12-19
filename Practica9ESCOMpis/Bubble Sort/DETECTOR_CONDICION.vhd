library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DETECTOR_CONDICION is
    Port ( banderas_in : in  STD_LOGIC_VECTOR (3 downto 0);
           eq : out  STD_LOGIC;
           neq : out  STD_LOGIC;
           l : out  STD_LOGIC;
           le : out  STD_LOGIC;
           g : out  STD_LOGIC;
           ge : out  STD_LOGIC);
end DETECTOR_CONDICION;

architecture DETECTOR_CONDICION_ARCH of DETECTOR_CONDICION is

begin

	--banderas_in(3) = OV
	--banderas_in(2) = N
	--banderas_in(1) = Z
	--banderas_in(0) = C
	
	eq  <= banderas_in(1);
	neq <= not banderas_in(1);
	l   <= not banderas_in(0);
	le  <= banderas_in(1) or (not banderas_in(0));
	g   <= (not banderas_in(1)) and banderas_in(0);
	
	--Evita warnings
	ge <= banderas_in(0) and banderas_in(3) when banderas_in(3) = '1' else
			banderas_in(0) and banderas_in(2) when banderas_in(2) = '1' else
			banderas_in(0);

end DETECTOR_CONDICION_ARCH;