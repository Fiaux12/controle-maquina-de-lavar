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

-- DATE "01/19/2025 21:10:34"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	temporizador IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	modo_lav : IN std_logic_vector(3 DOWNTO 0);
	vol_agua : IN std_logic_vector(3 DOWNTO 0);
	timeout : OUT std_logic;
	counter_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END temporizador;

-- Design Ports Information
-- modo_lav[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- modo_lav[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- modo_lav[2]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- modo_lav[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- timeout	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- counter_out[0]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- counter_out[1]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- counter_out[2]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- counter_out[3]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vol_agua[1]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vol_agua[2]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vol_agua[0]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vol_agua[3]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF temporizador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_modo_lav : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vol_agua : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_timeout : std_logic;
SIGNAL ww_counter_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \counter[30]~0_combout\ : std_logic;
SIGNAL \Selector68~2_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \Selector35~3_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \counter_out[0]~0_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~59\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector68~1_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \Selector68~3_combout\ : std_logic;
SIGNAL \counter[30]~2_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \counter[30]~3_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \counter[30]~1_combout\ : std_logic;
SIGNAL \counter[30]~4_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \Selector35~2_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \Selector35~4_combout\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Selector68~4_combout\ : std_logic;
SIGNAL \Selector68~5_combout\ : std_logic;
SIGNAL \Selector68~6_combout\ : std_logic;
SIGNAL \counter[30]~5_combout\ : std_logic;
SIGNAL \counter[30]~6_combout\ : std_logic;
SIGNAL \counter[30]~7_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \Selector66~1_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \Selector36~2_combout\ : std_logic;
SIGNAL \timeout~reg0_regout\ : std_logic;
SIGNAL \counter_out[0]~4_combout\ : std_logic;
SIGNAL \counter_out[0]~1_combout\ : std_logic;
SIGNAL \counter_out[0]~2_combout\ : std_logic;
SIGNAL \counter_out[0]~3_combout\ : std_logic;
SIGNAL \counter_out[0]~reg0_regout\ : std_logic;
SIGNAL \counter_out[1]~reg0_regout\ : std_logic;
SIGNAL \counter_out[2]~reg0_regout\ : std_logic;
SIGNAL \counter_out[3]~reg0_regout\ : std_logic;
SIGNAL tempo_limite_enchendo : std_logic_vector(31 DOWNTO 0);
SIGNAL state : std_logic_vector(31 DOWNTO 0);
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \vol_agua~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_enable <= enable;
ww_modo_lav <= modo_lav;
ww_vol_agua <= vol_agua;
timeout <= ww_timeout;
counter_out <= ww_counter_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

-- Location: LCCOMB_X47_Y32_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = counter(0) $ (GND)
-- \Add0~1\ = CARRY(!counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X47_Y32_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (counter(1) & (!\Add0~1\)) # (!counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X47_Y32_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (counter(4) & (\Add0~7\ $ (GND))) # (!counter(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X47_Y32_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (counter(5) & (!\Add0~9\)) # (!counter(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X47_Y31_N6
\Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (counter(19) & (!\Add0~37\)) # (!counter(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X47_Y31_N8
\Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (counter(20) & (\Add0~39\ $ (GND))) # (!counter(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((counter(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X47_Y31_N26
\Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (counter(29) & (!\Add0~57\)) # (!counter(29) & ((\Add0~57\) # (GND)))
-- \Add0~59\ = CARRY((!\Add0~57\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datad => VCC,
	cin => \Add0~57\,
	combout => \Add0~58_combout\,
	cout => \Add0~59\);

-- Location: LCFF_X50_Y32_N17
\counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector16~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LCCOMB_X50_Y32_N20
\counter[30]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[30]~0_combout\ = (!counter(18) & (!counter(16) & (!counter(19) & !counter(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(16),
	datac => counter(19),
	datad => counter(17),
	combout => \counter[30]~0_combout\);

-- Location: LCFF_X46_Y32_N21
\counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(29));

-- Location: LCFF_X46_Y32_N17
\counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector15~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(20));

-- Location: LCCOMB_X46_Y32_N22
\Selector68~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector68~2_combout\ = (!counter(20) & (!counter(22) & !counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datac => counter(22),
	datad => counter(21),
	combout => \Selector68~2_combout\);

-- Location: LCCOMB_X47_Y35_N2
\comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (!\vol_agua~combout\(2) & (!\vol_agua~combout\(0) & (\vol_agua~combout\(3) & !\vol_agua~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vol_agua~combout\(2),
	datab => \vol_agua~combout\(0),
	datac => \vol_agua~combout\(3),
	datad => \vol_agua~combout\(1),
	combout => \comb~1_combout\);

-- Location: LCCOMB_X51_Y32_N24
\Selector35~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector35~3_combout\ = state(2) $ (((state(0)) # (state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(0),
	datac => state(2),
	datad => state(1),
	combout => \Selector35~3_combout\);

-- Location: LCCOMB_X50_Y32_N16
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\counter[30]~7_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter[30]~7_combout\,
	datad => \Add0~38_combout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X46_Y32_N20
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\counter[30]~7_combout\ & \Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[30]~7_combout\,
	datad => \Add0~58_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X46_Y32_N16
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\Add0~40_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~40_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X48_Y35_N6
\tempo_limite_enchendo[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- tempo_limite_enchendo(1) = (!\comb~1_combout\ & ((\comb~0_combout\) # (tempo_limite_enchendo(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~1_combout\,
	datab => \comb~0_combout\,
	datad => tempo_limite_enchendo(1),
	combout => tempo_limite_enchendo(1));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vol_agua[2]~I\ : cycloneii_io
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
	padio => ww_vol_agua(2),
	combout => \vol_agua~combout\(2));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: LCCOMB_X46_Y32_N6
\Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\Add0~8_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector31~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y32_N12
\counter_out[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_out[0]~0_combout\ = (\enable~combout\ & (((!state(0) & !state(1))) # (!state(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datab => state(2),
	datac => state(0),
	datad => state(1),
	combout => \counter_out[0]~0_combout\);

-- Location: LCFF_X46_Y32_N7
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector31~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X47_Y32_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (counter(3) & (!\Add0~5\)) # (!counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X47_Y32_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (counter(6) & (\Add0~11\ $ (GND))) # (!counter(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((counter(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X47_Y32_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (counter(7) & (!\Add0~13\)) # (!counter(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X46_Y32_N4
\Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\Add0~14_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~14_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector28~0_combout\);

-- Location: LCFF_X46_Y32_N5
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector28~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCCOMB_X47_Y32_N16
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (counter(8) & (\Add0~15\ $ (GND))) # (!counter(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((counter(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X50_Y32_N4
\Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\Add0~16_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~16_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector27~0_combout\);

-- Location: LCFF_X50_Y32_N5
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector27~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCCOMB_X47_Y32_N18
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (counter(9) & (!\Add0~17\)) # (!counter(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X50_Y32_N30
\Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\Add0~18_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~18_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector26~0_combout\);

-- Location: LCFF_X50_Y32_N31
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector26~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCCOMB_X47_Y32_N20
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (counter(10) & (\Add0~19\ $ (GND))) # (!counter(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((counter(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X50_Y32_N28
\Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\Add0~20_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector25~0_combout\);

-- Location: LCFF_X50_Y32_N29
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector25~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: LCCOMB_X47_Y32_N22
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (counter(11) & (!\Add0~21\)) # (!counter(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X50_Y32_N6
\Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\counter[30]~7_combout\ & \Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter[30]~7_combout\,
	datad => \Add0~22_combout\,
	combout => \Selector24~0_combout\);

-- Location: LCFF_X50_Y32_N7
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector24~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCCOMB_X47_Y32_N24
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (counter(12) & (\Add0~23\ $ (GND))) # (!counter(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((counter(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X48_Y32_N28
\Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\Add0~24_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~24_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector23~0_combout\);

-- Location: LCFF_X48_Y32_N29
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector23~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCCOMB_X47_Y32_N26
\Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (counter(13) & (!\Add0~25\)) # (!counter(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X47_Y32_N28
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (counter(14) & (\Add0~27\ $ (GND))) # (!counter(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((counter(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X48_Y32_N0
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (!\counter[30]~7_combout\ & \Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter[30]~7_combout\,
	datad => \Add0~28_combout\,
	combout => \Selector21~0_combout\);

-- Location: LCFF_X48_Y32_N1
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector21~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCCOMB_X47_Y32_N30
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (counter(15) & (!\Add0~29\)) # (!counter(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X48_Y32_N10
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Add0~30_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~30_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector20~0_combout\);

-- Location: LCFF_X48_Y32_N11
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector20~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCCOMB_X47_Y31_N0
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (counter(16) & (\Add0~31\ $ (GND))) # (!counter(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((counter(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X50_Y32_N22
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\Add0~32_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector19~0_combout\);

-- Location: LCFF_X50_Y32_N23
\counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector19~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

-- Location: LCCOMB_X47_Y31_N2
\Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (counter(17) & (!\Add0~33\)) # (!counter(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X50_Y32_N0
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (!\counter[30]~7_combout\ & \Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter[30]~7_combout\,
	datad => \Add0~34_combout\,
	combout => \Selector18~0_combout\);

-- Location: LCFF_X50_Y32_N1
\counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector18~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LCCOMB_X47_Y31_N4
\Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (counter(18) & (\Add0~35\ $ (GND))) # (!counter(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((counter(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X50_Y32_N10
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\counter[30]~7_combout\ & \Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter[30]~7_combout\,
	datad => \Add0~36_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCFF_X50_Y32_N11
\counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector17~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: LCCOMB_X47_Y31_N10
\Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (counter(21) & (!\Add0~41\)) # (!counter(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X46_Y32_N10
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (!\counter[30]~7_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[30]~7_combout\,
	datad => \Add0~42_combout\,
	combout => \Selector14~0_combout\);

-- Location: LCFF_X46_Y32_N11
\counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector14~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(21));

-- Location: LCCOMB_X47_Y31_N12
\Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (counter(22) & (\Add0~43\ $ (GND))) # (!counter(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((counter(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X46_Y32_N24
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\Add0~44_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~44_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCFF_X46_Y32_N25
\counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector13~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(22));

-- Location: LCCOMB_X47_Y31_N14
\Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (counter(23) & (!\Add0~45\)) # (!counter(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X48_Y32_N8
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (!\counter[30]~7_combout\ & \Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[30]~7_combout\,
	datad => \Add0~46_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCFF_X48_Y32_N9
\counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector12~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(23));

-- Location: LCCOMB_X47_Y31_N16
\Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (counter(24) & (\Add0~47\ $ (GND))) # (!counter(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((counter(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X47_Y31_N18
\Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (counter(25) & (!\Add0~49\)) # (!counter(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X48_Y32_N16
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\counter[30]~7_combout\ & \Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[30]~7_combout\,
	datad => \Add0~50_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCFF_X48_Y32_N17
\counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector10~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(25));

-- Location: LCCOMB_X47_Y31_N20
\Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (counter(26) & (\Add0~51\ $ (GND))) # (!counter(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((counter(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: LCCOMB_X48_Y32_N26
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\counter[30]~7_combout\ & \Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[30]~7_combout\,
	datad => \Add0~52_combout\,
	combout => \Selector9~0_combout\);

-- Location: LCFF_X48_Y32_N27
\counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector9~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(26));

-- Location: LCCOMB_X47_Y31_N22
\Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (counter(27) & (!\Add0~53\)) # (!counter(27) & ((\Add0~53\) # (GND)))
-- \Add0~55\ = CARRY((!\Add0~53\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datad => VCC,
	cin => \Add0~53\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X47_Y31_N24
\Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (counter(28) & (\Add0~55\ $ (GND))) # (!counter(28) & (!\Add0~55\ & VCC))
-- \Add0~57\ = CARRY((counter(28) & !\Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~56_combout\,
	cout => \Add0~57\);

-- Location: LCCOMB_X47_Y31_N28
\Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (counter(30) & (\Add0~59\ $ (GND))) # (!counter(30) & (!\Add0~59\ & VCC))
-- \Add0~61\ = CARRY((counter(30) & !\Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \Add0~59\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X46_Y32_N14
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Add0~60_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~60_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X46_Y32_N15
\counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(30));

-- Location: LCCOMB_X47_Y31_N30
\Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \Add0~61\ $ (counter(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(31),
	cin => \Add0~61\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X48_Y31_N0
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Add0~62_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~62_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X48_Y31_N1
\counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(31));

-- Location: LCCOMB_X48_Y32_N22
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (!\counter[30]~7_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter[30]~7_combout\,
	datad => \Add0~48_combout\,
	combout => \Selector11~0_combout\);

-- Location: LCFF_X48_Y32_N23
\counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector11~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(24));

-- Location: LCCOMB_X48_Y32_N18
\Selector68~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector68~1_combout\ = (!counter(25) & (!counter(26) & (!counter(23) & !counter(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(25),
	datab => counter(26),
	datac => counter(23),
	datad => counter(24),
	combout => \Selector68~1_combout\);

-- Location: LCCOMB_X46_Y32_N18
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Add0~56_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~56_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCFF_X46_Y32_N19
\counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(28));

-- Location: LCCOMB_X46_Y32_N28
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Add0~54_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~54_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCFF_X46_Y32_N29
\counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector8~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(27));

-- Location: LCCOMB_X46_Y32_N26
\Selector68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (!counter(29) & (!counter(28) & (!counter(30) & !counter(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datab => counter(28),
	datac => counter(30),
	datad => counter(27),
	combout => \Selector68~0_combout\);

-- Location: LCCOMB_X49_Y32_N16
\Selector68~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector68~3_combout\ = (\Selector68~2_combout\ & (\Selector68~1_combout\ & \Selector68~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector68~2_combout\,
	datab => \Selector68~1_combout\,
	datad => \Selector68~0_combout\,
	combout => \Selector68~3_combout\);

-- Location: LCCOMB_X50_Y32_N18
\counter[30]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[30]~2_combout\ = (!counter(11) & (!counter(10) & (!counter(8) & !counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => counter(10),
	datac => counter(8),
	datad => counter(9),
	combout => \counter[30]~2_combout\);

-- Location: LCCOMB_X46_Y32_N30
\Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\Add0~12_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector29~0_combout\);

-- Location: LCFF_X46_Y32_N31
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector29~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCCOMB_X46_Y32_N12
\Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\Add0~10_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector30~0_combout\);

-- Location: LCFF_X46_Y32_N13
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector30~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: LCCOMB_X46_Y32_N8
\counter[30]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[30]~3_combout\ = (!counter(4) & (!counter(6) & (!counter(7) & !counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(6),
	datac => counter(7),
	datad => counter(5),
	combout => \counter[30]~3_combout\);

-- Location: LCCOMB_X48_Y32_N2
\Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\counter[30]~7_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter[30]~7_combout\,
	datad => \Add0~26_combout\,
	combout => \Selector22~0_combout\);

-- Location: LCFF_X48_Y32_N3
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector22~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCCOMB_X49_Y32_N28
\counter[30]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[30]~1_combout\ = (!counter(15) & (!counter(12) & (!counter(14) & !counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => counter(12),
	datac => counter(14),
	datad => counter(13),
	combout => \counter[30]~1_combout\);

-- Location: LCCOMB_X50_Y32_N24
\counter[30]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[30]~4_combout\ = (\counter[30]~0_combout\ & (\counter[30]~2_combout\ & (\counter[30]~3_combout\ & \counter[30]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[30]~0_combout\,
	datab => \counter[30]~2_combout\,
	datac => \counter[30]~3_combout\,
	datad => \counter[30]~1_combout\,
	combout => \counter[30]~4_combout\);

-- Location: LCCOMB_X50_Y32_N8
\LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (counter(2)) # ((counter(3)) # (!\counter[30]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datac => \counter[30]~4_combout\,
	datad => counter(3),
	combout => \LessThan1~0_combout\);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vol_agua[0]~I\ : cycloneii_io
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
	padio => ww_vol_agua(0),
	combout => \vol_agua~combout\(0));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vol_agua[3]~I\ : cycloneii_io
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
	padio => ww_vol_agua(3),
	combout => \vol_agua~combout\(3));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\vol_agua[1]~I\ : cycloneii_io
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
	padio => ww_vol_agua(1),
	combout => \vol_agua~combout\(1));

-- Location: LCCOMB_X47_Y35_N16
\comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\vol_agua~combout\(3) & ((\vol_agua~combout\(2) & (!\vol_agua~combout\(0) & !\vol_agua~combout\(1))) # (!\vol_agua~combout\(2) & (\vol_agua~combout\(0) $ (\vol_agua~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vol_agua~combout\(2),
	datab => \vol_agua~combout\(0),
	datac => \vol_agua~combout\(3),
	datad => \vol_agua~combout\(1),
	combout => \comb~0_combout\);

-- Location: LCCOMB_X48_Y35_N0
\tempo_limite_enchendo[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- tempo_limite_enchendo(2) = (!\comb~0_combout\ & ((\comb~1_combout\) # (tempo_limite_enchendo(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~1_combout\,
	datab => \comb~0_combout\,
	datad => tempo_limite_enchendo(2),
	combout => tempo_limite_enchendo(2));

-- Location: LCCOMB_X47_Y35_N0
\comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\vol_agua~combout\(2) & ((\vol_agua~combout\(0) & (!\vol_agua~combout\(3) & !\vol_agua~combout\(1))) # (!\vol_agua~combout\(0) & (\vol_agua~combout\(3) $ (\vol_agua~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vol_agua~combout\(2),
	datab => \vol_agua~combout\(0),
	datac => \vol_agua~combout\(3),
	datad => \vol_agua~combout\(1),
	combout => \comb~2_combout\);

-- Location: LCCOMB_X47_Y35_N14
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ((\vol_agua~combout\(0)) # ((\vol_agua~combout\(3)) # (\vol_agua~combout\(1)))) # (!\vol_agua~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vol_agua~combout\(2),
	datab => \vol_agua~combout\(0),
	datac => \vol_agua~combout\(3),
	datad => \vol_agua~combout\(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X47_Y35_N12
\tempo_limite_enchendo[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- tempo_limite_enchendo(0) = (!\comb~2_combout\ & ((tempo_limite_enchendo(0)) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~2_combout\,
	datac => \Equal2~0_combout\,
	datad => tempo_limite_enchendo(0),
	combout => tempo_limite_enchendo(0));

-- Location: LCCOMB_X51_Y32_N10
\Selector66~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (!state(0) & !state(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => state(0),
	datad => state(1),
	combout => \Selector66~0_combout\);

-- Location: LCCOMB_X48_Y32_N4
\Selector35~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector35~2_combout\ = (state(2) & ((\Selector66~0_combout\ & (\Add0~0_combout\)) # (!\Selector66~0_combout\ & ((!counter(0)))))) # (!state(2) & (\Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => state(2),
	datac => counter(0),
	datad => \Selector66~0_combout\,
	combout => \Selector35~2_combout\);

-- Location: LCCOMB_X50_Y32_N26
\Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (!state(2) & (!counter(31) & (!state(0) & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => counter(31),
	datac => state(0),
	datad => state(1),
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X49_Y32_N4
\Selector35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = (\Selector35~0_combout\ & ((\LessThan0~2_combout\) # (!\Selector68~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector68~3_combout\,
	datab => \Selector35~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Selector35~1_combout\);

-- Location: LCCOMB_X48_Y32_N14
\Selector35~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector35~4_combout\ = (!\Selector35~2_combout\ & (!\Selector35~1_combout\ & ((!\LessThan1~2_combout\) # (!\Selector35~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~3_combout\,
	datab => \Selector35~2_combout\,
	datac => \LessThan1~2_combout\,
	datad => \Selector35~1_combout\,
	combout => \Selector35~4_combout\);

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable~I\ : cycloneii_io
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
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: LCFF_X48_Y32_N15
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector35~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X48_Y32_N12
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (tempo_limite_enchendo(1) & ((tempo_limite_enchendo(0)) # ((counter(0)) # (!counter(1))))) # (!tempo_limite_enchendo(1) & (!counter(1) & ((tempo_limite_enchendo(0)) # (counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tempo_limite_enchendo(1),
	datab => tempo_limite_enchendo(0),
	datac => counter(0),
	datad => counter(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y32_N2
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (tempo_limite_enchendo(2) & (counter(2) & !\LessThan0~0_combout\)) # (!tempo_limite_enchendo(2) & ((counter(2)) # (!\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tempo_limite_enchendo(2),
	datac => counter(2),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X50_Y32_N2
\LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (counter(3)) # ((\LessThan0~1_combout\) # (!\counter[30]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datac => \counter[30]~4_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X50_Y32_N12
\Selector68~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector68~4_combout\ = ((state(1) & (\LessThan1~0_combout\)) # (!state(1) & ((\LessThan0~2_combout\)))) # (!\Selector68~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(1),
	datab => \Selector68~3_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Selector68~4_combout\);

-- Location: LCCOMB_X51_Y32_N6
\Selector68~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector68~5_combout\ = (!state(2) & (!counter(31) & (!state(0) & \Selector68~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => counter(31),
	datac => state(0),
	datad => \Selector68~4_combout\,
	combout => \Selector68~5_combout\);

-- Location: LCCOMB_X51_Y32_N16
\Selector68~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector68~6_combout\ = (\Selector68~5_combout\) # ((!state(2) & (!\LessThan1~2_combout\ & state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \LessThan1~2_combout\,
	datac => state(0),
	datad => \Selector68~5_combout\,
	combout => \Selector68~6_combout\);

-- Location: LCFF_X51_Y32_N17
\state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector68~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(0));

-- Location: LCCOMB_X49_Y32_N14
\counter[30]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[30]~5_combout\ = (!state(1) & (!state(2) & !state(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => state(1),
	datac => state(2),
	datad => state(0),
	combout => \counter[30]~5_combout\);

-- Location: LCCOMB_X49_Y32_N20
\counter[30]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[30]~6_combout\ = ((\counter[30]~5_combout\ & ((\LessThan0~1_combout\))) # (!\counter[30]~5_combout\ & (counter(2)))) # (!\Selector68~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector68~3_combout\,
	datab => \counter[30]~5_combout\,
	datac => counter(2),
	datad => \LessThan0~1_combout\,
	combout => \counter[30]~6_combout\);

-- Location: LCCOMB_X49_Y32_N18
\counter[30]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[30]~7_combout\ = (!counter(31) & ((counter(3)) # ((\counter[30]~6_combout\) # (!\counter[30]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	datab => counter(3),
	datac => \counter[30]~6_combout\,
	datad => \counter[30]~4_combout\,
	combout => \counter[30]~7_combout\);

-- Location: LCCOMB_X48_Y32_N20
\Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\Add0~2_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector34~0_combout\);

-- Location: LCFF_X48_Y32_N21
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector34~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X47_Y32_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (counter(2) & (\Add0~3\ $ (GND))) # (!counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X48_Y32_N30
\Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\Add0~4_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector33~0_combout\);

-- Location: LCFF_X48_Y32_N31
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector33~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: LCCOMB_X48_Y32_N24
\Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\Add0~6_combout\ & !\counter[30]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \counter[30]~7_combout\,
	combout => \Selector32~0_combout\);

-- Location: LCFF_X48_Y32_N25
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector32~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCCOMB_X49_Y32_N22
\LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (counter(2)) # (counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => counter(3),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X49_Y32_N8
\LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!counter(31) & ((\LessThan1~1_combout\) # ((!\counter[30]~4_combout\) # (!\Selector68~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	datab => \LessThan1~1_combout\,
	datac => \Selector68~3_combout\,
	datad => \counter[30]~4_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X49_Y32_N26
\Selector67~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (!state(2) & (state(1) $ (((\LessThan1~2_combout\ & state(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => \LessThan1~2_combout\,
	datac => state(1),
	datad => state(0),
	combout => \Selector67~0_combout\);

-- Location: LCFF_X49_Y32_N27
\state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector67~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(1));

-- Location: LCCOMB_X49_Y32_N30
\Selector66~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector66~1_combout\ = (\LessThan1~2_combout\ & (state(1) & (!state(2) & state(0)))) # (!\LessThan1~2_combout\ & (!state(1) & (state(2) & !state(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => state(1),
	datac => state(2),
	datad => state(0),
	combout => \Selector66~1_combout\);

-- Location: LCFF_X49_Y32_N31
\state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector66~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => state(2));

-- Location: LCCOMB_X50_Y32_N14
\Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\Selector68~3_combout\ & ((\Selector66~0_combout\ & ((!\LessThan0~2_combout\))) # (!\Selector66~0_combout\ & (!\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector66~0_combout\,
	datab => \Selector68~3_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X49_Y32_N10
\Selector36~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (state(2) & ((\Selector66~0_combout\ & ((\LessThan1~2_combout\))) # (!\Selector66~0_combout\ & (\timeout~reg0_regout\)))) # (!state(2) & (\timeout~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeout~reg0_regout\,
	datab => state(2),
	datac => \LessThan1~2_combout\,
	datad => \Selector66~0_combout\,
	combout => \Selector36~1_combout\);

-- Location: LCCOMB_X49_Y32_N12
\Selector36~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector36~2_combout\ = (\Selector36~1_combout\ & ((state(2)) # ((!counter(31) & !\Selector36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	datab => state(2),
	datac => \Selector36~0_combout\,
	datad => \Selector36~1_combout\,
	combout => \Selector36~2_combout\);

-- Location: LCFF_X49_Y32_N13
\timeout~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \Selector36~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timeout~reg0_regout\);

-- Location: LCCOMB_X48_Y32_N6
\counter_out[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_out[0]~4_combout\ = !counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	combout => \counter_out[0]~4_combout\);

-- Location: LCCOMB_X49_Y32_N24
\counter_out[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_out[0]~1_combout\ = (!state(2) & (state(0) & (\LessThan1~2_combout\ & !state(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => state(2),
	datab => state(0),
	datac => \LessThan1~2_combout\,
	datad => state(1),
	combout => \counter_out[0]~1_combout\);

-- Location: LCCOMB_X49_Y32_N0
\counter_out[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_out[0]~2_combout\ = (\counter[30]~5_combout\ & (!counter(31) & ((\LessThan0~2_combout\) # (!\Selector68~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector68~3_combout\,
	datab => \counter[30]~5_combout\,
	datac => counter(31),
	datad => \LessThan0~2_combout\,
	combout => \counter_out[0]~2_combout\);

-- Location: LCCOMB_X49_Y32_N6
\counter_out[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_out[0]~3_combout\ = (\counter_out[0]~0_combout\ & (!\reset~combout\ & (!\counter_out[0]~1_combout\ & !\counter_out[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_out[0]~0_combout\,
	datab => \reset~combout\,
	datac => \counter_out[0]~1_combout\,
	datad => \counter_out[0]~2_combout\,
	combout => \counter_out[0]~3_combout\);

-- Location: LCFF_X49_Y32_N23
\counter_out[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter_out[0]~4_combout\,
	sload => VCC,
	ena => \counter_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter_out[0]~reg0_regout\);

-- Location: LCFF_X49_Y32_N5
\counter_out[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => counter(1),
	sload => VCC,
	ena => \counter_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter_out[1]~reg0_regout\);

-- Location: LCFF_X49_Y32_N3
\counter_out[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => counter(2),
	sload => VCC,
	ena => \counter_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter_out[2]~reg0_regout\);

-- Location: LCFF_X49_Y32_N17
\counter_out[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => counter(3),
	sload => VCC,
	ena => \counter_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter_out[3]~reg0_regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\modo_lav[0]~I\ : cycloneii_io
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
	padio => ww_modo_lav(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\modo_lav[1]~I\ : cycloneii_io
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
	padio => ww_modo_lav(1));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\modo_lav[2]~I\ : cycloneii_io
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
	padio => ww_modo_lav(2));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\modo_lav[3]~I\ : cycloneii_io
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
	padio => ww_modo_lav(3));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\timeout~I\ : cycloneii_io
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
	datain => \timeout~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_timeout);

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\counter_out[0]~I\ : cycloneii_io
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
	datain => \counter_out[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_counter_out(0));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\counter_out[1]~I\ : cycloneii_io
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
	datain => \counter_out[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_counter_out(1));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\counter_out[2]~I\ : cycloneii_io
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
	datain => \counter_out[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_counter_out(2));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\counter_out[3]~I\ : cycloneii_io
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
	datain => \counter_out[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_counter_out(3));
END structure;


