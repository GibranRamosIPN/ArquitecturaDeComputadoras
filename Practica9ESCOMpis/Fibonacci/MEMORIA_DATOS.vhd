library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MEMORIA_DATOS is
		generic(TAM_DIRECCION : integer := 1024;
				  TAM_DATO : integer := 16);
    Port ( direccion : in  STD_LOGIC_VECTOR (TAM_DIRECCION-1 downto 0);
           entrada : in  STD_LOGIC_VECTOR (TAM_DATO-1 downto 0);
           salida : out  STD_LOGIC_VECTOR (TAM_DATO-1 downto 0);
           wd : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end MEMORIA_DATOS;

architecture MEMORIA_DATOS_ARCH of MEMORIA_DATOS is
	type arreglo is array(0 to (2**TAM_DIRECCION)-1) of std_logic_vector(TAM_DATO-1 downto 0);
	signal MD : arreglo;
begin

	salida <= MD(conv_integer(direccion));
	
	process(clk)
	begin
		if(clk'event and clk='1') then
			if(wd = '1') then
				MD(conv_integer(direccion)) <= entrada;
			end if;
		end if;
	end process;

end MEMORIA_DATOS_ARCH;

