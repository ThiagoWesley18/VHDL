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

-- DATE "07/28/2021 16:43:54"

-- 
-- Device: Altera EP2C50F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	dmux1x4 IS
    PORT (
	d : IN std_logic;
	en : IN std_logic;
	s : IN std_logic_vector(1 DOWNTO 0);
	y0 : OUT std_logic;
	y1 : OUT std_logic;
	y2 : OUT std_logic;
	y3 : OUT std_logic
	);
END dmux1x4;

-- Design Ports Information
-- y0	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y1	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y2	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- y3	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s[0]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- en	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s[1]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF dmux1x4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_s : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_y0 : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL ww_y2 : std_logic;
SIGNAL ww_y3 : std_logic;
SIGNAL \en~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \d~combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \en~combout\ : std_logic;
SIGNAL \en~clkctrl_outclk\ : std_logic;
SIGNAL \y0$latch~combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \y0_69~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \y1$latch~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \y1_56~combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \y2_43~combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \y3_30~combout\ : std_logic;
SIGNAL \s~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_d <= d;
ww_en <= en;
ww_s <= s;
y0 <= ww_y0;
y1 <= ww_y1;
y2 <= ww_y2;
y3 <= ww_y3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\en~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \en~combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s(0),
	combout => \s~combout\(0));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_d,
	combout => \d~combout\);

-- Location: LCCOMB_X79_Y11_N16
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\s~combout\(0) & \d~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s~combout\(0),
	datad => \d~combout\,
	combout => \Mux6~0_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\en~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_en,
	combout => \en~combout\);

-- Location: CLKCTRL_G6
\en~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \en~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \en~clkctrl_outclk\);

-- Location: LCCOMB_X79_Y11_N12
\y0$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \y0$latch~combout\ = (GLOBAL(\en~clkctrl_outclk\) & ((\Mux6~0_combout\))) # (!GLOBAL(\en~clkctrl_outclk\) & (\y0$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y0$latch~combout\,
	datac => \Mux6~0_combout\,
	datad => \en~clkctrl_outclk\,
	combout => \y0$latch~combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\s[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_s(1),
	combout => \s~combout\(1));

-- Location: LCCOMB_X79_Y11_N18
\Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\s~combout\(0)) # (\s~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s~combout\(0),
	datad => \s~combout\(1),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X79_Y11_N22
y0_69 : cycloneii_lcell_comb
-- Equation(s):
-- \y0_69~combout\ = (GLOBAL(\en~clkctrl_outclk\) & (!\Mux7~0_combout\)) # (!GLOBAL(\en~clkctrl_outclk\) & ((\y0_69~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~0_combout\,
	datac => \en~clkctrl_outclk\,
	datad => \y0_69~combout\,
	combout => \y0_69~combout\);

-- Location: LCCOMB_X79_Y11_N20
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\s~combout\(0) & \d~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s~combout\(0),
	datad => \d~combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X79_Y11_N24
\y1$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \y1$latch~combout\ = (GLOBAL(\en~clkctrl_outclk\) & (\Mux4~0_combout\)) # (!GLOBAL(\en~clkctrl_outclk\) & ((\y1$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datac => \y1$latch~combout\,
	datad => \en~clkctrl_outclk\,
	combout => \y1$latch~combout\);

-- Location: LCCOMB_X79_Y11_N30
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\s~combout\(0) & !\s~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s~combout\(0),
	datad => \s~combout\(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X79_Y11_N10
y1_56 : cycloneii_lcell_comb
-- Equation(s):
-- \y1_56~combout\ = (GLOBAL(\en~clkctrl_outclk\) & (\Mux3~0_combout\)) # (!GLOBAL(\en~clkctrl_outclk\) & ((\y1_56~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datac => \en~clkctrl_outclk\,
	datad => \y1_56~combout\,
	combout => \y1_56~combout\);

-- Location: LCCOMB_X79_Y11_N8
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\s~combout\(0) & \s~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s~combout\(0),
	datad => \s~combout\(1),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X79_Y11_N28
y2_43 : cycloneii_lcell_comb
-- Equation(s):
-- \y2_43~combout\ = (GLOBAL(\en~clkctrl_outclk\) & (\Mux3~1_combout\)) # (!GLOBAL(\en~clkctrl_outclk\) & ((\y2_43~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~1_combout\,
	datac => \y2_43~combout\,
	datad => \en~clkctrl_outclk\,
	combout => \y2_43~combout\);

-- Location: LCCOMB_X79_Y11_N26
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\s~combout\(0) & \s~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s~combout\(0),
	datad => \s~combout\(1),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X79_Y11_N14
y3_30 : cycloneii_lcell_comb
-- Equation(s):
-- \y3_30~combout\ = (GLOBAL(\en~clkctrl_outclk\) & (\Mux3~2_combout\)) # (!GLOBAL(\en~clkctrl_outclk\) & ((\y3_30~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~2_combout\,
	datac => \y3_30~combout\,
	datad => \en~clkctrl_outclk\,
	combout => \y3_30~combout\);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y0~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \y0$latch~combout\,
	oe => \y0_69~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_y0);

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y1~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \y1$latch~combout\,
	oe => \y1_56~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_y1);

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y2~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \y0$latch~combout\,
	oe => \y2_43~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_y2);

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\y3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \y1$latch~combout\,
	oe => \y3_30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_y3);
END structure;


