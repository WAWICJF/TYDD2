library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity parteA is 
Port ( SW1 : in STD_LOGIC;
		 SW2 : in STD_LOGIC;
		 LED : out STD_LOGIC);
end parteA;
architecture Behavioral of parteA is
begin
LED <= not (SW1 and SW2);
end Behavioral; 
