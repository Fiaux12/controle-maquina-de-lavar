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

-- DATE "01/05/2025 22:00:55"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	temporizador IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	tempo_limite : IN STD.STANDARD.integer;
	timeout : OUT std_logic
	);
END temporizador;

-- Design Ports Information
-- timeout	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- tempo_limite[31]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[30]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[29]	=>  Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[28]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[27]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[26]	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[25]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[24]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[23]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[22]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[21]	=>  Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[20]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[19]	=>  Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[18]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[17]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[16]	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[15]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[14]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[13]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[12]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[11]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[10]	=>  Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[9]	=>  Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[8]	=>  Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[7]	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[6]	=>  Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[5]	=>  Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[4]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[3]	=>  Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[2]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[1]	=>  Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- tempo_limite[0]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_tempo_limite : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_timeout : std_logic;
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter[3]~35_combout\ : std_logic;
SIGNAL \counter[8]~45_combout\ : std_logic;
SIGNAL \counter[20]~69_combout\ : std_logic;
SIGNAL \counter[0]~94_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \counter[1]~31_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \counter[31]~93_combout\ : std_logic;
SIGNAL \counter[1]~32\ : std_logic;
SIGNAL \counter[2]~34\ : std_logic;
SIGNAL \counter[3]~36\ : std_logic;
SIGNAL \counter[4]~37_combout\ : std_logic;
SIGNAL \counter[4]~38\ : std_logic;
SIGNAL \counter[5]~40\ : std_logic;
SIGNAL \counter[6]~41_combout\ : std_logic;
SIGNAL \counter[6]~42\ : std_logic;
SIGNAL \counter[7]~43_combout\ : std_logic;
SIGNAL \counter[7]~44\ : std_logic;
SIGNAL \counter[8]~46\ : std_logic;
SIGNAL \counter[9]~47_combout\ : std_logic;
SIGNAL \counter[9]~48\ : std_logic;
SIGNAL \counter[10]~50\ : std_logic;
SIGNAL \counter[11]~51_combout\ : std_logic;
SIGNAL \counter[11]~52\ : std_logic;
SIGNAL \counter[12]~54\ : std_logic;
SIGNAL \counter[13]~55_combout\ : std_logic;
SIGNAL \counter[13]~56\ : std_logic;
SIGNAL \counter[14]~58\ : std_logic;
SIGNAL \counter[15]~59_combout\ : std_logic;
SIGNAL \counter[15]~60\ : std_logic;
SIGNAL \counter[16]~61_combout\ : std_logic;
SIGNAL \counter[16]~62\ : std_logic;
SIGNAL \counter[17]~63_combout\ : std_logic;
SIGNAL \counter[17]~64\ : std_logic;
SIGNAL \counter[18]~66\ : std_logic;
SIGNAL \counter[19]~67_combout\ : std_logic;
SIGNAL \counter[19]~68\ : std_logic;
SIGNAL \counter[20]~70\ : std_logic;
SIGNAL \counter[21]~71_combout\ : std_logic;
SIGNAL \counter[21]~72\ : std_logic;
SIGNAL \counter[22]~73_combout\ : std_logic;
SIGNAL \counter[22]~74\ : std_logic;
SIGNAL \counter[23]~75_combout\ : std_logic;
SIGNAL \counter[23]~76\ : std_logic;
SIGNAL \counter[24]~77_combout\ : std_logic;
SIGNAL \counter[24]~78\ : std_logic;
SIGNAL \counter[25]~79_combout\ : std_logic;
SIGNAL \counter[25]~80\ : std_logic;
SIGNAL \counter[26]~81_combout\ : std_logic;
SIGNAL \counter[26]~82\ : std_logic;
SIGNAL \counter[27]~83_combout\ : std_logic;
SIGNAL \counter[27]~84\ : std_logic;
SIGNAL \counter[28]~86\ : std_logic;
SIGNAL \counter[29]~87_combout\ : std_logic;
SIGNAL \counter[29]~88\ : std_logic;
SIGNAL \counter[30]~89_combout\ : std_logic;
SIGNAL \counter[30]~90\ : std_logic;
SIGNAL \counter[31]~91_combout\ : std_logic;
SIGNAL \counter[28]~85_combout\ : std_logic;
SIGNAL \counter[18]~65_combout\ : std_logic;
SIGNAL \counter[14]~57_combout\ : std_logic;
SIGNAL \counter[14]~feeder_combout\ : std_logic;
SIGNAL \counter[12]~53_combout\ : std_logic;
SIGNAL \counter[10]~49_combout\ : std_logic;
SIGNAL \counter[5]~39_combout\ : std_logic;
SIGNAL \counter[2]~33_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \timeout~0_combout\ : std_logic;
SIGNAL \timeout~reg0_regout\ : std_logic;
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL \tempo_limite~combout\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_enable <= enable;
ww_tempo_limite <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(tempo_limite, 32);
timeout <= ww_timeout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

-- Location: LCFF_X2_Y2_N13
\counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[20]~69_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(20));

-- Location: LCFF_X2_Y3_N13
\counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[8]~45_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(8));

-- Location: LCFF_X3_Y3_N7
\counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[3]~35_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(3));

-- Location: LCCOMB_X3_Y3_N6
\counter[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[3]~35_combout\ = (counter(3) & (\counter[2]~34\ $ (GND))) # (!counter(3) & (!\counter[2]~34\ & VCC))
-- \counter[3]~36\ = CARRY((counter(3) & !\counter[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~34\,
	combout => \counter[3]~35_combout\,
	cout => \counter[3]~36\);

-- Location: LCCOMB_X3_Y3_N16
\counter[8]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[8]~45_combout\ = (counter(8) & (!\counter[7]~44\)) # (!counter(8) & ((\counter[7]~44\) # (GND)))
-- \counter[8]~46\ = CARRY((!\counter[7]~44\) # (!counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \counter[7]~44\,
	combout => \counter[8]~45_combout\,
	cout => \counter[8]~46\);

-- Location: LCCOMB_X3_Y2_N8
\counter[20]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[20]~69_combout\ = (counter(20) & (!\counter[19]~68\)) # (!counter(20) & ((\counter[19]~68\) # (GND)))
-- \counter[20]~70\ = CARRY((!\counter[19]~68\) # (!counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datad => VCC,
	cin => \counter[19]~68\,
	combout => \counter[20]~69_combout\,
	cout => \counter[20]~70\);

-- Location: LCFF_X1_Y3_N15
\counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[0]~94_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(0));

-- Location: LCCOMB_X1_Y3_N14
\counter[0]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[0]~94_combout\ = counter(0) $ (((\LessThan0~62_combout\ & \enable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~62_combout\,
	datac => counter(0),
	datad => \enable~combout\,
	combout => \counter[0]~94_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[30]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(30),
	combout => \tempo_limite~combout\(30));

-- Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[28]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(28),
	combout => \tempo_limite~combout\(28));

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[27]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(27),
	combout => \tempo_limite~combout\(27));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[25]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(25),
	combout => \tempo_limite~combout\(25));

-- Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[23]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(23),
	combout => \tempo_limite~combout\(23));

-- Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[22]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(22),
	combout => \tempo_limite~combout\(22));

-- Location: PIN_AC6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[21]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(21),
	combout => \tempo_limite~combout\(21));

-- Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[19]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(19),
	combout => \tempo_limite~combout\(19));

-- Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[18]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(18),
	combout => \tempo_limite~combout\(18));

-- Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[16]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(16),
	combout => \tempo_limite~combout\(16));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[15]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(15),
	combout => \tempo_limite~combout\(15));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[14]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(14),
	combout => \tempo_limite~combout\(14));

-- Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[13]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(13),
	combout => \tempo_limite~combout\(13));

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[12]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(12),
	combout => \tempo_limite~combout\(12));

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[11]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(11),
	combout => \tempo_limite~combout\(11));

-- Location: PIN_W6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[10]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(10),
	combout => \tempo_limite~combout\(10));

-- Location: PIN_AC1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[9]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(9),
	combout => \tempo_limite~combout\(9));

-- Location: PIN_V10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[6]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(6),
	combout => \tempo_limite~combout\(6));

-- Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[5]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(5),
	combout => \tempo_limite~combout\(5));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[4]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(4),
	combout => \tempo_limite~combout\(4));

-- Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[2]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(2),
	combout => \tempo_limite~combout\(2));

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

-- Location: PIN_AC2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[31]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(31),
	combout => \tempo_limite~combout\(31));

-- Location: LCCOMB_X3_Y3_N2
\counter[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[1]~31_combout\ = (counter(0) & (counter(1) $ (VCC))) # (!counter(0) & (counter(1) & VCC))
-- \counter[1]~32\ = CARRY((counter(0) & counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => counter(1),
	datad => VCC,
	combout => \counter[1]~31_combout\,
	cout => \counter[1]~32\);

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

-- Location: LCCOMB_X1_Y2_N2
\counter[31]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[31]~93_combout\ = (\enable~combout\ & \LessThan0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~combout\,
	datad => \LessThan0~62_combout\,
	combout => \counter[31]~93_combout\);

-- Location: LCFF_X2_Y3_N25
\counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[1]~31_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(1));

-- Location: LCCOMB_X3_Y3_N4
\counter[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[2]~33_combout\ = (counter(2) & (!\counter[1]~32\)) # (!counter(2) & ((\counter[1]~32\) # (GND)))
-- \counter[2]~34\ = CARRY((!\counter[1]~32\) # (!counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~32\,
	combout => \counter[2]~33_combout\,
	cout => \counter[2]~34\);

-- Location: LCCOMB_X3_Y3_N8
\counter[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[4]~37_combout\ = (counter(4) & (!\counter[3]~36\)) # (!counter(4) & ((\counter[3]~36\) # (GND)))
-- \counter[4]~38\ = CARRY((!\counter[3]~36\) # (!counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~36\,
	combout => \counter[4]~37_combout\,
	cout => \counter[4]~38\);

-- Location: LCFF_X3_Y3_N9
\counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[4]~37_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(4));

-- Location: LCCOMB_X3_Y3_N10
\counter[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[5]~39_combout\ = (counter(5) & (\counter[4]~38\ $ (GND))) # (!counter(5) & (!\counter[4]~38\ & VCC))
-- \counter[5]~40\ = CARRY((counter(5) & !\counter[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~38\,
	combout => \counter[5]~39_combout\,
	cout => \counter[5]~40\);

-- Location: LCCOMB_X3_Y3_N12
\counter[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[6]~41_combout\ = (counter(6) & (!\counter[5]~40\)) # (!counter(6) & ((\counter[5]~40\) # (GND)))
-- \counter[6]~42\ = CARRY((!\counter[5]~40\) # (!counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~40\,
	combout => \counter[6]~41_combout\,
	cout => \counter[6]~42\);

-- Location: LCFF_X2_Y3_N5
\counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[6]~41_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(6));

-- Location: LCCOMB_X3_Y3_N14
\counter[7]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[7]~43_combout\ = (counter(7) & (\counter[6]~42\ $ (GND))) # (!counter(7) & (!\counter[6]~42\ & VCC))
-- \counter[7]~44\ = CARRY((counter(7) & !\counter[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~42\,
	combout => \counter[7]~43_combout\,
	cout => \counter[7]~44\);

-- Location: LCFF_X2_Y3_N7
\counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[7]~43_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(7));

-- Location: LCCOMB_X3_Y3_N18
\counter[9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[9]~47_combout\ = (counter(9) & (\counter[8]~46\ $ (GND))) # (!counter(9) & (!\counter[8]~46\ & VCC))
-- \counter[9]~48\ = CARRY((counter(9) & !\counter[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~46\,
	combout => \counter[9]~47_combout\,
	cout => \counter[9]~48\);

-- Location: LCFF_X2_Y3_N19
\counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[9]~47_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(9));

-- Location: LCCOMB_X3_Y3_N20
\counter[10]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[10]~49_combout\ = (counter(10) & (!\counter[9]~48\)) # (!counter(10) & ((\counter[9]~48\) # (GND)))
-- \counter[10]~50\ = CARRY((!\counter[9]~48\) # (!counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \counter[9]~48\,
	combout => \counter[10]~49_combout\,
	cout => \counter[10]~50\);

-- Location: LCCOMB_X3_Y3_N22
\counter[11]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[11]~51_combout\ = (counter(11) & (\counter[10]~50\ $ (GND))) # (!counter(11) & (!\counter[10]~50\ & VCC))
-- \counter[11]~52\ = CARRY((counter(11) & !\counter[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~50\,
	combout => \counter[11]~51_combout\,
	cout => \counter[11]~52\);

-- Location: LCFF_X3_Y3_N23
\counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[11]~51_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(11));

-- Location: LCCOMB_X3_Y3_N24
\counter[12]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[12]~53_combout\ = (counter(12) & (!\counter[11]~52\)) # (!counter(12) & ((\counter[11]~52\) # (GND)))
-- \counter[12]~54\ = CARRY((!\counter[11]~52\) # (!counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datad => VCC,
	cin => \counter[11]~52\,
	combout => \counter[12]~53_combout\,
	cout => \counter[12]~54\);

-- Location: LCCOMB_X3_Y3_N26
\counter[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[13]~55_combout\ = (counter(13) & (\counter[12]~54\ $ (GND))) # (!counter(13) & (!\counter[12]~54\ & VCC))
-- \counter[13]~56\ = CARRY((counter(13) & !\counter[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \counter[12]~54\,
	combout => \counter[13]~55_combout\,
	cout => \counter[13]~56\);

-- Location: LCFF_X2_Y3_N23
\counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[13]~55_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(13));

-- Location: LCCOMB_X3_Y3_N28
\counter[14]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[14]~57_combout\ = (counter(14) & (!\counter[13]~56\)) # (!counter(14) & ((\counter[13]~56\) # (GND)))
-- \counter[14]~58\ = CARRY((!\counter[13]~56\) # (!counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datad => VCC,
	cin => \counter[13]~56\,
	combout => \counter[14]~57_combout\,
	cout => \counter[14]~58\);

-- Location: LCCOMB_X3_Y3_N30
\counter[15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[15]~59_combout\ = (counter(15) & (\counter[14]~58\ $ (GND))) # (!counter(15) & (!\counter[14]~58\ & VCC))
-- \counter[15]~60\ = CARRY((counter(15) & !\counter[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \counter[14]~58\,
	combout => \counter[15]~59_combout\,
	cout => \counter[15]~60\);

-- Location: LCFF_X3_Y3_N31
\counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[15]~59_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(15));

-- Location: LCCOMB_X3_Y2_N0
\counter[16]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[16]~61_combout\ = (counter(16) & (!\counter[15]~60\)) # (!counter(16) & ((\counter[15]~60\) # (GND)))
-- \counter[16]~62\ = CARRY((!\counter[15]~60\) # (!counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~60\,
	combout => \counter[16]~61_combout\,
	cout => \counter[16]~62\);

-- Location: LCFF_X3_Y2_N1
\counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[16]~61_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(16));

-- Location: LCCOMB_X3_Y2_N2
\counter[17]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[17]~63_combout\ = (counter(17) & (\counter[16]~62\ $ (GND))) # (!counter(17) & (!\counter[16]~62\ & VCC))
-- \counter[17]~64\ = CARRY((counter(17) & !\counter[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~62\,
	combout => \counter[17]~63_combout\,
	cout => \counter[17]~64\);

-- Location: LCFF_X3_Y2_N3
\counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[17]~63_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(17));

-- Location: LCCOMB_X3_Y2_N4
\counter[18]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[18]~65_combout\ = (counter(18) & (!\counter[17]~64\)) # (!counter(18) & ((\counter[17]~64\) # (GND)))
-- \counter[18]~66\ = CARRY((!\counter[17]~64\) # (!counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \counter[17]~64\,
	combout => \counter[18]~65_combout\,
	cout => \counter[18]~66\);

-- Location: LCCOMB_X3_Y2_N6
\counter[19]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[19]~67_combout\ = (counter(19) & (\counter[18]~66\ $ (GND))) # (!counter(19) & (!\counter[18]~66\ & VCC))
-- \counter[19]~68\ = CARRY((counter(19) & !\counter[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \counter[18]~66\,
	combout => \counter[19]~67_combout\,
	cout => \counter[19]~68\);

-- Location: LCFF_X2_Y2_N27
\counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[19]~67_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(19));

-- Location: LCCOMB_X3_Y2_N10
\counter[21]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[21]~71_combout\ = (counter(21) & (\counter[20]~70\ $ (GND))) # (!counter(21) & (!\counter[20]~70\ & VCC))
-- \counter[21]~72\ = CARRY((counter(21) & !\counter[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \counter[20]~70\,
	combout => \counter[21]~71_combout\,
	cout => \counter[21]~72\);

-- Location: LCFF_X2_Y2_N29
\counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[21]~71_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(21));

-- Location: LCCOMB_X3_Y2_N12
\counter[22]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[22]~73_combout\ = (counter(22) & (!\counter[21]~72\)) # (!counter(22) & ((\counter[21]~72\) # (GND)))
-- \counter[22]~74\ = CARRY((!\counter[21]~72\) # (!counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~72\,
	combout => \counter[22]~73_combout\,
	cout => \counter[22]~74\);

-- Location: LCFF_X2_Y2_N23
\counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[22]~73_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(22));

-- Location: LCCOMB_X3_Y2_N14
\counter[23]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[23]~75_combout\ = (counter(23) & (\counter[22]~74\ $ (GND))) # (!counter(23) & (!\counter[22]~74\ & VCC))
-- \counter[23]~76\ = CARRY((counter(23) & !\counter[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \counter[22]~74\,
	combout => \counter[23]~75_combout\,
	cout => \counter[23]~76\);

-- Location: LCFF_X3_Y2_N15
\counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[23]~75_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(23));

-- Location: LCCOMB_X3_Y2_N16
\counter[24]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[24]~77_combout\ = (counter(24) & (!\counter[23]~76\)) # (!counter(24) & ((\counter[23]~76\) # (GND)))
-- \counter[24]~78\ = CARRY((!\counter[23]~76\) # (!counter(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \counter[23]~76\,
	combout => \counter[24]~77_combout\,
	cout => \counter[24]~78\);

-- Location: LCFF_X2_Y2_N7
\counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[24]~77_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(24));

-- Location: LCCOMB_X3_Y2_N18
\counter[25]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[25]~79_combout\ = (counter(25) & (\counter[24]~78\ $ (GND))) # (!counter(25) & (!\counter[24]~78\ & VCC))
-- \counter[25]~80\ = CARRY((counter(25) & !\counter[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \counter[24]~78\,
	combout => \counter[25]~79_combout\,
	cout => \counter[25]~80\);

-- Location: LCFF_X3_Y2_N19
\counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[25]~79_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(25));

-- Location: LCCOMB_X3_Y2_N20
\counter[26]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[26]~81_combout\ = (counter(26) & (!\counter[25]~80\)) # (!counter(26) & ((\counter[25]~80\) # (GND)))
-- \counter[26]~82\ = CARRY((!\counter[25]~80\) # (!counter(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \counter[25]~80\,
	combout => \counter[26]~81_combout\,
	cout => \counter[26]~82\);

-- Location: LCFF_X2_Y2_N25
\counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[26]~81_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(26));

-- Location: LCCOMB_X3_Y2_N22
\counter[27]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[27]~83_combout\ = (counter(27) & (\counter[26]~82\ $ (GND))) # (!counter(27) & (!\counter[26]~82\ & VCC))
-- \counter[27]~84\ = CARRY((counter(27) & !\counter[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(27),
	datad => VCC,
	cin => \counter[26]~82\,
	combout => \counter[27]~83_combout\,
	cout => \counter[27]~84\);

-- Location: LCFF_X3_Y2_N23
\counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[27]~83_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(27));

-- Location: LCCOMB_X3_Y2_N24
\counter[28]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[28]~85_combout\ = (counter(28) & (!\counter[27]~84\)) # (!counter(28) & ((\counter[27]~84\) # (GND)))
-- \counter[28]~86\ = CARRY((!\counter[27]~84\) # (!counter(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(28),
	datad => VCC,
	cin => \counter[27]~84\,
	combout => \counter[28]~85_combout\,
	cout => \counter[28]~86\);

-- Location: LCCOMB_X3_Y2_N26
\counter[29]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[29]~87_combout\ = (counter(29) & (\counter[28]~86\ $ (GND))) # (!counter(29) & (!\counter[28]~86\ & VCC))
-- \counter[29]~88\ = CARRY((counter(29) & !\counter[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(29),
	datad => VCC,
	cin => \counter[28]~86\,
	combout => \counter[29]~87_combout\,
	cout => \counter[29]~88\);

-- Location: LCFF_X3_Y2_N27
\counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[29]~87_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(29));

-- Location: LCCOMB_X3_Y2_N28
\counter[30]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[30]~89_combout\ = (counter(30) & (!\counter[29]~88\)) # (!counter(30) & ((\counter[29]~88\) # (GND)))
-- \counter[30]~90\ = CARRY((!\counter[29]~88\) # (!counter(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \counter[29]~88\,
	combout => \counter[30]~89_combout\,
	cout => \counter[30]~90\);

-- Location: LCFF_X3_Y2_N29
\counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[30]~89_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(30));

-- Location: LCCOMB_X3_Y2_N30
\counter[31]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[31]~91_combout\ = \counter[30]~90\ $ (!counter(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(31),
	cin => \counter[30]~90\,
	combout => \counter[31]~91_combout\);

-- Location: LCFF_X3_Y2_N31
\counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[31]~91_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(31));

-- Location: PIN_AD6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[29]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(29),
	combout => \tempo_limite~combout\(29));

-- Location: LCFF_X3_Y2_N25
\counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[28]~85_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(28));

-- Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[26]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(26),
	combout => \tempo_limite~combout\(26));

-- Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[24]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(24),
	combout => \tempo_limite~combout\(24));

-- Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[20]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(20),
	combout => \tempo_limite~combout\(20));

-- Location: LCFF_X2_Y2_N31
\counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[18]~65_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(18));

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[17]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(17),
	combout => \tempo_limite~combout\(17));

-- Location: LCCOMB_X1_Y3_N16
\counter[14]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter[14]~feeder_combout\ = \counter[14]~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \counter[14]~57_combout\,
	combout => \counter[14]~feeder_combout\);

-- Location: LCFF_X1_Y3_N17
\counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[14]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(14));

-- Location: LCFF_X3_Y3_N25
\counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[12]~53_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(12));

-- Location: LCFF_X3_Y3_N21
\counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[10]~49_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(10));

-- Location: PIN_AB1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[8]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(8),
	combout => \tempo_limite~combout\(8));

-- Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[7]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(7),
	combout => \tempo_limite~combout\(7));

-- Location: LCFF_X3_Y3_N11
\counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \counter[5]~39_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(5));

-- Location: PIN_AB2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[3]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(3),
	combout => \tempo_limite~combout\(3));

-- Location: LCFF_X2_Y3_N9
\counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \counter[2]~33_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \counter[31]~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => counter(2));

-- Location: PIN_V7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[1]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(1),
	combout => \tempo_limite~combout\(1));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\tempo_limite[0]~I\ : cycloneii_io
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
	padio => ww_tempo_limite(0),
	combout => \tempo_limite~combout\(0));

-- Location: LCCOMB_X2_Y3_N0
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!counter(0) & \tempo_limite~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datab => \tempo_limite~combout\(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X2_Y3_N2
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((counter(1) & ((!\LessThan0~1_cout\) # (!\tempo_limite~combout\(1)))) # (!counter(1) & (!\tempo_limite~combout\(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => \tempo_limite~combout\(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X2_Y3_N4
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\tempo_limite~combout\(2) & ((!\LessThan0~3_cout\) # (!counter(2)))) # (!\tempo_limite~combout\(2) & (!counter(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(2),
	datab => counter(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X2_Y3_N6
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((counter(3) & ((!\LessThan0~5_cout\) # (!\tempo_limite~combout\(3)))) # (!counter(3) & (!\tempo_limite~combout\(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datab => \tempo_limite~combout\(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X2_Y3_N8
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\tempo_limite~combout\(4) & ((!\LessThan0~7_cout\) # (!counter(4)))) # (!\tempo_limite~combout\(4) & (!counter(4) & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(4),
	datab => counter(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X2_Y3_N10
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\tempo_limite~combout\(5) & (counter(5) & !\LessThan0~9_cout\)) # (!\tempo_limite~combout\(5) & ((counter(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(5),
	datab => counter(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X2_Y3_N12
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\tempo_limite~combout\(6) & ((!\LessThan0~11_cout\) # (!counter(6)))) # (!\tempo_limite~combout\(6) & (!counter(6) & !\LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(6),
	datab => counter(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X2_Y3_N14
\LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((counter(7) & ((!\LessThan0~13_cout\) # (!\tempo_limite~combout\(7)))) # (!counter(7) & (!\tempo_limite~combout\(7) & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => \tempo_limite~combout\(7),
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X2_Y3_N16
\LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((counter(8) & (\tempo_limite~combout\(8) & !\LessThan0~15_cout\)) # (!counter(8) & ((\tempo_limite~combout\(8)) # (!\LessThan0~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datab => \tempo_limite~combout\(8),
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X2_Y3_N18
\LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\tempo_limite~combout\(9) & (counter(9) & !\LessThan0~17_cout\)) # (!\tempo_limite~combout\(9) & ((counter(9)) # (!\LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(9),
	datab => counter(9),
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X2_Y3_N20
\LessThan0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\tempo_limite~combout\(10) & ((!\LessThan0~19_cout\) # (!counter(10)))) # (!\tempo_limite~combout\(10) & (!counter(10) & !\LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(10),
	datab => counter(10),
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X2_Y3_N22
\LessThan0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\tempo_limite~combout\(11) & (counter(11) & !\LessThan0~21_cout\)) # (!\tempo_limite~combout\(11) & ((counter(11)) # (!\LessThan0~21_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(11),
	datab => counter(11),
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X2_Y3_N24
\LessThan0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\tempo_limite~combout\(12) & ((!\LessThan0~23_cout\) # (!counter(12)))) # (!\tempo_limite~combout\(12) & (!counter(12) & !\LessThan0~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(12),
	datab => counter(12),
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X2_Y3_N26
\LessThan0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\tempo_limite~combout\(13) & (counter(13) & !\LessThan0~25_cout\)) # (!\tempo_limite~combout\(13) & ((counter(13)) # (!\LessThan0~25_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(13),
	datab => counter(13),
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X2_Y3_N28
\LessThan0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\tempo_limite~combout\(14) & ((!\LessThan0~27_cout\) # (!counter(14)))) # (!\tempo_limite~combout\(14) & (!counter(14) & !\LessThan0~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(14),
	datab => counter(14),
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X2_Y3_N30
\LessThan0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\tempo_limite~combout\(15) & (counter(15) & !\LessThan0~29_cout\)) # (!\tempo_limite~combout\(15) & ((counter(15)) # (!\LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(15),
	datab => counter(15),
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X2_Y2_N0
\LessThan0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\tempo_limite~combout\(16) & ((!\LessThan0~31_cout\) # (!counter(16)))) # (!\tempo_limite~combout\(16) & (!counter(16) & !\LessThan0~31_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(16),
	datab => counter(16),
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X2_Y2_N2
\LessThan0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((counter(17) & ((!\LessThan0~33_cout\) # (!\tempo_limite~combout\(17)))) # (!counter(17) & (!\tempo_limite~combout\(17) & !\LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datab => \tempo_limite~combout\(17),
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X2_Y2_N4
\LessThan0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\tempo_limite~combout\(18) & ((!\LessThan0~35_cout\) # (!counter(18)))) # (!\tempo_limite~combout\(18) & (!counter(18) & !\LessThan0~35_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(18),
	datab => counter(18),
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X2_Y2_N6
\LessThan0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\tempo_limite~combout\(19) & (counter(19) & !\LessThan0~37_cout\)) # (!\tempo_limite~combout\(19) & ((counter(19)) # (!\LessThan0~37_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(19),
	datab => counter(19),
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X2_Y2_N8
\LessThan0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((counter(20) & (\tempo_limite~combout\(20) & !\LessThan0~39_cout\)) # (!counter(20) & ((\tempo_limite~combout\(20)) # (!\LessThan0~39_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datab => \tempo_limite~combout\(20),
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X2_Y2_N10
\LessThan0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\tempo_limite~combout\(21) & (counter(21) & !\LessThan0~41_cout\)) # (!\tempo_limite~combout\(21) & ((counter(21)) # (!\LessThan0~41_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(21),
	datab => counter(21),
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X2_Y2_N12
\LessThan0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\tempo_limite~combout\(22) & ((!\LessThan0~43_cout\) # (!counter(22)))) # (!\tempo_limite~combout\(22) & (!counter(22) & !\LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(22),
	datab => counter(22),
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X2_Y2_N14
\LessThan0~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\tempo_limite~combout\(23) & (counter(23) & !\LessThan0~45_cout\)) # (!\tempo_limite~combout\(23) & ((counter(23)) # (!\LessThan0~45_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(23),
	datab => counter(23),
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X2_Y2_N16
\LessThan0~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((counter(24) & (\tempo_limite~combout\(24) & !\LessThan0~47_cout\)) # (!counter(24) & ((\tempo_limite~combout\(24)) # (!\LessThan0~47_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datab => \tempo_limite~combout\(24),
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X2_Y2_N18
\LessThan0~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\tempo_limite~combout\(25) & (counter(25) & !\LessThan0~49_cout\)) # (!\tempo_limite~combout\(25) & ((counter(25)) # (!\LessThan0~49_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(25),
	datab => counter(25),
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X2_Y2_N20
\LessThan0~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((counter(26) & (\tempo_limite~combout\(26) & !\LessThan0~51_cout\)) # (!counter(26) & ((\tempo_limite~combout\(26)) # (!\LessThan0~51_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(26),
	datab => \tempo_limite~combout\(26),
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X2_Y2_N22
\LessThan0~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\tempo_limite~combout\(27) & (counter(27) & !\LessThan0~53_cout\)) # (!\tempo_limite~combout\(27) & ((counter(27)) # (!\LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(27),
	datab => counter(27),
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X2_Y2_N24
\LessThan0~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\tempo_limite~combout\(28) & ((!\LessThan0~55_cout\) # (!counter(28)))) # (!\tempo_limite~combout\(28) & (!counter(28) & !\LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(28),
	datab => counter(28),
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X2_Y2_N26
\LessThan0~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((counter(29) & ((!\LessThan0~57_cout\) # (!\tempo_limite~combout\(29)))) # (!counter(29) & (!\tempo_limite~combout\(29) & !\LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datab => \tempo_limite~combout\(29),
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X2_Y2_N28
\LessThan0~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\tempo_limite~combout\(30) & ((!\LessThan0~59_cout\) # (!counter(30)))) # (!\tempo_limite~combout\(30) & (!counter(30) & !\LessThan0~59_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tempo_limite~combout\(30),
	datab => counter(30),
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X2_Y2_N30
\LessThan0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\tempo_limite~combout\(31) & (\LessThan0~61_cout\ & counter(31))) # (!\tempo_limite~combout\(31) & ((\LessThan0~61_cout\) # (counter(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tempo_limite~combout\(31),
	datad => counter(31),
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

-- Location: LCCOMB_X1_Y2_N28
\timeout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \timeout~0_combout\ = (\enable~combout\ & !\LessThan0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~combout\,
	datad => \LessThan0~62_combout\,
	combout => \timeout~0_combout\);

-- Location: LCFF_X1_Y2_N29
\timeout~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \timeout~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \timeout~reg0_regout\);

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
END structure;


