
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ALU2 IS
	PORT(
		Clock : IN STD_LOGIC ;
		A , B : IN UNSIGNED(7 DOWNTO 0);
		Student_id: IN UNSIGNED(3 DOWNTO 0);
		OP: IN UNSIGNED(15 downto 0);
		Neg: OUT STD_LOGIC;
		R1: OUT UNSIGNED(3 DOWNTO 0);
		R2: OUT UNSIGNED(3 DOWNTO 0));
END ALU2;

ARCHITECTURE Behavior OF ALU2 IS
	SIGNAL Result : UNSIGNED(7 DOWNTO 0);
	SIGNAL Sum : UNSIGNED(8 DOWNTO 0);
	
	BEGIN
	PROCESS (Clock)
		BEGIN
		IF (rising_edge(Clock)) THEN
			CASE OP IS
				WHEN "0000000000000001" => --Funtion 1 - Decrement B by 9
					if (B < "00001001") then
						neg <= '1';
						Result <= B - "00001001";
					else
						neg <= '0';
						Result <= B - "00001001";
					end if;
				WHEN "0000000000000010"  => --Function 2 - Swap the lower and upper 4 bits of B
					neg <= '0';
					Result <= B(3 downto 0) & B(7 downto 4);
				WHEN "0000000000000100" => --Function 3 - Shift A to left by 2 bits, input bit = 0 (SHL)
					Result <= A sll 2;
				WHEN "0000000000001000" => --Function 4 - Produce the result of NANDing A and B
					neg <= '0';
					Result <= NOT(A AND B);
				WHEN "0000000000010000" => --Function 5 - Find the greater value of A and B and produce the results ( Max(A,B) )
					if (A > B) then
						Result <= A; 
					else
						Result <= B;
					end if;
				WHEN "0000000000100000" => --Function 6 - Invert the even bits of B
					neg <= '0';
					Result <= B XOR "10101010";
				WHEN "0000000001000000" => --Function 7 - Produce null on the output
					neg <= '0';
					Result <= (OTHERS => '0');
				WHEN "0000000010000000" => --Function 8 - Replace the upper four bits of B by upper four bits of A
					neg <= '0';
					Result <= A(3 downto 0) & A(7 downto 4);
				WHEN "0000000100000000" => --Function 9 - Show A on the output
					Result <= A;
				WHEN OTHERS => -- Don't care
				END CASE;
				END IF;
END PROCESS;
R1 <= Result(3 DOWNTO 0);
R2 <= Result(7 DOWNTO 4);
END Behavior;
