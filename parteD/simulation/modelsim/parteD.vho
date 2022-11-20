-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/19/2022 20:52:03"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	parteD IS
    PORT (
	reset : IN std_logic;
	clock : IN std_logic;
	x : IN std_logic;
	z : OUT std_logic
	);
END parteD;

-- Design Ports Information
-- z	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF parteD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \z~output_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \fstate.state_bit_0~0_combout\ : std_logic;
SIGNAL \fstate.state_bit_0~q\ : std_logic;
SIGNAL \fstate.state_bit_1~0_combout\ : std_logic;
SIGNAL \fstate.state_bit_1~q\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \z~0_combout\ : std_logic;

BEGIN

ww_reset <= reset;
ww_clock <= clock;
ww_x <= x;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOOBUF_X0_Y16_N23
\z~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z~0_combout\,
	devoe => ww_devoe,
	o => \z~output_o\);

-- Location: IOIBUF_X0_Y16_N15
\x~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: LCCOMB_X1_Y16_N20
\fstate.state_bit_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_0~0_combout\ = (!\reset~input_o\ & (\fstate.state_bit_1~q\ $ (((!\fstate.state_bit_0~q\) # (!\x~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \x~input_o\,
	datac => \fstate.state_bit_0~q\,
	datad => \fstate.state_bit_1~q\,
	combout => \fstate.state_bit_0~0_combout\);

-- Location: FF_X1_Y16_N21
\fstate.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fstate.state_bit_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state_bit_0~q\);

-- Location: LCCOMB_X1_Y16_N2
\fstate.state_bit_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fstate.state_bit_1~0_combout\ = (!\reset~input_o\ & ((\x~input_o\ & (!\fstate.state_bit_1~q\ & !\fstate.state_bit_0~q\)) # (!\x~input_o\ & (\fstate.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \x~input_o\,
	datac => \fstate.state_bit_1~q\,
	datad => \fstate.state_bit_0~q\,
	combout => \fstate.state_bit_1~0_combout\);

-- Location: FF_X1_Y16_N3
\fstate.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \fstate.state_bit_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fstate.state_bit_1~q\);

-- Location: IOIBUF_X0_Y15_N15
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X1_Y16_N12
\z~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \z~0_combout\ = (!\reset~input_o\ & (\x~input_o\ $ (((\fstate.state_bit_1~q\ & \fstate.state_bit_0~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fstate.state_bit_1~q\,
	datab => \fstate.state_bit_0~q\,
	datac => \reset~input_o\,
	datad => \x~input_o\,
	combout => \z~0_combout\);

ww_z <= \z~output_o\;
END structure;


