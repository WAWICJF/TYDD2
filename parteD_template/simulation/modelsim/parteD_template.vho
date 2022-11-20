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

-- DATE "11/19/2022 20:56:05"

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

ENTITY 	ParteD_template IS
    PORT (
	clk : IN std_logic;
	inp : IN std_logic;
	reset : IN std_logic;
	outp : OUT std_logic_vector(3 DOWNTO 0)
	);
END ParteD_template;

-- Design Ports Information
-- outp[0]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[1]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[2]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outp[3]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ParteD_template IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_inp : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_outp : std_logic_vector(3 DOWNTO 0);
SIGNAL \inp~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \outp[0]~output_o\ : std_logic;
SIGNAL \outp[1]~output_o\ : std_logic;
SIGNAL \outp[2]~output_o\ : std_logic;
SIGNAL \outp[3]~output_o\ : std_logic;
SIGNAL \state.state_bit_1~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \state.state_bit_1~q\ : std_logic;
SIGNAL \state.state_bit_0~0_combout\ : std_logic;
SIGNAL \state.state_bit_0~q\ : std_logic;
SIGNAL \state.state_bit_2~0_combout\ : std_logic;
SIGNAL \state.state_bit_2~q\ : std_logic;
SIGNAL \state.s2~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \outp~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_outp~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_inp <= inp;
ww_reset <= reset;
outp <= ww_outp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_outp~0_combout\ <= NOT \outp~0_combout\;

-- Location: IOIBUF_X56_Y0_N22
\inp~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp,
	o => \inp~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOOBUF_X60_Y0_N9
\outp[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.s2~0_combout\,
	devoe => ww_devoe,
	o => \outp[0]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\outp[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr1~combout\,
	devoe => ww_devoe,
	o => \outp[1]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\outp[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.state_bit_0~q\,
	devoe => ww_devoe,
	o => \outp[2]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\outp[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_outp~0_combout\,
	devoe => ww_devoe,
	o => \outp[3]~output_o\);

-- Location: LCCOMB_X84_Y1_N28
\state.state_bit_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.state_bit_1~0_combout\ = (\state.state_bit_2~q\ & (((\state.state_bit_1~q\)))) # (!\state.state_bit_2~q\ & ((\inp~input_o\ & ((!\state.state_bit_1~q\))) # (!\inp~input_o\ & (\state.state_bit_0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp~input_o\,
	datab => \state.state_bit_0~q\,
	datac => \state.state_bit_1~q\,
	datad => \state.state_bit_2~q\,
	combout => \state.state_bit_1~0_combout\);

-- Location: IOIBUF_X94_Y0_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X84_Y1_N29
\state.state_bit_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.state_bit_1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.state_bit_1~q\);

-- Location: LCCOMB_X84_Y1_N2
\state.state_bit_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.state_bit_0~0_combout\ = (\state.state_bit_2~q\ & (((\state.state_bit_1~q\)))) # (!\state.state_bit_2~q\ & ((\inp~input_o\ & ((\state.state_bit_0~q\))) # (!\inp~input_o\ & (!\state.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp~input_o\,
	datab => \state.state_bit_1~q\,
	datac => \state.state_bit_0~q\,
	datad => \state.state_bit_2~q\,
	combout => \state.state_bit_0~0_combout\);

-- Location: FF_X84_Y1_N3
\state.state_bit_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.state_bit_0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.state_bit_0~q\);

-- Location: LCCOMB_X84_Y1_N18
\state.state_bit_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.state_bit_2~0_combout\ = (\state.state_bit_2~q\ & (((!\state.state_bit_0~q\)))) # (!\state.state_bit_2~q\ & (\inp~input_o\ & (\state.state_bit_0~q\ $ (!\state.state_bit_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp~input_o\,
	datab => \state.state_bit_0~q\,
	datac => \state.state_bit_2~q\,
	datad => \state.state_bit_1~q\,
	combout => \state.state_bit_2~0_combout\);

-- Location: FF_X84_Y1_N19
\state.state_bit_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \state.state_bit_2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.state_bit_2~q\);

-- Location: LCCOMB_X84_Y1_N12
\state.s2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.s2~0_combout\ = (!\state.state_bit_2~q\ & \state.state_bit_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.state_bit_2~q\,
	datad => \state.state_bit_1~q\,
	combout => \state.s2~0_combout\);

-- Location: LCCOMB_X84_Y1_N24
WideOr1 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\state.state_bit_2~q\ & ((!\state.state_bit_1~q\))) # (!\state.state_bit_2~q\ & (\state.state_bit_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.state_bit_0~q\,
	datac => \state.state_bit_2~q\,
	datad => \state.state_bit_1~q\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X84_Y1_N26
\outp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \outp~0_combout\ = (!\state.state_bit_1~q\ & ((!\state.state_bit_2~q\) # (!\state.state_bit_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.state_bit_0~q\,
	datac => \state.state_bit_2~q\,
	datad => \state.state_bit_1~q\,
	combout => \outp~0_combout\);

ww_outp(0) <= \outp[0]~output_o\;

ww_outp(1) <= \outp[1]~output_o\;

ww_outp(2) <= \outp[2]~output_o\;

ww_outp(3) <= \outp[3]~output_o\;
END structure;


