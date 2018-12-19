library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE ieee.std_logic_textio.ALL;

entity ARCHIVO_REGISTROS is
		generic (TAM_REGISTRO : integer := 16;
					TAM_DIRECCION : integer := 4);
    Port ( write_register : in  STD_LOGIC_VECTOR (TAM_DIRECCION - 1 downto 0);
			  read_register_1 : in  STD_LOGIC_VECTOR (TAM_DIRECCION - 1 downto 0);
			  read_register_2 : in  STD_LOGIC_VECTOR (TAM_DIRECCION - 1 downto 0);
			  write_data : in  STD_LOGIC_VECTOR (TAM_REGISTRO - 1 downto 0);
           read_data_1 : out  STD_LOGIC_VECTOR (TAM_REGISTRO - 1 downto 0);
			  read_data_2 : out  STD_LOGIC_VECTOR (TAM_REGISTRO - 1 downto 0);
			  shamt : in STD_LOGIC_VECTOR (TAM_DIRECCION - 1 downto 0);
           wr : in  STD_LOGIC;
			  she : in  STD_LOGIC;
			  dir : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           clr : in  STD_LOGIC);
end ARCHIVO_REGISTROS;

architecture ARCHIVO_REGISTROS_ARCH of ARCHIVO_REGISTROS is

type arreglo is array(0 to TAM_REGISTRO - 1) of std_logic_vector(TAM_REGISTRO - 1 downto 0);
signal archivo_registros : arreglo;

begin

	process(clk, clr)
	begin
		if(clr = '1') then
			--RESET
			for i in 0 to TAM_REGISTRO - 1 loop
				archivo_registros(i) <= (others => '0');
			end loop;
		elsif(clk'event and clk = '1') then
			if(wr = '1') then
				if(she = '1') then
					if(dir = '1') then
						--CORRIMIENTO A LA IZQUIERDA
						archivo_registros(conv_integer(write_register)) <= to_stdlogicvector(to_bitvector(archivo_registros(conv_integer(read_register_1))) SLL conv_integer(shamt));
					else
						--CORRIMIENTO A LA DERECHA
						archivo_registros(conv_integer(write_register)) <= to_stdlogicvector(to_bitvector(archivo_registros(conv_integer(read_register_1))) SRL conv_integer(shamt));
					end if;
				else
					--ESCRITURA
					archivo_registros(conv_integer(write_register)) <= write_data;
				end if;
			end if;
		end if;
	end process;
	
	--LECTURA
	read_data_1 <= archivo_registros(conv_integer(read_register_1));
	read_data_2 <= archivo_registros(conv_integer(read_register_2));

end ARCHIVO_REGISTROS_ARCH;
