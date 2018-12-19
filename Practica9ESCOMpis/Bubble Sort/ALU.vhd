library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
		generic (N: integer := 16);
    Port ( a : in  STD_LOGIC_VECTOR ((N-1) downto 0);
           b : in  STD_LOGIC_VECTOR ((N-1) downto 0);
           ainvert : in  STD_LOGIC;
           binvert : in  STD_LOGIC;
           op : in  STD_LOGIC_VECTOR (1 downto 0);
           res : inout  STD_LOGIC_VECTOR ((N-1) downto 0);
			  Zban : out  STD_LOGIC;
			  Nban : out  STD_LOGIC;
			  Cban : out  STD_LOGIC;
			  OVban : out  STD_LOGIC);
end ALU;

architecture ALU_ARCH of ALU is
begin
	process(a, b, op, ainvert, binvert, res)
		variable EB: STD_LOGIC_VECTOR((N-1) downto 0);
		variable P : STD_LOGIC_VECTOR((N-1) downto 0);
		variable G : STD_LOGIC_VECTOR((N-1) downto 0);
		variable C : STD_LOGIC_VECTOR(N downto 0);
		variable amux: STD_LOGIC_VECTOR((N-1) downto 0);
		variable bmux: STD_LOGIC_VECTOR((N-1) downto 0);
		variable Zbanaux: STD_LOGIC;
	begin
		C := (others => '0');
		for i in 0 to (N-1) loop
			amux(i) := a(i) xor ainvert;
			bmux(i) := b(i) xor binvert;
			case op is
				when "00" =>
					res(i) <= amux(i) and bmux(i);
				when "01" =>
					res(i) <= amux(i) or bmux(i);
				when "10" =>
					res(i) <= amux(i) xor bmux(i);
				when others =>
					C(0) := binvert;
					for j in 0 to (N-1) loop
						EB(j) := b(j) xor binvert;
						P(j)  := a(j) xor EB(j);
						G(j)  := a(j) and EB(j);
						res(j)  <= P(j) xor C(j);
						C(j+1):= (C(j) and P(j)) or G(j);
					end loop;
			end case;
		end loop;
		Cban <= C(N);
		Nban <= res(N-1);
		OVban <= C(N) xor C(N-1);
		Zbanaux := res(0);
		for i in 1 to (N-1) loop
			Zbanaux := Zbanaux or res(i);
		end loop;
		Zban <= not Zbanaux;
	end process;
end ALU_ARCH;
