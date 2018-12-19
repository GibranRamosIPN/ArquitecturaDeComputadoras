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

entity PILA is
		generic(TAM_DIRECCION : integer := 16;
				  TAM_PILA : integer := 8);
    Port ( entrada : in  STD_LOGIC_VECTOR (TAM_DIRECCION-1 downto 0);
           salida : out  STD_LOGIC_VECTOR (TAM_DIRECCION-1 downto 0);
           up : in  STD_LOGIC;
           dw : in  STD_LOGIC;
           wpc : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end PILA;

architecture PILA_ARCH of PILA is
	
	type arreglo is array(0 to TAM_PILA-1) of std_logic_vector(TAM_DIRECCION-1 downto 0);
	
begin

	process(clk, clr)
		variable PC : arreglo;
		variable SP : integer range 0 to TAM_PILA-1;
		variable ban : std_logic_vector(2 downto 0);
	begin
		if(clr = '1') then --Reset
			for i in 0 to TAM_PILA-1 loop
				PC(i) := (others => '0');
			end loop;
			SP := 0;
		elsif(clk'event and clk = '1') then
			ban := up&dw&wpc;
			case ban is
				when "000" => --PC(SP)++
					PC(SP) := PC(SP)+1;
				when "001" => --Salto
					PC(SP) := entrada;
				when "101" => --Call
					PC(SP) := PC(SP)+1;
					SP := SP + 1;
					PC(SP) := entrada;
				when "010" => --Ret
					SP := SP - 1;
				when others => --Nada
				
			end case;
		end if;
		salida <= PC(SP);
	end process;
	
end PILA_ARCH;

