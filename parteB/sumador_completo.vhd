library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY sumador_completo is 
port (
		 in_a	 :	in STD_LOGIC;
		 in_b	 : in STD_LOGIC;
		 in_cin: in STD_LOGIC;
		 clk	 : in STD_LOGIC;
		 o_f   : out STD_LOGIC;
		 o_cout: out STD_LOGIC);
end sumador_completo;
architecture Behavioral of sumador_completo is 
component D_FF
	
	port (D, CLOCK: in std_logic;
			Q: out std_logic);
end component;

signal a,b,cin,cout,f:std_logic;
begin
f <= a xor b xor cin;
cout <= (a and b) or (cin and (a xor b));

D1: D_FF port map (in_a,clk,a);
D2: D_FF port map (in_b, clk,b);
D3: D_FF port map (in_cin,clk,cin);
D4: D_FF port map (cout,clk,o_cout);
D5: D_FF port map (f,clk,o_f);
end Behavioral;