-- Rajdeep Dhaliwal 501180185
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY ASU IS
PORT(
Cin : IN  STD_LOGIC;                       
X, Y: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);  
S : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);  
Cout : OUT STD_LOGIC;                      
Overflow : OUT STD_LOGIC);                        
END ASU;

ARCHITECTURE Behavior OF ASU IS
	SIGNAL complementY : STD_LOGIC_VECTOR(16 DOWNTO 0);
	SIGNAL Sum : STD_LOGIC_VECTOR(16 DOWNTO 0);
BEGIN
	complementY <= ('0' & Y) XOR (16 DOWNTO 0 => Cin);
	Sum <= ('0' & X) + complementY + Cin;
	S <= Sum(15 DOWNTO 0);
	Cout <= Sum(16);
	Overflow <= Sum(16) XOR X(15) XOR complementY(15) XOR Sum(15);

END Behavior;
