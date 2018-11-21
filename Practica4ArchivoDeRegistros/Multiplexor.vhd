library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexor is
	 Generic (n: integer := 16);
		PORT(
			data_0 : in STD_LOGIC_VECTOR (n-1 downto 0);
			data_1 : in STD_LOGIC_VECTOR (n-1 downto 0);
			data_2 : in STD_LOGIC_VECTOR (n-1 downto 0);
			data_3 : in STD_LOGIC_VECTOR (n-1 downto 0);
			data_4 : in STD_LOGIC_VECTOR (n-1 downto 0);
			data_5 : in STD_LOGIC_VECTOR (n-1 downto 0);
			data_6 : in STD_LOGIC_VECTOR (n-1 downto 0);
			data_7 : in STD_LOGIC_VECTOR (n-1 downto 0);
			data_8 : in STD_LOGIC_VECTOR (n-1 downto 0);
			data_9 : in STD_LOGIC_VECTOR (n-1 downto 0);
			data_10 : in STD_LOGIC_VECTOR (n-1 downto 0);
			data_11 : in STD_LOGIC_VECTOR (n-1 downto 0);
			data_12 : in STD_LOGIC_VECTOR (n-1 downto 0);
			data_13 : in STD_LOGIC_VECTOR (n-1 downto 0);
			data_14 : in STD_LOGIC_VECTOR (n-1 downto 0);
			data_15 : in STD_LOGIC_VECTOR (n-1 downto 0);
			readReg : in STD_LOGIC_VECTOR (3 downto 0);
			o_data : out STD_LOGIC_VECTOR (n-1 downto 0)
		);
end Multiplexor;

architecture Practica4 of Multiplexor is
begin
	process( readReg,data_0 ,data_1, data_2,
											  data_3 ,data_4, data_5,
											  data_6 ,data_7, data_8,
											  data_9 ,data_10,data_11,
											  data_12,data_13,data_14,
											  data_15
											  )
	begin
		case readReg is

			when "0000" => o_data <=  data_0;

			when "0001" => o_data <=  data_1;

			when "0010" => o_data <=  data_2;

			when "0011" => o_data <=  data_3;

			when "0100" => o_data <= data_4;

			when "0101" => o_data <= data_5;

			when "0110" => o_data <= data_6;

			when "0111" => o_data <= data_7;

			when "1000" => o_data <= data_8;

			when "1001" => o_data <= data_9;

			when "1010" => o_data <= data_10;

			when "1011" => o_data <= data_11;

			when "1100" => o_data <= data_12;

			when "1101" => o_data <= data_13;

			when "1110" => o_data <= data_14;

			when "1111" => o_data <= data_15;

			when others => o_data <= (others => '0');

		end case;
	end process;
end Practica4;
