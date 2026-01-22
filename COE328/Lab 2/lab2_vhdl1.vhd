LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab2_vhdl1 IS
PORT(
x1, x2, x3, x4 : IN STD_LOGIC;
f : OUT STD_LOGIC);
end lab2_vhdl1;

ARCHITECTURE Behavior OF lab2_vhdl1 IS
BEGIN
f <= not( 
		not((not x1 and not x2 and not x3 and not x4)) -- 0
		and not((not x1 and not x2 and not x3 and x4)) -- 1
		and not((not x1 and x2 and not x3 and x4)) -- 5
		and not((x1 and not x2 and not x3 and not x4)) --8
		and not((x1 and not x2 and x3 and not x4)) --10
		and not((x1 and x2 and not x3 and not x4)) --12
		and not((x1 and x2 and x3 and x4))); --15
END Behavior;
