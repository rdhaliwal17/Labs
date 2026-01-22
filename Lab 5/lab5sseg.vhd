-- Rajdeep Dhaliwal 501180185
LIBRARY ieee;
USE ieee.std_logic_1164.all ;

ENTITY lab5sseg IS
PORT( 
bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
Sign2: IN STD_LOGIC;
leds1: OUT STD_LOGIC_VECTOR(0 to 6);
leds2: OUT STD_LOGIC_VECTOR(0 to 6));
END lab5sseg ;

ARCHITECTURE Behavior OF lab5sseg IS
BEGIN
	PROCESS ( bcd )
		BEGIN
			CASE bcd IS             -- abcdefg
				WHEN "0000" => leds1 <= "0000001";  -- 0
            WHEN "0001" => leds1 <= "0110000";  -- 1
            WHEN "0010" => leds1 <= "1101101";  -- 2
            WHEN "0011" => leds1 <= "1111001";  -- 3
            WHEN "0100" => leds1 <= "0110011";  -- 4
            WHEN "0101" => leds1 <= "1011011";  -- 5
            WHEN "0110" => leds1 <= "1011111";  -- 6
            WHEN "0111" => leds1 <= "1110000";  -- 7
            WHEN "1000" => leds1 <= "1111111";  -- 8
            WHEN "1001" => leds1 <= "1110011";  -- 9
            WHEN "1010" => leds1 <= "1110111";  -- A
            WHEN "1011" => leds1 <= "0011111";  -- B
            WHEN "1100" => leds1 <= "1001110";  -- C
            WHEN "1101" => leds1 <= "0111101";  -- D
            WHEN "1110" => leds1 <= "1001111";  -- E
            WHEN "1111" => leds1 <= "1000111";  -- F
				WHEN OTHERS => leds1 <= "1111110";
		END CASE;
	END PROCESS;
	
	PROCESS ( Sign2 )
		BEGIN
			CASE Sign2 IS
				WHEN '0' => leds2 <= "0000000";
				WHEN '1' => leds2 <= "0000001";
		END CASE;
	END PROCESS;
END Behavior;