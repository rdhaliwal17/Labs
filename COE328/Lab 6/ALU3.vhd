LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ALU3 IS
	PORT(
		Clock : IN STD_LOGIC ;
		A ,B : IN UNSIGNED(7 DOWNTO 0);
		Student_id: IN UNSIGNED(3 DOWNTO 0);
		OP: IN UNSIGNED(15 downto 0);
		Neg: OUT STD_LOGIC;
		R1: OUT UNSIGNED(3 DOWNTO 0);
		R2: OUT UNSIGNED(3 DOWNTO 0));
END ALU3;

ARCHITECTURE Behavior OF ALU3 IS
	SIGNAL Result: UNSIGNED(7 DOWNTO 0);
	SIGNAL Sum : UNSIGNED(8 DOWNTO 0);

	BEGIN
	PROCESS (Clock)
		BEGIN
		IF (rising_edge(Clock)) THEN
			CASE OP IS
				WHEN "0000000000000001" => --Funtion 1 - Addition
					Result <= B + A;
					if (A(7 downto 4) < Student_id) OR (A(3 downto 0) < Student_id) then
						neg <= '1';
					else
						neg <= '0';
					end if;
				WHEN "0000000000000010"  => --Function 2 - Subtraction
					if (A < B) then
						Result <= B - A;
					else
						Result <= A - B;
					end if;
					if (A(7 downto 4) < Student_id) OR (A(3 downto 0) < Student_id) then
						neg <= '1';
					else
						neg <= '0';
					end if;
				WHEN "0000000000000100" =>--Function 3 - Inverse
					neg <= '1';
					Result <= NOT(A);
					if (A(7 downto 4) < Student_id) OR (A(3 downto 0) < Student_id) then
						neg <= '1';
					else
						neg <= '0';
					end if;
				WHEN "0000000000001000" =>--Function 4 -NAND
					neg <= '1';
					Result <= NOT(A AND B);
					if (A(7 downto 4) < Student_id) OR (A(3 downto 0) < Student_id) then
						neg <= '1';
					else
						neg <= '0';
					end if;
				WHEN "0000000000010000" =>--Function 5 -NOR
					neg <= '1';
					Result <= NOT(A OR B);
					if (A(7 downto 4) < Student_id) OR (A(3 downto 0) < Student_id) then
						neg <= '1';
					else
						neg <= '0';
					end if;
				WHEN "0000000000100000" =>--Function 6 -AND
					neg <= '0';
					Result <= (A AND B);
					if (A(7 downto 4) < Student_id) OR (A(3 downto 0) < Student_id) then
						neg <= '1';
					else
						neg <= '0';
					end if;
				WHEN "0000000001000000" =>--Function 7 -XOR
					neg <= '0';
					Result <= (A XOR B);
					if (A(7 downto 4) < Student_id) OR (A(3 downto 0) < Student_id) then
						neg <= '1';
					else
						neg <= '0';
					end if;
				WHEN "0000000010000000" =>--Function 8 -OR
					neg <= '0';
					Result <= (A OR B);
					if (A(7 downto 4) < Student_id) OR (A(3 downto 0) < Student_id) then
						neg <= '1';
					else
						neg <= '0';
					end if;
				WHEN "0000000100000000" =>--Function 9 -XNOR
					neg <= '0';
					Result <= NOT(A XOR B);
					if (A(7 downto 4) < Student_id) OR (A(3 downto 0) < Student_id) then
						neg <= '1';
					else
						neg <= '0';
					end if;
				WHEN OTHERS =>-- Don't care
				END CASE;
				END IF;
END PROCESS;
R1 <= Result(3 DOWNTO 0);
R2 <= Result(7 DOWNTO 4);
END Behavior;
