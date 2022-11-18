library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity teatbencha is end teatbencha;
architecture comp of teatbencha is
    Component partea
    port
    (sw1,sw2 : in std_logic;
    led: out std_logic);
    end component;
    signal sw1 : std_logic:='0';
    signal sw2 : std_logic:='0';
    signal led : std_logic;
BEGIN
    uut : partea PORT MAP (
		sw1 => sw1,
		sw2 => sw2,
		led => led);
		est_proc: process
    begin
        sw1 <= '0'; sw2 <= '0'; wait for 10ns;
        sw1 <= '0'; sw2 <= '1'; wait for 10ns;
        sw1 <= '1'; sw2 <= '0'; wait for 10ns;
        sw1 <= '1'; sw2 <= '1'; wait for 10ns;
        wait;
    end process;
END;