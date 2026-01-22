LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY lab2_vhdl2 IS
PORT(
x1, x2, x3, x4 : IN STD_LOGIC;
f : OUT STD_LOGIC);
end lab2_vhdl2;

ARCHITECTURE Behavior OF lab2_vhdl2 IS
BEGIN
f <= not( not((not x1 and not x3 and x4)) -- t1
		and not((not x2 and not x3 and not x4)) -- t2
		and not((x1 and not x2 and not x4)) -- t3
		and not((x1 and not x3 and not x4)) -- t4
		and not((x1 and x2 and x3 and x4))); -- t5
END Behavior;
