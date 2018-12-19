library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CONTROL is
    Port ( tipo_r : in  STD_LOGIC;
           beq : in  STD_LOGIC;
           bneq : in  STD_LOGIC;
           blt : in  STD_LOGIC;
           ble : in  STD_LOGIC;
           bgt : in  STD_LOGIC;
           bget : in  STD_LOGIC;
           eq : in  STD_LOGIC;
           neq : in  STD_LOGIC;
           lt : in  STD_LOGIC;
           le : in  STD_LOGIC;
           gt : in  STD_LOGIC;
           get : in  STD_LOGIC;
           na : in  STD_LOGIC;
           sdopc : out  STD_LOGIC;
           sm : out  STD_LOGIC);
end CONTROL;

architecture CONTROL_ARCH of CONTROL is
	
begin

	--Proceso de descripción FSM
	process(tipo_r, beq, bneq, blt, ble, bgt,
			  bget, eq, neq, lt, le, gt, get, na)
	begin
		sdopc <= '0';
		sm    <= '0';
		case tipo_r is
			when '1' =>
				sm <= '0';
			when others =>
				case beq is
					when '1' =>
						case na is
							when '1' =>
								sdopc <= '0';
								sm    <= '1';
							when others =>
								if(eq = '1') then
									sdopc <= '1';
									sm    <= '1';
								else
									sdopc <= '0';
									sm    <= '1';
								end if;
						end case;
					when others =>
						case bneq is
							when '1' =>
								case na is
									when '1' =>
										sdopc <= '0';
										sm    <= '1';
									when others =>
										if(neq = '1') then
											sdopc <= '1';
											sm    <= '1';
										else
											sdopc <= '0';
											sm    <= '1';
										end if;
								end case;
							when others =>
								case blt is
									when '1' =>
										case na is
											when '1' =>
												sdopc <= '0';
												sm    <= '1';
											when others =>
												if(lt = '1') then
													sdopc <= '1';
													sm    <= '1';
												else
													sdopc <= '0';
													sm    <= '1';
												end if;
										end case;
									when others =>
										case ble is
											when '1' =>
												case na is
													when '1' =>
														sdopc <= '0';
														sm    <= '1';
													when others =>
														if(le = '1') then
															sdopc <= '1';
															sm    <= '1';
														else
															sdopc <= '0';
															sm    <= '1';
														end if;
												end case;
											when others =>
												case bgt is
													when '1' =>
														case na is
															when '1' =>
																sdopc <= '0';
																sm    <= '1';
															when others =>
																if(gt = '1') then
																	sdopc <= '1';
																	sm    <= '1';
																else
																	sdopc <= '0';
																	sm    <= '1';
																end if;
														end case;
													when others =>
														case bget is
															when '1' =>
																case na is
																	when '1' =>
																		sdopc <= '0';
																		sm    <= '1';
																	when others =>
																		if(get = '1') then
																			sdopc <= '1';
																			sm    <= '1';
																		else
																			sdopc <= '0';
																			sm    <= '1';
																		end if;
																end case;
															when others =>
																sdopc <= '1';
																sm    <= '1';
														end case;
												end case;
										end case;
								end case;
						end case;
				end case;
		end case;
	end process;

end CONTROL_ARCH;