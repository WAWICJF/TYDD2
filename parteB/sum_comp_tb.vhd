LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sum_comp_tb is
 end sum_comp_tb;

architecture comport of sum_comp_tb is 

	component sumador_completo 
	port (
		in_a , in_b , in_cin , clk : in std_logic;
		o_f, o_cout : out std_logic);
	end component;
	
	signal in_a : std_logic := '0';
	signal in_b : std_logic := '0';
	signal in_cin : std_logic := '0';
	signal clk : std_logic := '0';
	signal o_f : std_logic;
	signal o_cout : std_logic;
	constant periodo : time:= 20ns;

BEGIN
	uut : sumador_completo port map (
	in_a => in_a,
	in_b => in_b,
	in_cin => in_cin,
	clk => clk, 
	o_f => o_f,
	o_cout => o_cout
	);
	
	process 
		begin
			clk <= '0';
			wait for periodo/2;
			clk <= '1';
			wait for periodo/2;
	end process;
	
	process
		begin
			in_a <= '0'; in_b <= '0'; in_cin <= '0'; wait for 30ns;
			in_a <= '0'; in_b <= '0'; in_cin <= '1'; wait for 30ns;
			in_a <= '0'; in_b <= '1'; in_cin <= '0'; wait for 30ns;
			in_a <= '0'; in_b <= '1'; in_cin <= '1'; wait for 30ns;
			in_a <= '1'; in_b <= '0'; in_cin <= '0'; wait for 30ns;
			in_a <= '1'; in_b <= '0'; in_cin <= '1'; wait for 30ns;
			in_a <= '1'; in_b <= '1'; in_cin <= '0'; wait for 30ns;
			in_a <= '1'; in_b <= '1'; in_cin <= '1'; wait for 30ns;
			wait;
	end process;
END;