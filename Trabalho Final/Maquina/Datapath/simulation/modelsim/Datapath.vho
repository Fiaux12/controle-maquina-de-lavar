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

-- DATE "01/19/2025 22:56:39"

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

ENTITY 	Datapath IS
    PORT (
	Volume_Agua : IN std_logic_vector(3 DOWNTO 0);
	Modo_Lavagem : IN std_logic_vector(3 DOWNTO 0);
	clock : IN std_logic;
	Reset_Vol_Agua : IN std_logic;
	Load_Vol_Agua : IN std_logic;
	Reset_Modo : IN std_logic;
	Load_Modo : IN std_logic;
	Load_temp : IN std_logic;
	Reset_Cont : IN std_logic;
	Timeout : OUT std_logic;
	pino_extra_baixo : OUT std_logic;
	pino_baixo : OUT std_logic;
	pino_medio : OUT std_logic;
	pino_alto : OUT std_logic;
	pino_economico : OUT std_logic;
	pino_delicado : OUT std_logic;
	pino_pesado : OUT std_logic;
	pino_normal : OUT std_logic;
	BCD : OUT std_logic_vector(6 DOWNTO 0)
	);
END Datapath;

-- Design Ports Information
-- Timeout	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pino_extra_baixo	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pino_baixo	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pino_medio	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pino_alto	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pino_economico	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pino_delicado	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pino_pesado	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- pino_normal	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD[0]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD[1]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD[2]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD[3]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD[4]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- BCD[6]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_Cont	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Load_temp	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Volume_Agua[0]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_Vol_Agua	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Load_Vol_Agua	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Volume_Agua[3]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Volume_Agua[2]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Volume_Agua[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Modo_Lavagem[0]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_Modo	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Load_Modo	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Modo_Lavagem[3]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Modo_Lavagem[2]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Modo_Lavagem[1]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Volume_Agua : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Modo_Lavagem : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_Reset_Vol_Agua : std_logic;
SIGNAL ww_Load_Vol_Agua : std_logic;
SIGNAL ww_Reset_Modo : std_logic;
SIGNAL ww_Load_Modo : std_logic;
SIGNAL ww_Load_temp : std_logic;
SIGNAL ww_Reset_Cont : std_logic;
SIGNAL ww_Timeout : std_logic;
SIGNAL ww_pino_extra_baixo : std_logic;
SIGNAL ww_pino_baixo : std_logic;
SIGNAL ww_pino_medio : std_logic;
SIGNAL ww_pino_alto : std_logic;
SIGNAL ww_pino_economico : std_logic;
SIGNAL ww_pino_delicado : std_logic;
SIGNAL ww_pino_pesado : std_logic;
SIGNAL ww_pino_normal : std_logic;
SIGNAL ww_BCD : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_Cont~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_Modo~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset_Vol_Agua~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_Temporizador|Add0~6_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~12_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~14_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~20_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~32_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~36_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~48_combout\ : std_logic;
SIGNAL \instancia_Temporizador|counter_out[3]~3_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector36~3_combout\ : std_logic;
SIGNAL \instancia_Temporizador|LessThan1~5_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector17~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector28~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector29~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|state[1]~2_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector68~1_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector11~0_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \instancia_Temporizador|Selector25~0_combout\ : std_logic;
SIGNAL \Reset_Cont~combout\ : std_logic;
SIGNAL \Reset_Cont~clkctrl_outclk\ : std_logic;
SIGNAL \instancia_Temporizador|Selector36~4_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector68~2_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector32~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|LessThan1~0_combout\ : std_logic;
SIGNAL \instancia_Reg_Vol_Agua|Q[1]~feeder_combout\ : std_logic;
SIGNAL \Reset_Vol_Agua~combout\ : std_logic;
SIGNAL \Reset_Vol_Agua~clkctrl_outclk\ : std_logic;
SIGNAL \Load_Vol_Agua~combout\ : std_logic;
SIGNAL \instancia_Reg_Vol_Agua|Q[0]~feeder_combout\ : std_logic;
SIGNAL \instancia_Reg_Vol_Agua|Q[3]~feeder_combout\ : std_logic;
SIGNAL \instancia_Temporizador|comb~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|comb~1_combout\ : std_logic;
SIGNAL \instancia_Comp_vol_agua|Equal2~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector35~1_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector35~2_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector35~3_combout\ : std_logic;
SIGNAL \Load_temp~combout\ : std_logic;
SIGNAL \instancia_Temporizador|LessThan0~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|LessThan0~1_combout\ : std_logic;
SIGNAL \instancia_Temporizador|LessThan0~2_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector68~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector68~3_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector68~4_combout\ : std_logic;
SIGNAL \instancia_Temporizador|state[2]~8_combout\ : std_logic;
SIGNAL \instancia_Temporizador|state[2]~4_combout\ : std_logic;
SIGNAL \instancia_Temporizador|state[2]~6_combout\ : std_logic;
SIGNAL \instancia_Temporizador|state[2]~7_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector35~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|state[1]~3_combout\ : std_logic;
SIGNAL \instancia_Temporizador|state[1]~5_combout\ : std_logic;
SIGNAL \instancia_Temporizador|counter_out[3]~9_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~1\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~2_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector34~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~3\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~4_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector33~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~5\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~7\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~8_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector31~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~9\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~10_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector30~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~11\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~13\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~15\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~16_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector27~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~17\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~18_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector26~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~19\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~21\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~22_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector24~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|counter_out[3]~2_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~23\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~24_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector23~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~25\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~26_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector22~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~27\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~28_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector21~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|counter_out[3]~1_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector19~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~29\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~30_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector20~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~31\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~33\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~34_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector18~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~35\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~37\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~38_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector16~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|counter_out[3]~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|counter_out[3]~4_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~39\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~40_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector15~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~41\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~42_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector14~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~43\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~45\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~46_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector12~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~47\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~49\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~50_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector10~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~51\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~52_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector9~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|LessThan1~2_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~44_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector13~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|LessThan1~3_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~53\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~54_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector8~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~55\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~56_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector7~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~57\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~58_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector6~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|LessThan1~1_combout\ : std_logic;
SIGNAL \instancia_Temporizador|LessThan1~4_combout\ : std_logic;
SIGNAL \instancia_Temporizador|counter_out[3]~5_combout\ : std_logic;
SIGNAL \instancia_Temporizador|counter_out[3]~6_combout\ : std_logic;
SIGNAL \instancia_Temporizador|counter_out[3]~7_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~59\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~60_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector5~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~61\ : std_logic;
SIGNAL \instancia_Temporizador|Add0~62_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector4~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|LessThan1~6_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector36~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector36~1_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector36~2_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector36~5_combout\ : std_logic;
SIGNAL \instancia_Temporizador|timeout~regout\ : std_logic;
SIGNAL \instancia_Reg_Vol_Agua|Q[2]~feeder_combout\ : std_logic;
SIGNAL \instancia_Comp_vol_agua|Equal0~0_combout\ : std_logic;
SIGNAL \instancia_Comp_vol_agua|Equal1~0_combout\ : std_logic;
SIGNAL \instancia_Comp_vol_agua|Equal3~0_combout\ : std_logic;
SIGNAL \Reset_Modo~combout\ : std_logic;
SIGNAL \Reset_Modo~clkctrl_outclk\ : std_logic;
SIGNAL \Load_Modo~combout\ : std_logic;
SIGNAL \instancia_Reg_Modo|Q[1]~feeder_combout\ : std_logic;
SIGNAL \instancia_Reg_Modo|Q[0]~feeder_combout\ : std_logic;
SIGNAL \instancia_Reg_Modo|Q[3]~feeder_combout\ : std_logic;
SIGNAL \instancia_Comp_modo_lavgm|Equal0~0_combout\ : std_logic;
SIGNAL \instancia_Comp_modo_lavgm|Equal1~0_combout\ : std_logic;
SIGNAL \instancia_Comp_modo_lavgm|Equal2~0_combout\ : std_logic;
SIGNAL \instancia_Comp_modo_lavgm|Equal3~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector1~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|counter_out[3]~8_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector2~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector0~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|Selector3~0_combout\ : std_logic;
SIGNAL \instancia_Bcd_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \instancia_Bcd_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \instancia_Bcd_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \instancia_Bcd_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \instancia_Bcd_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \instancia_Bcd_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \instancia_Bcd_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \instancia_Temporizador|tempo_limite_enchendo\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instancia_Temporizador|state\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instancia_Temporizador|counter_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_Temporizador|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Volume_Agua~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Modo_Lavagem~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_Reg_Vol_Agua|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_Reg_Modo|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_Bcd_7seg|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \instancia_Comp_vol_agua|ALT_INV_Equal2~0_combout\ : std_logic;

BEGIN

ww_Volume_Agua <= Volume_Agua;
ww_Modo_Lavagem <= Modo_Lavagem;
ww_clock <= clock;
ww_Reset_Vol_Agua <= Reset_Vol_Agua;
ww_Load_Vol_Agua <= Load_Vol_Agua;
ww_Reset_Modo <= Reset_Modo;
ww_Load_Modo <= Load_Modo;
ww_Load_temp <= Load_temp;
ww_Reset_Cont <= Reset_Cont;
Timeout <= ww_Timeout;
pino_extra_baixo <= ww_pino_extra_baixo;
pino_baixo <= ww_pino_baixo;
pino_medio <= ww_pino_medio;
pino_alto <= ww_pino_alto;
pino_economico <= ww_pino_economico;
pino_delicado <= ww_pino_delicado;
pino_pesado <= ww_pino_pesado;
pino_normal <= ww_pino_normal;
BCD <= ww_BCD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\Reset_Cont~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_Cont~combout\);

\Reset_Modo~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_Modo~combout\);

\Reset_Vol_Agua~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset_Vol_Agua~combout\);
\instancia_Bcd_7seg|ALT_INV_Mux0~0_combout\ <= NOT \instancia_Bcd_7seg|Mux0~0_combout\;
\instancia_Comp_vol_agua|ALT_INV_Equal2~0_combout\ <= NOT \instancia_Comp_vol_agua|Equal2~0_combout\;

-- Location: LCCOMB_X15_Y25_N6
\instancia_Temporizador|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~6_combout\ = (\instancia_Temporizador|counter\(3) & (!\instancia_Temporizador|Add0~5\)) # (!\instancia_Temporizador|counter\(3) & ((\instancia_Temporizador|Add0~5\) # (GND)))
-- \instancia_Temporizador|Add0~7\ = CARRY((!\instancia_Temporizador|Add0~5\) # (!\instancia_Temporizador|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(3),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~5\,
	combout => \instancia_Temporizador|Add0~6_combout\,
	cout => \instancia_Temporizador|Add0~7\);

-- Location: LCCOMB_X15_Y25_N12
\instancia_Temporizador|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~12_combout\ = (\instancia_Temporizador|counter\(6) & (\instancia_Temporizador|Add0~11\ $ (GND))) # (!\instancia_Temporizador|counter\(6) & (!\instancia_Temporizador|Add0~11\ & VCC))
-- \instancia_Temporizador|Add0~13\ = CARRY((\instancia_Temporizador|counter\(6) & !\instancia_Temporizador|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(6),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~11\,
	combout => \instancia_Temporizador|Add0~12_combout\,
	cout => \instancia_Temporizador|Add0~13\);

-- Location: LCCOMB_X15_Y25_N14
\instancia_Temporizador|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~14_combout\ = (\instancia_Temporizador|counter\(7) & (!\instancia_Temporizador|Add0~13\)) # (!\instancia_Temporizador|counter\(7) & ((\instancia_Temporizador|Add0~13\) # (GND)))
-- \instancia_Temporizador|Add0~15\ = CARRY((!\instancia_Temporizador|Add0~13\) # (!\instancia_Temporizador|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(7),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~13\,
	combout => \instancia_Temporizador|Add0~14_combout\,
	cout => \instancia_Temporizador|Add0~15\);

-- Location: LCCOMB_X15_Y25_N20
\instancia_Temporizador|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~20_combout\ = (\instancia_Temporizador|counter\(10) & (\instancia_Temporizador|Add0~19\ $ (GND))) # (!\instancia_Temporizador|counter\(10) & (!\instancia_Temporizador|Add0~19\ & VCC))
-- \instancia_Temporizador|Add0~21\ = CARRY((\instancia_Temporizador|counter\(10) & !\instancia_Temporizador|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(10),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~19\,
	combout => \instancia_Temporizador|Add0~20_combout\,
	cout => \instancia_Temporizador|Add0~21\);

-- Location: LCCOMB_X15_Y24_N0
\instancia_Temporizador|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~32_combout\ = (\instancia_Temporizador|counter\(16) & (\instancia_Temporizador|Add0~31\ $ (GND))) # (!\instancia_Temporizador|counter\(16) & (!\instancia_Temporizador|Add0~31\ & VCC))
-- \instancia_Temporizador|Add0~33\ = CARRY((\instancia_Temporizador|counter\(16) & !\instancia_Temporizador|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(16),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~31\,
	combout => \instancia_Temporizador|Add0~32_combout\,
	cout => \instancia_Temporizador|Add0~33\);

-- Location: LCCOMB_X15_Y24_N4
\instancia_Temporizador|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~36_combout\ = (\instancia_Temporizador|counter\(18) & (\instancia_Temporizador|Add0~35\ $ (GND))) # (!\instancia_Temporizador|counter\(18) & (!\instancia_Temporizador|Add0~35\ & VCC))
-- \instancia_Temporizador|Add0~37\ = CARRY((\instancia_Temporizador|counter\(18) & !\instancia_Temporizador|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(18),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~35\,
	combout => \instancia_Temporizador|Add0~36_combout\,
	cout => \instancia_Temporizador|Add0~37\);

-- Location: LCCOMB_X15_Y24_N16
\instancia_Temporizador|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~48_combout\ = (\instancia_Temporizador|counter\(24) & (\instancia_Temporizador|Add0~47\ $ (GND))) # (!\instancia_Temporizador|counter\(24) & (!\instancia_Temporizador|Add0~47\ & VCC))
-- \instancia_Temporizador|Add0~49\ = CARRY((\instancia_Temporizador|counter\(24) & !\instancia_Temporizador|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(24),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~47\,
	combout => \instancia_Temporizador|Add0~48_combout\,
	cout => \instancia_Temporizador|Add0~49\);

-- Location: LCFF_X16_Y25_N21
\instancia_Temporizador|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector17~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(18));

-- Location: LCFF_X16_Y25_N27
\instancia_Temporizador|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector28~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(7));

-- Location: LCFF_X16_Y25_N5
\instancia_Temporizador|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector29~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(6));

-- Location: LCCOMB_X17_Y25_N16
\instancia_Temporizador|counter_out[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|counter_out[3]~3_combout\ = (!\instancia_Temporizador|counter\(4) & (!\instancia_Temporizador|counter\(7) & (!\instancia_Temporizador|counter\(6) & !\instancia_Temporizador|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(4),
	datab => \instancia_Temporizador|counter\(7),
	datac => \instancia_Temporizador|counter\(6),
	datad => \instancia_Temporizador|counter\(5),
	combout => \instancia_Temporizador|counter_out[3]~3_combout\);

-- Location: LCFF_X16_Y24_N17
\instancia_Temporizador|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector11~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(24));

-- Location: LCCOMB_X18_Y24_N12
\instancia_Temporizador|Selector36~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector36~3_combout\ = (\instancia_Temporizador|state\(2) & ((\instancia_Temporizador|state\(1) & ((\instancia_Temporizador|timeout~regout\))) # (!\instancia_Temporizador|state\(1) & (\instancia_Temporizador|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|state\(0),
	datab => \instancia_Temporizador|state\(1),
	datac => \instancia_Temporizador|state\(2),
	datad => \instancia_Temporizador|timeout~regout\,
	combout => \instancia_Temporizador|Selector36~3_combout\);

-- Location: LCCOMB_X17_Y25_N22
\instancia_Temporizador|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|LessThan1~5_combout\ = (!\instancia_Temporizador|counter\(2) & !\instancia_Temporizador|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(2),
	datad => \instancia_Temporizador|counter\(3),
	combout => \instancia_Temporizador|LessThan1~5_combout\);

-- Location: LCCOMB_X16_Y25_N20
\instancia_Temporizador|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector17~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~36_combout\,
	combout => \instancia_Temporizador|Selector17~0_combout\);

-- Location: LCCOMB_X16_Y25_N26
\instancia_Temporizador|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector28~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~14_combout\,
	combout => \instancia_Temporizador|Selector28~0_combout\);

-- Location: LCCOMB_X16_Y25_N4
\instancia_Temporizador|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector29~0_combout\ = (\instancia_Temporizador|Add0~12_combout\ & !\instancia_Temporizador|counter_out[3]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|Add0~12_combout\,
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	combout => \instancia_Temporizador|Selector29~0_combout\);

-- Location: LCCOMB_X18_Y24_N6
\instancia_Temporizador|state[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|state[1]~2_combout\ = (!\instancia_Temporizador|state\(2) & (\instancia_Temporizador|state\(1) $ (\instancia_Temporizador|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|state\(1),
	datac => \instancia_Temporizador|state\(2),
	datad => \instancia_Temporizador|state\(0),
	combout => \instancia_Temporizador|state[1]~2_combout\);

-- Location: LCCOMB_X18_Y24_N26
\instancia_Temporizador|Selector68~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector68~1_combout\ = (!\instancia_Temporizador|state\(2) & (!\instancia_Temporizador|counter\(31) & !\instancia_Temporizador|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|state\(2),
	datac => \instancia_Temporizador|counter\(31),
	datad => \instancia_Temporizador|state\(0),
	combout => \instancia_Temporizador|Selector68~1_combout\);

-- Location: LCCOMB_X16_Y24_N16
\instancia_Temporizador|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector11~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~48_combout\,
	combout => \instancia_Temporizador|Selector11~0_combout\);

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

-- Location: LCCOMB_X16_Y25_N0
\instancia_Temporizador|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector25~0_combout\ = (\instancia_Temporizador|Add0~20_combout\ & !\instancia_Temporizador|counter_out[3]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|Add0~20_combout\,
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	combout => \instancia_Temporizador|Selector25~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_Cont~I\ : cycloneii_io
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
	padio => ww_Reset_Cont,
	combout => \Reset_Cont~combout\);

-- Location: CLKCTRL_G1
\Reset_Cont~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_Cont~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_Cont~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y24_N2
\instancia_Temporizador|Selector36~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector36~4_combout\ = (!\instancia_Temporizador|state\(1) & \instancia_Temporizador|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|state\(1),
	datac => \instancia_Temporizador|state\(2),
	combout => \instancia_Temporizador|Selector36~4_combout\);

-- Location: LCCOMB_X18_Y24_N24
\instancia_Temporizador|Selector68~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector68~2_combout\ = (!\instancia_Temporizador|state\(2) & \instancia_Temporizador|state\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|state\(2),
	datad => \instancia_Temporizador|state\(0),
	combout => \instancia_Temporizador|Selector68~2_combout\);

-- Location: LCCOMB_X14_Y25_N14
\instancia_Temporizador|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector32~0_combout\ = (\instancia_Temporizador|Add0~6_combout\ & !\instancia_Temporizador|counter_out[3]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|Add0~6_combout\,
	datad => \instancia_Temporizador|counter_out[3]~7_combout\,
	combout => \instancia_Temporizador|Selector32~0_combout\);

-- Location: LCFF_X14_Y25_N15
\instancia_Temporizador|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector32~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(3));

-- Location: LCCOMB_X17_Y24_N20
\instancia_Temporizador|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|LessThan1~0_combout\ = (\instancia_Temporizador|counter\(2)) # ((\instancia_Temporizador|counter\(3)) # (!\instancia_Temporizador|counter_out[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(2),
	datab => \instancia_Temporizador|counter\(3),
	datac => \instancia_Temporizador|counter_out[3]~4_combout\,
	combout => \instancia_Temporizador|LessThan1~0_combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Volume_Agua[1]~I\ : cycloneii_io
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
	padio => ww_Volume_Agua(1),
	combout => \Volume_Agua~combout\(1));

-- Location: LCCOMB_X1_Y25_N18
\instancia_Reg_Vol_Agua|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_Vol_Agua|Q[1]~feeder_combout\ = \Volume_Agua~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Volume_Agua~combout\(1),
	combout => \instancia_Reg_Vol_Agua|Q[1]~feeder_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_Vol_Agua~I\ : cycloneii_io
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
	padio => ww_Reset_Vol_Agua,
	combout => \Reset_Vol_Agua~combout\);

-- Location: CLKCTRL_G11
\Reset_Vol_Agua~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_Vol_Agua~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_Vol_Agua~clkctrl_outclk\);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Load_Vol_Agua~I\ : cycloneii_io
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
	padio => ww_Load_Vol_Agua,
	combout => \Load_Vol_Agua~combout\);

-- Location: LCFF_X1_Y25_N19
\instancia_Reg_Vol_Agua|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_Vol_Agua|Q[1]~feeder_combout\,
	aclr => \Reset_Vol_Agua~clkctrl_outclk\,
	ena => \Load_Vol_Agua~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_Vol_Agua|Q\(1));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Volume_Agua[0]~I\ : cycloneii_io
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
	padio => ww_Volume_Agua(0),
	combout => \Volume_Agua~combout\(0));

-- Location: LCCOMB_X1_Y25_N20
\instancia_Reg_Vol_Agua|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_Vol_Agua|Q[0]~feeder_combout\ = \Volume_Agua~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Volume_Agua~combout\(0),
	combout => \instancia_Reg_Vol_Agua|Q[0]~feeder_combout\);

-- Location: LCFF_X1_Y25_N21
\instancia_Reg_Vol_Agua|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_Vol_Agua|Q[0]~feeder_combout\,
	aclr => \Reset_Vol_Agua~clkctrl_outclk\,
	ena => \Load_Vol_Agua~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_Vol_Agua|Q\(0));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Volume_Agua[3]~I\ : cycloneii_io
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
	padio => ww_Volume_Agua(3),
	combout => \Volume_Agua~combout\(3));

-- Location: LCCOMB_X1_Y25_N6
\instancia_Reg_Vol_Agua|Q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_Vol_Agua|Q[3]~feeder_combout\ = \Volume_Agua~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Volume_Agua~combout\(3),
	combout => \instancia_Reg_Vol_Agua|Q[3]~feeder_combout\);

-- Location: LCFF_X1_Y25_N7
\instancia_Reg_Vol_Agua|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_Vol_Agua|Q[3]~feeder_combout\,
	aclr => \Reset_Vol_Agua~clkctrl_outclk\,
	ena => \Load_Vol_Agua~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_Vol_Agua|Q\(3));

-- Location: LCCOMB_X1_Y25_N4
\instancia_Temporizador|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|comb~0_combout\ = (!\instancia_Reg_Vol_Agua|Q\(3) & ((\instancia_Reg_Vol_Agua|Q\(2) & (!\instancia_Reg_Vol_Agua|Q\(1) & !\instancia_Reg_Vol_Agua|Q\(0))) # (!\instancia_Reg_Vol_Agua|Q\(2) & (\instancia_Reg_Vol_Agua|Q\(1) $ 
-- (\instancia_Reg_Vol_Agua|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_Vol_Agua|Q\(2),
	datab => \instancia_Reg_Vol_Agua|Q\(1),
	datac => \instancia_Reg_Vol_Agua|Q\(0),
	datad => \instancia_Reg_Vol_Agua|Q\(3),
	combout => \instancia_Temporizador|comb~0_combout\);

-- Location: LCCOMB_X1_Y25_N0
\instancia_Temporizador|tempo_limite_enchendo[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|tempo_limite_enchendo\(2) = (!\instancia_Temporizador|comb~0_combout\ & ((\instancia_Comp_vol_agua|Equal3~0_combout\) # (\instancia_Temporizador|tempo_limite_enchendo\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Comp_vol_agua|Equal3~0_combout\,
	datac => \instancia_Temporizador|comb~0_combout\,
	datad => \instancia_Temporizador|tempo_limite_enchendo\(2),
	combout => \instancia_Temporizador|tempo_limite_enchendo\(2));

-- Location: LCCOMB_X1_Y25_N22
\instancia_Temporizador|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|comb~1_combout\ = (!\instancia_Reg_Vol_Agua|Q\(2) & ((\instancia_Reg_Vol_Agua|Q\(1) & (!\instancia_Reg_Vol_Agua|Q\(0) & !\instancia_Reg_Vol_Agua|Q\(3))) # (!\instancia_Reg_Vol_Agua|Q\(1) & (\instancia_Reg_Vol_Agua|Q\(0) $ 
-- (\instancia_Reg_Vol_Agua|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_Vol_Agua|Q\(2),
	datab => \instancia_Reg_Vol_Agua|Q\(1),
	datac => \instancia_Reg_Vol_Agua|Q\(0),
	datad => \instancia_Reg_Vol_Agua|Q\(3),
	combout => \instancia_Temporizador|comb~1_combout\);

-- Location: LCCOMB_X1_Y25_N16
\instancia_Comp_vol_agua|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Comp_vol_agua|Equal2~0_combout\ = ((\instancia_Reg_Vol_Agua|Q\(1)) # ((\instancia_Reg_Vol_Agua|Q\(0)) # (\instancia_Reg_Vol_Agua|Q\(3)))) # (!\instancia_Reg_Vol_Agua|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_Vol_Agua|Q\(2),
	datab => \instancia_Reg_Vol_Agua|Q\(1),
	datac => \instancia_Reg_Vol_Agua|Q\(0),
	datad => \instancia_Reg_Vol_Agua|Q\(3),
	combout => \instancia_Comp_vol_agua|Equal2~0_combout\);

-- Location: LCCOMB_X1_Y25_N12
\instancia_Temporizador|tempo_limite_enchendo[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|tempo_limite_enchendo\(0) = (!\instancia_Temporizador|comb~1_combout\ & ((\instancia_Temporizador|tempo_limite_enchendo\(0)) # (!\instancia_Comp_vol_agua|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|comb~1_combout\,
	datac => \instancia_Comp_vol_agua|Equal2~0_combout\,
	datad => \instancia_Temporizador|tempo_limite_enchendo\(0),
	combout => \instancia_Temporizador|tempo_limite_enchendo\(0));

-- Location: LCCOMB_X15_Y25_N0
\instancia_Temporizador|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~0_combout\ = \instancia_Temporizador|counter\(0) $ (GND)
-- \instancia_Temporizador|Add0~1\ = CARRY(!\instancia_Temporizador|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(0),
	datad => VCC,
	combout => \instancia_Temporizador|Add0~0_combout\,
	cout => \instancia_Temporizador|Add0~1\);

-- Location: LCCOMB_X17_Y24_N0
\instancia_Temporizador|Selector35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector35~1_combout\ = (\instancia_Temporizador|counter\(31)) # ((\instancia_Temporizador|LessThan1~4_combout\ & !\instancia_Temporizador|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|LessThan1~4_combout\,
	datac => \instancia_Temporizador|counter\(31),
	datad => \instancia_Temporizador|LessThan0~2_combout\,
	combout => \instancia_Temporizador|Selector35~1_combout\);

-- Location: LCCOMB_X17_Y24_N30
\instancia_Temporizador|Selector35~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector35~2_combout\ = (!\instancia_Temporizador|Add0~0_combout\ & ((\instancia_Temporizador|Selector35~0_combout\ & (\instancia_Temporizador|LessThan1~6_combout\)) # (!\instancia_Temporizador|Selector35~0_combout\ & 
-- ((\instancia_Temporizador|Selector35~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|Selector35~0_combout\,
	datab => \instancia_Temporizador|Add0~0_combout\,
	datac => \instancia_Temporizador|LessThan1~6_combout\,
	datad => \instancia_Temporizador|Selector35~1_combout\,
	combout => \instancia_Temporizador|Selector35~2_combout\);

-- Location: LCCOMB_X16_Y24_N0
\instancia_Temporizador|Selector35~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector35~3_combout\ = (\instancia_Temporizador|Selector35~0_combout\ & (((\instancia_Temporizador|Selector35~2_combout\)))) # (!\instancia_Temporizador|Selector35~0_combout\ & ((\instancia_Temporizador|state\(2) & 
-- (\instancia_Temporizador|counter\(0))) # (!\instancia_Temporizador|state\(2) & ((\instancia_Temporizador|Selector35~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|Selector35~0_combout\,
	datab => \instancia_Temporizador|state\(2),
	datac => \instancia_Temporizador|counter\(0),
	datad => \instancia_Temporizador|Selector35~2_combout\,
	combout => \instancia_Temporizador|Selector35~3_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Load_temp~I\ : cycloneii_io
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
	padio => ww_Load_temp,
	combout => \Load_temp~combout\);

-- Location: LCFF_X16_Y24_N1
\instancia_Temporizador|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector35~3_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \Load_temp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(0));

-- Location: LCCOMB_X1_Y25_N30
\instancia_Temporizador|tempo_limite_enchendo[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|tempo_limite_enchendo\(1) = (!\instancia_Comp_vol_agua|Equal3~0_combout\ & ((\instancia_Temporizador|comb~0_combout\) # (\instancia_Temporizador|tempo_limite_enchendo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Comp_vol_agua|Equal3~0_combout\,
	datac => \instancia_Temporizador|comb~0_combout\,
	datad => \instancia_Temporizador|tempo_limite_enchendo\(1),
	combout => \instancia_Temporizador|tempo_limite_enchendo\(1));

-- Location: LCCOMB_X17_Y25_N12
\instancia_Temporizador|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|LessThan0~0_combout\ = (\instancia_Temporizador|counter\(1) & (\instancia_Temporizador|tempo_limite_enchendo\(1) & ((\instancia_Temporizador|tempo_limite_enchendo\(0)) # (\instancia_Temporizador|counter\(0))))) # 
-- (!\instancia_Temporizador|counter\(1) & ((\instancia_Temporizador|tempo_limite_enchendo\(0)) # ((\instancia_Temporizador|counter\(0)) # (\instancia_Temporizador|tempo_limite_enchendo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(1),
	datab => \instancia_Temporizador|tempo_limite_enchendo\(0),
	datac => \instancia_Temporizador|counter\(0),
	datad => \instancia_Temporizador|tempo_limite_enchendo\(1),
	combout => \instancia_Temporizador|LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y25_N26
\instancia_Temporizador|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|LessThan0~1_combout\ = (\instancia_Temporizador|counter\(2) & ((!\instancia_Temporizador|LessThan0~0_combout\) # (!\instancia_Temporizador|tempo_limite_enchendo\(2)))) # (!\instancia_Temporizador|counter\(2) & 
-- (!\instancia_Temporizador|tempo_limite_enchendo\(2) & !\instancia_Temporizador|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(2),
	datac => \instancia_Temporizador|tempo_limite_enchendo\(2),
	datad => \instancia_Temporizador|LessThan0~0_combout\,
	combout => \instancia_Temporizador|LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y24_N6
\instancia_Temporizador|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|LessThan0~2_combout\ = (\instancia_Temporizador|counter\(3)) # ((\instancia_Temporizador|LessThan0~1_combout\) # (!\instancia_Temporizador|counter_out[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(3),
	datac => \instancia_Temporizador|counter_out[3]~4_combout\,
	datad => \instancia_Temporizador|LessThan0~1_combout\,
	combout => \instancia_Temporizador|LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y24_N26
\instancia_Temporizador|Selector68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector68~0_combout\ = ((\instancia_Temporizador|state\(1) & (\instancia_Temporizador|LessThan1~0_combout\)) # (!\instancia_Temporizador|state\(1) & ((\instancia_Temporizador|LessThan0~2_combout\)))) # 
-- (!\instancia_Temporizador|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|LessThan1~4_combout\,
	datab => \instancia_Temporizador|state\(1),
	datac => \instancia_Temporizador|LessThan1~0_combout\,
	datad => \instancia_Temporizador|LessThan0~2_combout\,
	combout => \instancia_Temporizador|Selector68~0_combout\);

-- Location: LCCOMB_X17_Y24_N12
\instancia_Temporizador|Selector68~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector68~3_combout\ = (\instancia_Temporizador|Selector68~1_combout\ & ((\instancia_Temporizador|Selector68~0_combout\) # ((\instancia_Temporizador|Selector68~2_combout\ & \instancia_Temporizador|LessThan1~6_combout\)))) # 
-- (!\instancia_Temporizador|Selector68~1_combout\ & (\instancia_Temporizador|Selector68~2_combout\ & (\instancia_Temporizador|LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|Selector68~1_combout\,
	datab => \instancia_Temporizador|Selector68~2_combout\,
	datac => \instancia_Temporizador|LessThan1~6_combout\,
	datad => \instancia_Temporizador|Selector68~0_combout\,
	combout => \instancia_Temporizador|Selector68~3_combout\);

-- Location: LCCOMB_X17_Y24_N2
\instancia_Temporizador|Selector68~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector68~4_combout\ = (\instancia_Temporizador|Selector68~3_combout\) # ((\instancia_Temporizador|Selector36~4_combout\ & ((\instancia_Temporizador|state\(0)) # (!\instancia_Temporizador|LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|LessThan1~6_combout\,
	datab => \instancia_Temporizador|Selector36~4_combout\,
	datac => \instancia_Temporizador|state\(0),
	datad => \instancia_Temporizador|Selector68~3_combout\,
	combout => \instancia_Temporizador|Selector68~4_combout\);

-- Location: LCFF_X17_Y24_N3
\instancia_Temporizador|state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector68~4_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \Load_temp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|state\(0));

-- Location: LCCOMB_X17_Y24_N18
\instancia_Temporizador|state[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|state[2]~8_combout\ = (!\instancia_Temporizador|state\(2) & (!\instancia_Temporizador|state\(1) & !\instancia_Temporizador|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|state\(2),
	datab => \instancia_Temporizador|state\(1),
	datad => \instancia_Temporizador|state\(0),
	combout => \instancia_Temporizador|state[2]~8_combout\);

-- Location: LCCOMB_X17_Y24_N28
\instancia_Temporizador|state[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|state[2]~4_combout\ = (\instancia_Temporizador|state[2]~8_combout\ & ((\instancia_Temporizador|counter\(31)) # ((\instancia_Temporizador|LessThan1~4_combout\ & !\instancia_Temporizador|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|LessThan1~4_combout\,
	datab => \instancia_Temporizador|state[2]~8_combout\,
	datac => \instancia_Temporizador|counter\(31),
	datad => \instancia_Temporizador|LessThan0~2_combout\,
	combout => \instancia_Temporizador|state[2]~4_combout\);

-- Location: LCCOMB_X18_Y24_N22
\instancia_Temporizador|state[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|state[2]~6_combout\ = (\instancia_Temporizador|Selector68~2_combout\ & (\instancia_Temporizador|state\(1) & (\instancia_Temporizador|state[1]~3_combout\ & !\instancia_Temporizador|state[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|Selector68~2_combout\,
	datab => \instancia_Temporizador|state\(1),
	datac => \instancia_Temporizador|state[1]~3_combout\,
	datad => \instancia_Temporizador|state[2]~4_combout\,
	combout => \instancia_Temporizador|state[2]~6_combout\);

-- Location: LCCOMB_X18_Y24_N4
\instancia_Temporizador|state[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|state[2]~7_combout\ = (\instancia_Temporizador|state[2]~6_combout\) # ((\instancia_Temporizador|state\(2) & ((!\instancia_Temporizador|state[1]~3_combout\) # (!\instancia_Temporizador|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|state\(1),
	datab => \instancia_Temporizador|state[1]~3_combout\,
	datac => \instancia_Temporizador|state\(2),
	datad => \instancia_Temporizador|state[2]~6_combout\,
	combout => \instancia_Temporizador|state[2]~7_combout\);

-- Location: LCFF_X18_Y24_N5
\instancia_Temporizador|state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|state[2]~7_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|state\(2));

-- Location: LCCOMB_X18_Y24_N16
\instancia_Temporizador|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector35~0_combout\ = \instancia_Temporizador|state\(2) $ (((\instancia_Temporizador|state\(1)) # (\instancia_Temporizador|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|state\(1),
	datac => \instancia_Temporizador|state\(2),
	datad => \instancia_Temporizador|state\(0),
	combout => \instancia_Temporizador|Selector35~0_combout\);

-- Location: LCCOMB_X18_Y24_N8
\instancia_Temporizador|state[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|state[1]~3_combout\ = (\Load_temp~combout\ & ((!\instancia_Temporizador|LessThan1~6_combout\) # (!\instancia_Temporizador|Selector35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_temp~combout\,
	datac => \instancia_Temporizador|Selector35~0_combout\,
	datad => \instancia_Temporizador|LessThan1~6_combout\,
	combout => \instancia_Temporizador|state[1]~3_combout\);

-- Location: LCCOMB_X18_Y24_N30
\instancia_Temporizador|state[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|state[1]~5_combout\ = (\instancia_Temporizador|state[1]~3_combout\ & ((\instancia_Temporizador|state[2]~4_combout\ & ((\instancia_Temporizador|state\(1)))) # (!\instancia_Temporizador|state[2]~4_combout\ & 
-- (\instancia_Temporizador|state[1]~2_combout\)))) # (!\instancia_Temporizador|state[1]~3_combout\ & (((\instancia_Temporizador|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|state[1]~2_combout\,
	datab => \instancia_Temporizador|state[1]~3_combout\,
	datac => \instancia_Temporizador|state\(1),
	datad => \instancia_Temporizador|state[2]~4_combout\,
	combout => \instancia_Temporizador|state[1]~5_combout\);

-- Location: LCFF_X18_Y24_N31
\instancia_Temporizador|state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|state[1]~5_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|state\(1));

-- Location: LCCOMB_X17_Y24_N22
\instancia_Temporizador|counter_out[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|counter_out[3]~9_combout\ = (\Load_temp~combout\ & (((!\instancia_Temporizador|state\(1) & !\instancia_Temporizador|state\(0))) # (!\instancia_Temporizador|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|state\(2),
	datab => \instancia_Temporizador|state\(1),
	datac => \Load_temp~combout\,
	datad => \instancia_Temporizador|state\(0),
	combout => \instancia_Temporizador|counter_out[3]~9_combout\);

-- Location: LCFF_X16_Y25_N1
\instancia_Temporizador|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector25~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(10));

-- Location: LCCOMB_X15_Y25_N2
\instancia_Temporizador|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~2_combout\ = (\instancia_Temporizador|counter\(1) & (!\instancia_Temporizador|Add0~1\)) # (!\instancia_Temporizador|counter\(1) & ((\instancia_Temporizador|Add0~1\) # (GND)))
-- \instancia_Temporizador|Add0~3\ = CARRY((!\instancia_Temporizador|Add0~1\) # (!\instancia_Temporizador|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(1),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~1\,
	combout => \instancia_Temporizador|Add0~2_combout\,
	cout => \instancia_Temporizador|Add0~3\);

-- Location: LCCOMB_X16_Y25_N30
\instancia_Temporizador|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector34~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~2_combout\,
	combout => \instancia_Temporizador|Selector34~0_combout\);

-- Location: LCFF_X16_Y25_N31
\instancia_Temporizador|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector34~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(1));

-- Location: LCCOMB_X15_Y25_N4
\instancia_Temporizador|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~4_combout\ = (\instancia_Temporizador|counter\(2) & (\instancia_Temporizador|Add0~3\ $ (GND))) # (!\instancia_Temporizador|counter\(2) & (!\instancia_Temporizador|Add0~3\ & VCC))
-- \instancia_Temporizador|Add0~5\ = CARRY((\instancia_Temporizador|counter\(2) & !\instancia_Temporizador|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(2),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~3\,
	combout => \instancia_Temporizador|Add0~4_combout\,
	cout => \instancia_Temporizador|Add0~5\);

-- Location: LCCOMB_X16_Y25_N8
\instancia_Temporizador|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector33~0_combout\ = (\instancia_Temporizador|Add0~4_combout\ & !\instancia_Temporizador|counter_out[3]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|Add0~4_combout\,
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	combout => \instancia_Temporizador|Selector33~0_combout\);

-- Location: LCFF_X16_Y25_N9
\instancia_Temporizador|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector33~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(2));

-- Location: LCCOMB_X15_Y25_N8
\instancia_Temporizador|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~8_combout\ = (\instancia_Temporizador|counter\(4) & (\instancia_Temporizador|Add0~7\ $ (GND))) # (!\instancia_Temporizador|counter\(4) & (!\instancia_Temporizador|Add0~7\ & VCC))
-- \instancia_Temporizador|Add0~9\ = CARRY((\instancia_Temporizador|counter\(4) & !\instancia_Temporizador|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(4),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~7\,
	combout => \instancia_Temporizador|Add0~8_combout\,
	cout => \instancia_Temporizador|Add0~9\);

-- Location: LCCOMB_X16_Y25_N10
\instancia_Temporizador|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector31~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~8_combout\,
	combout => \instancia_Temporizador|Selector31~0_combout\);

-- Location: LCFF_X16_Y25_N11
\instancia_Temporizador|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector31~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(4));

-- Location: LCCOMB_X15_Y25_N10
\instancia_Temporizador|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~10_combout\ = (\instancia_Temporizador|counter\(5) & (!\instancia_Temporizador|Add0~9\)) # (!\instancia_Temporizador|counter\(5) & ((\instancia_Temporizador|Add0~9\) # (GND)))
-- \instancia_Temporizador|Add0~11\ = CARRY((!\instancia_Temporizador|Add0~9\) # (!\instancia_Temporizador|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(5),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~9\,
	combout => \instancia_Temporizador|Add0~10_combout\,
	cout => \instancia_Temporizador|Add0~11\);

-- Location: LCCOMB_X14_Y25_N16
\instancia_Temporizador|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector30~0_combout\ = (\instancia_Temporizador|Add0~10_combout\ & !\instancia_Temporizador|counter_out[3]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|Add0~10_combout\,
	datad => \instancia_Temporizador|counter_out[3]~7_combout\,
	combout => \instancia_Temporizador|Selector30~0_combout\);

-- Location: LCFF_X14_Y25_N17
\instancia_Temporizador|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector30~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(5));

-- Location: LCCOMB_X15_Y25_N16
\instancia_Temporizador|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~16_combout\ = (\instancia_Temporizador|counter\(8) & (\instancia_Temporizador|Add0~15\ $ (GND))) # (!\instancia_Temporizador|counter\(8) & (!\instancia_Temporizador|Add0~15\ & VCC))
-- \instancia_Temporizador|Add0~17\ = CARRY((\instancia_Temporizador|counter\(8) & !\instancia_Temporizador|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(8),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~15\,
	combout => \instancia_Temporizador|Add0~16_combout\,
	cout => \instancia_Temporizador|Add0~17\);

-- Location: LCCOMB_X16_Y25_N12
\instancia_Temporizador|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector27~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~16_combout\,
	combout => \instancia_Temporizador|Selector27~0_combout\);

-- Location: LCFF_X16_Y25_N13
\instancia_Temporizador|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector27~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(8));

-- Location: LCCOMB_X15_Y25_N18
\instancia_Temporizador|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~18_combout\ = (\instancia_Temporizador|counter\(9) & (!\instancia_Temporizador|Add0~17\)) # (!\instancia_Temporizador|counter\(9) & ((\instancia_Temporizador|Add0~17\) # (GND)))
-- \instancia_Temporizador|Add0~19\ = CARRY((!\instancia_Temporizador|Add0~17\) # (!\instancia_Temporizador|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(9),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~17\,
	combout => \instancia_Temporizador|Add0~18_combout\,
	cout => \instancia_Temporizador|Add0~19\);

-- Location: LCCOMB_X16_Y25_N14
\instancia_Temporizador|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector26~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~18_combout\,
	combout => \instancia_Temporizador|Selector26~0_combout\);

-- Location: LCFF_X16_Y25_N15
\instancia_Temporizador|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector26~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(9));

-- Location: LCCOMB_X15_Y25_N22
\instancia_Temporizador|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~22_combout\ = (\instancia_Temporizador|counter\(11) & (!\instancia_Temporizador|Add0~21\)) # (!\instancia_Temporizador|counter\(11) & ((\instancia_Temporizador|Add0~21\) # (GND)))
-- \instancia_Temporizador|Add0~23\ = CARRY((!\instancia_Temporizador|Add0~21\) # (!\instancia_Temporizador|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(11),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~21\,
	combout => \instancia_Temporizador|Add0~22_combout\,
	cout => \instancia_Temporizador|Add0~23\);

-- Location: LCCOMB_X17_Y25_N20
\instancia_Temporizador|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector24~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~22_combout\,
	combout => \instancia_Temporizador|Selector24~0_combout\);

-- Location: LCFF_X17_Y25_N21
\instancia_Temporizador|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector24~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(11));

-- Location: LCCOMB_X17_Y25_N18
\instancia_Temporizador|counter_out[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|counter_out[3]~2_combout\ = (!\instancia_Temporizador|counter\(9) & (!\instancia_Temporizador|counter\(11) & (!\instancia_Temporizador|counter\(10) & !\instancia_Temporizador|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(9),
	datab => \instancia_Temporizador|counter\(11),
	datac => \instancia_Temporizador|counter\(10),
	datad => \instancia_Temporizador|counter\(8),
	combout => \instancia_Temporizador|counter_out[3]~2_combout\);

-- Location: LCCOMB_X15_Y25_N24
\instancia_Temporizador|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~24_combout\ = (\instancia_Temporizador|counter\(12) & (\instancia_Temporizador|Add0~23\ $ (GND))) # (!\instancia_Temporizador|counter\(12) & (!\instancia_Temporizador|Add0~23\ & VCC))
-- \instancia_Temporizador|Add0~25\ = CARRY((\instancia_Temporizador|counter\(12) & !\instancia_Temporizador|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(12),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~23\,
	combout => \instancia_Temporizador|Add0~24_combout\,
	cout => \instancia_Temporizador|Add0~25\);

-- Location: LCCOMB_X17_Y25_N4
\instancia_Temporizador|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector23~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~24_combout\,
	combout => \instancia_Temporizador|Selector23~0_combout\);

-- Location: LCFF_X17_Y25_N5
\instancia_Temporizador|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector23~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(12));

-- Location: LCCOMB_X15_Y25_N26
\instancia_Temporizador|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~26_combout\ = (\instancia_Temporizador|counter\(13) & (!\instancia_Temporizador|Add0~25\)) # (!\instancia_Temporizador|counter\(13) & ((\instancia_Temporizador|Add0~25\) # (GND)))
-- \instancia_Temporizador|Add0~27\ = CARRY((!\instancia_Temporizador|Add0~25\) # (!\instancia_Temporizador|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(13),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~25\,
	combout => \instancia_Temporizador|Add0~26_combout\,
	cout => \instancia_Temporizador|Add0~27\);

-- Location: LCCOMB_X17_Y25_N2
\instancia_Temporizador|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector22~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~26_combout\,
	combout => \instancia_Temporizador|Selector22~0_combout\);

-- Location: LCFF_X17_Y25_N3
\instancia_Temporizador|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector22~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(13));

-- Location: LCCOMB_X15_Y25_N28
\instancia_Temporizador|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~28_combout\ = (\instancia_Temporizador|counter\(14) & (\instancia_Temporizador|Add0~27\ $ (GND))) # (!\instancia_Temporizador|counter\(14) & (!\instancia_Temporizador|Add0~27\ & VCC))
-- \instancia_Temporizador|Add0~29\ = CARRY((\instancia_Temporizador|counter\(14) & !\instancia_Temporizador|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(14),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~27\,
	combout => \instancia_Temporizador|Add0~28_combout\,
	cout => \instancia_Temporizador|Add0~29\);

-- Location: LCCOMB_X16_Y24_N24
\instancia_Temporizador|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector21~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~28_combout\,
	combout => \instancia_Temporizador|Selector21~0_combout\);

-- Location: LCFF_X16_Y24_N25
\instancia_Temporizador|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector21~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(14));

-- Location: LCCOMB_X17_Y25_N10
\instancia_Temporizador|counter_out[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|counter_out[3]~1_combout\ = (!\instancia_Temporizador|counter\(15) & (!\instancia_Temporizador|counter\(12) & (!\instancia_Temporizador|counter\(14) & !\instancia_Temporizador|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(15),
	datab => \instancia_Temporizador|counter\(12),
	datac => \instancia_Temporizador|counter\(14),
	datad => \instancia_Temporizador|counter\(13),
	combout => \instancia_Temporizador|counter_out[3]~1_combout\);

-- Location: LCCOMB_X16_Y25_N16
\instancia_Temporizador|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector19~0_combout\ = (\instancia_Temporizador|Add0~32_combout\ & !\instancia_Temporizador|counter_out[3]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|Add0~32_combout\,
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	combout => \instancia_Temporizador|Selector19~0_combout\);

-- Location: LCFF_X16_Y25_N17
\instancia_Temporizador|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector19~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(16));

-- Location: LCCOMB_X15_Y25_N30
\instancia_Temporizador|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~30_combout\ = (\instancia_Temporizador|counter\(15) & (!\instancia_Temporizador|Add0~29\)) # (!\instancia_Temporizador|counter\(15) & ((\instancia_Temporizador|Add0~29\) # (GND)))
-- \instancia_Temporizador|Add0~31\ = CARRY((!\instancia_Temporizador|Add0~29\) # (!\instancia_Temporizador|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(15),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~29\,
	combout => \instancia_Temporizador|Add0~30_combout\,
	cout => \instancia_Temporizador|Add0~31\);

-- Location: LCCOMB_X17_Y25_N24
\instancia_Temporizador|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector20~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~30_combout\,
	combout => \instancia_Temporizador|Selector20~0_combout\);

-- Location: LCFF_X17_Y25_N25
\instancia_Temporizador|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector20~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(15));

-- Location: LCCOMB_X15_Y24_N2
\instancia_Temporizador|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~34_combout\ = (\instancia_Temporizador|counter\(17) & (!\instancia_Temporizador|Add0~33\)) # (!\instancia_Temporizador|counter\(17) & ((\instancia_Temporizador|Add0~33\) # (GND)))
-- \instancia_Temporizador|Add0~35\ = CARRY((!\instancia_Temporizador|Add0~33\) # (!\instancia_Temporizador|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(17),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~33\,
	combout => \instancia_Temporizador|Add0~34_combout\,
	cout => \instancia_Temporizador|Add0~35\);

-- Location: LCCOMB_X16_Y25_N2
\instancia_Temporizador|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector18~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~34_combout\,
	combout => \instancia_Temporizador|Selector18~0_combout\);

-- Location: LCFF_X16_Y25_N3
\instancia_Temporizador|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector18~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(17));

-- Location: LCCOMB_X15_Y24_N6
\instancia_Temporizador|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~38_combout\ = (\instancia_Temporizador|counter\(19) & (!\instancia_Temporizador|Add0~37\)) # (!\instancia_Temporizador|counter\(19) & ((\instancia_Temporizador|Add0~37\) # (GND)))
-- \instancia_Temporizador|Add0~39\ = CARRY((!\instancia_Temporizador|Add0~37\) # (!\instancia_Temporizador|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(19),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~37\,
	combout => \instancia_Temporizador|Add0~38_combout\,
	cout => \instancia_Temporizador|Add0~39\);

-- Location: LCCOMB_X16_Y24_N6
\instancia_Temporizador|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector16~0_combout\ = (\instancia_Temporizador|Add0~38_combout\ & !\instancia_Temporizador|counter_out[3]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|Add0~38_combout\,
	datad => \instancia_Temporizador|counter_out[3]~7_combout\,
	combout => \instancia_Temporizador|Selector16~0_combout\);

-- Location: LCFF_X16_Y24_N7
\instancia_Temporizador|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector16~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(19));

-- Location: LCCOMB_X16_Y25_N6
\instancia_Temporizador|counter_out[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|counter_out[3]~0_combout\ = (!\instancia_Temporizador|counter\(18) & (!\instancia_Temporizador|counter\(17) & (!\instancia_Temporizador|counter\(16) & !\instancia_Temporizador|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(18),
	datab => \instancia_Temporizador|counter\(17),
	datac => \instancia_Temporizador|counter\(16),
	datad => \instancia_Temporizador|counter\(19),
	combout => \instancia_Temporizador|counter_out[3]~0_combout\);

-- Location: LCCOMB_X17_Y24_N24
\instancia_Temporizador|counter_out[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|counter_out[3]~4_combout\ = (\instancia_Temporizador|counter_out[3]~3_combout\ & (\instancia_Temporizador|counter_out[3]~2_combout\ & (\instancia_Temporizador|counter_out[3]~1_combout\ & 
-- \instancia_Temporizador|counter_out[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter_out[3]~3_combout\,
	datab => \instancia_Temporizador|counter_out[3]~2_combout\,
	datac => \instancia_Temporizador|counter_out[3]~1_combout\,
	datad => \instancia_Temporizador|counter_out[3]~0_combout\,
	combout => \instancia_Temporizador|counter_out[3]~4_combout\);

-- Location: LCCOMB_X15_Y24_N8
\instancia_Temporizador|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~40_combout\ = (\instancia_Temporizador|counter\(20) & (\instancia_Temporizador|Add0~39\ $ (GND))) # (!\instancia_Temporizador|counter\(20) & (!\instancia_Temporizador|Add0~39\ & VCC))
-- \instancia_Temporizador|Add0~41\ = CARRY((\instancia_Temporizador|counter\(20) & !\instancia_Temporizador|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(20),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~39\,
	combout => \instancia_Temporizador|Add0~40_combout\,
	cout => \instancia_Temporizador|Add0~41\);

-- Location: LCCOMB_X16_Y25_N24
\instancia_Temporizador|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector15~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~40_combout\,
	combout => \instancia_Temporizador|Selector15~0_combout\);

-- Location: LCFF_X16_Y25_N25
\instancia_Temporizador|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector15~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(20));

-- Location: LCCOMB_X15_Y24_N10
\instancia_Temporizador|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~42_combout\ = (\instancia_Temporizador|counter\(21) & (!\instancia_Temporizador|Add0~41\)) # (!\instancia_Temporizador|counter\(21) & ((\instancia_Temporizador|Add0~41\) # (GND)))
-- \instancia_Temporizador|Add0~43\ = CARRY((!\instancia_Temporizador|Add0~41\) # (!\instancia_Temporizador|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(21),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~41\,
	combout => \instancia_Temporizador|Add0~42_combout\,
	cout => \instancia_Temporizador|Add0~43\);

-- Location: LCCOMB_X16_Y25_N22
\instancia_Temporizador|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector14~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~42_combout\,
	combout => \instancia_Temporizador|Selector14~0_combout\);

-- Location: LCFF_X16_Y25_N23
\instancia_Temporizador|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector14~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(21));

-- Location: LCCOMB_X15_Y24_N12
\instancia_Temporizador|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~44_combout\ = (\instancia_Temporizador|counter\(22) & (\instancia_Temporizador|Add0~43\ $ (GND))) # (!\instancia_Temporizador|counter\(22) & (!\instancia_Temporizador|Add0~43\ & VCC))
-- \instancia_Temporizador|Add0~45\ = CARRY((\instancia_Temporizador|counter\(22) & !\instancia_Temporizador|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(22),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~43\,
	combout => \instancia_Temporizador|Add0~44_combout\,
	cout => \instancia_Temporizador|Add0~45\);

-- Location: LCCOMB_X15_Y24_N14
\instancia_Temporizador|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~46_combout\ = (\instancia_Temporizador|counter\(23) & (!\instancia_Temporizador|Add0~45\)) # (!\instancia_Temporizador|counter\(23) & ((\instancia_Temporizador|Add0~45\) # (GND)))
-- \instancia_Temporizador|Add0~47\ = CARRY((!\instancia_Temporizador|Add0~45\) # (!\instancia_Temporizador|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(23),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~45\,
	combout => \instancia_Temporizador|Add0~46_combout\,
	cout => \instancia_Temporizador|Add0~47\);

-- Location: LCCOMB_X16_Y24_N10
\instancia_Temporizador|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector12~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~46_combout\,
	combout => \instancia_Temporizador|Selector12~0_combout\);

-- Location: LCFF_X16_Y24_N11
\instancia_Temporizador|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector12~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(23));

-- Location: LCCOMB_X15_Y24_N18
\instancia_Temporizador|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~50_combout\ = (\instancia_Temporizador|counter\(25) & (!\instancia_Temporizador|Add0~49\)) # (!\instancia_Temporizador|counter\(25) & ((\instancia_Temporizador|Add0~49\) # (GND)))
-- \instancia_Temporizador|Add0~51\ = CARRY((!\instancia_Temporizador|Add0~49\) # (!\instancia_Temporizador|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(25),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~49\,
	combout => \instancia_Temporizador|Add0~50_combout\,
	cout => \instancia_Temporizador|Add0~51\);

-- Location: LCCOMB_X16_Y24_N30
\instancia_Temporizador|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector10~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~50_combout\,
	combout => \instancia_Temporizador|Selector10~0_combout\);

-- Location: LCFF_X16_Y24_N31
\instancia_Temporizador|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector10~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(25));

-- Location: LCCOMB_X15_Y24_N20
\instancia_Temporizador|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~52_combout\ = (\instancia_Temporizador|counter\(26) & (\instancia_Temporizador|Add0~51\ $ (GND))) # (!\instancia_Temporizador|counter\(26) & (!\instancia_Temporizador|Add0~51\ & VCC))
-- \instancia_Temporizador|Add0~53\ = CARRY((\instancia_Temporizador|counter\(26) & !\instancia_Temporizador|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(26),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~51\,
	combout => \instancia_Temporizador|Add0~52_combout\,
	cout => \instancia_Temporizador|Add0~53\);

-- Location: LCCOMB_X16_Y24_N4
\instancia_Temporizador|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector9~0_combout\ = (\instancia_Temporizador|Add0~52_combout\ & !\instancia_Temporizador|counter_out[3]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|Add0~52_combout\,
	datad => \instancia_Temporizador|counter_out[3]~7_combout\,
	combout => \instancia_Temporizador|Selector9~0_combout\);

-- Location: LCFF_X16_Y24_N5
\instancia_Temporizador|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector9~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(26));

-- Location: LCCOMB_X16_Y24_N8
\instancia_Temporizador|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|LessThan1~2_combout\ = (!\instancia_Temporizador|counter\(24) & (!\instancia_Temporizador|counter\(25) & (!\instancia_Temporizador|counter\(26) & !\instancia_Temporizador|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(24),
	datab => \instancia_Temporizador|counter\(25),
	datac => \instancia_Temporizador|counter\(26),
	datad => \instancia_Temporizador|counter\(23),
	combout => \instancia_Temporizador|LessThan1~2_combout\);

-- Location: LCCOMB_X16_Y25_N28
\instancia_Temporizador|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector13~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~44_combout\,
	combout => \instancia_Temporizador|Selector13~0_combout\);

-- Location: LCFF_X16_Y25_N29
\instancia_Temporizador|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector13~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(22));

-- Location: LCCOMB_X16_Y25_N18
\instancia_Temporizador|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|LessThan1~3_combout\ = (!\instancia_Temporizador|counter\(22) & (!\instancia_Temporizador|counter\(20) & !\instancia_Temporizador|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(22),
	datac => \instancia_Temporizador|counter\(20),
	datad => \instancia_Temporizador|counter\(21),
	combout => \instancia_Temporizador|LessThan1~3_combout\);

-- Location: LCCOMB_X15_Y24_N22
\instancia_Temporizador|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~54_combout\ = (\instancia_Temporizador|counter\(27) & (!\instancia_Temporizador|Add0~53\)) # (!\instancia_Temporizador|counter\(27) & ((\instancia_Temporizador|Add0~53\) # (GND)))
-- \instancia_Temporizador|Add0~55\ = CARRY((!\instancia_Temporizador|Add0~53\) # (!\instancia_Temporizador|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(27),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~53\,
	combout => \instancia_Temporizador|Add0~54_combout\,
	cout => \instancia_Temporizador|Add0~55\);

-- Location: LCCOMB_X16_Y24_N28
\instancia_Temporizador|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector8~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~54_combout\,
	combout => \instancia_Temporizador|Selector8~0_combout\);

-- Location: LCFF_X16_Y24_N29
\instancia_Temporizador|counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector8~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(27));

-- Location: LCCOMB_X15_Y24_N24
\instancia_Temporizador|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~56_combout\ = (\instancia_Temporizador|counter\(28) & (\instancia_Temporizador|Add0~55\ $ (GND))) # (!\instancia_Temporizador|counter\(28) & (!\instancia_Temporizador|Add0~55\ & VCC))
-- \instancia_Temporizador|Add0~57\ = CARRY((\instancia_Temporizador|counter\(28) & !\instancia_Temporizador|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(28),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~55\,
	combout => \instancia_Temporizador|Add0~56_combout\,
	cout => \instancia_Temporizador|Add0~57\);

-- Location: LCCOMB_X16_Y24_N14
\instancia_Temporizador|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector7~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~56_combout\,
	combout => \instancia_Temporizador|Selector7~0_combout\);

-- Location: LCFF_X16_Y24_N15
\instancia_Temporizador|counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector7~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(28));

-- Location: LCCOMB_X15_Y24_N26
\instancia_Temporizador|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~58_combout\ = (\instancia_Temporizador|counter\(29) & (!\instancia_Temporizador|Add0~57\)) # (!\instancia_Temporizador|counter\(29) & ((\instancia_Temporizador|Add0~57\) # (GND)))
-- \instancia_Temporizador|Add0~59\ = CARRY((!\instancia_Temporizador|Add0~57\) # (!\instancia_Temporizador|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(29),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~57\,
	combout => \instancia_Temporizador|Add0~58_combout\,
	cout => \instancia_Temporizador|Add0~59\);

-- Location: LCCOMB_X16_Y24_N20
\instancia_Temporizador|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector6~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~58_combout\,
	combout => \instancia_Temporizador|Selector6~0_combout\);

-- Location: LCFF_X16_Y24_N21
\instancia_Temporizador|counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector6~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(29));

-- Location: LCCOMB_X16_Y24_N18
\instancia_Temporizador|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|LessThan1~1_combout\ = (!\instancia_Temporizador|counter\(30) & (!\instancia_Temporizador|counter\(28) & (!\instancia_Temporizador|counter\(29) & !\instancia_Temporizador|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(30),
	datab => \instancia_Temporizador|counter\(28),
	datac => \instancia_Temporizador|counter\(29),
	datad => \instancia_Temporizador|counter\(27),
	combout => \instancia_Temporizador|LessThan1~1_combout\);

-- Location: LCCOMB_X16_Y24_N2
\instancia_Temporizador|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|LessThan1~4_combout\ = (\instancia_Temporizador|LessThan1~2_combout\ & (\instancia_Temporizador|LessThan1~3_combout\ & \instancia_Temporizador|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|LessThan1~2_combout\,
	datac => \instancia_Temporizador|LessThan1~3_combout\,
	datad => \instancia_Temporizador|LessThan1~1_combout\,
	combout => \instancia_Temporizador|LessThan1~4_combout\);

-- Location: LCCOMB_X17_Y24_N14
\instancia_Temporizador|counter_out[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|counter_out[3]~5_combout\ = (!\instancia_Temporizador|state\(2) & (!\instancia_Temporizador|state\(1) & !\instancia_Temporizador|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|state\(2),
	datab => \instancia_Temporizador|state\(1),
	datad => \instancia_Temporizador|state\(0),
	combout => \instancia_Temporizador|counter_out[3]~5_combout\);

-- Location: LCCOMB_X16_Y24_N12
\instancia_Temporizador|counter_out[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|counter_out[3]~6_combout\ = ((\instancia_Temporizador|counter_out[3]~5_combout\ & ((\instancia_Temporizador|LessThan0~1_combout\))) # (!\instancia_Temporizador|counter_out[3]~5_combout\ & (\instancia_Temporizador|counter\(2)))) # 
-- (!\instancia_Temporizador|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(2),
	datab => \instancia_Temporizador|LessThan1~4_combout\,
	datac => \instancia_Temporizador|counter_out[3]~5_combout\,
	datad => \instancia_Temporizador|LessThan0~1_combout\,
	combout => \instancia_Temporizador|counter_out[3]~6_combout\);

-- Location: LCCOMB_X16_Y24_N26
\instancia_Temporizador|counter_out[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|counter_out[3]~7_combout\ = (!\instancia_Temporizador|counter\(31) & ((\instancia_Temporizador|counter\(3)) # ((\instancia_Temporizador|counter_out[3]~6_combout\) # (!\instancia_Temporizador|counter_out[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(3),
	datab => \instancia_Temporizador|counter_out[3]~4_combout\,
	datac => \instancia_Temporizador|counter\(31),
	datad => \instancia_Temporizador|counter_out[3]~6_combout\,
	combout => \instancia_Temporizador|counter_out[3]~7_combout\);

-- Location: LCCOMB_X15_Y24_N28
\instancia_Temporizador|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~60_combout\ = (\instancia_Temporizador|counter\(30) & (\instancia_Temporizador|Add0~59\ $ (GND))) # (!\instancia_Temporizador|counter\(30) & (!\instancia_Temporizador|Add0~59\ & VCC))
-- \instancia_Temporizador|Add0~61\ = CARRY((\instancia_Temporizador|counter\(30) & !\instancia_Temporizador|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter\(30),
	datad => VCC,
	cin => \instancia_Temporizador|Add0~59\,
	combout => \instancia_Temporizador|Add0~60_combout\,
	cout => \instancia_Temporizador|Add0~61\);

-- Location: LCCOMB_X16_Y24_N22
\instancia_Temporizador|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector5~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~60_combout\,
	combout => \instancia_Temporizador|Selector5~0_combout\);

-- Location: LCFF_X16_Y24_N23
\instancia_Temporizador|counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector5~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(30));

-- Location: LCCOMB_X15_Y24_N30
\instancia_Temporizador|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Add0~62_combout\ = \instancia_Temporizador|Add0~61\ $ (\instancia_Temporizador|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instancia_Temporizador|counter\(31),
	cin => \instancia_Temporizador|Add0~61\,
	combout => \instancia_Temporizador|Add0~62_combout\);

-- Location: LCCOMB_X14_Y24_N12
\instancia_Temporizador|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector4~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|Add0~62_combout\,
	combout => \instancia_Temporizador|Selector4~0_combout\);

-- Location: LCFF_X14_Y24_N13
\instancia_Temporizador|counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector4~0_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \instancia_Temporizador|counter_out[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter\(31));

-- Location: LCCOMB_X17_Y24_N16
\instancia_Temporizador|LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|LessThan1~6_combout\ = (\instancia_Temporizador|counter\(31)) # ((\instancia_Temporizador|LessThan1~5_combout\ & (\instancia_Temporizador|counter_out[3]~4_combout\ & \instancia_Temporizador|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|LessThan1~5_combout\,
	datab => \instancia_Temporizador|counter\(31),
	datac => \instancia_Temporizador|counter_out[3]~4_combout\,
	datad => \instancia_Temporizador|LessThan1~4_combout\,
	combout => \instancia_Temporizador|LessThan1~6_combout\);

-- Location: LCCOMB_X17_Y24_N8
\instancia_Temporizador|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector36~0_combout\ = (!\instancia_Temporizador|state\(0) & !\instancia_Temporizador|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_Temporizador|state\(0),
	datad => \instancia_Temporizador|state\(1),
	combout => \instancia_Temporizador|Selector36~0_combout\);

-- Location: LCCOMB_X17_Y24_N10
\instancia_Temporizador|Selector36~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector36~1_combout\ = ((\instancia_Temporizador|Selector36~0_combout\ & ((\instancia_Temporizador|LessThan0~2_combout\))) # (!\instancia_Temporizador|Selector36~0_combout\ & (\instancia_Temporizador|LessThan1~0_combout\))) # 
-- (!\instancia_Temporizador|LessThan1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|LessThan1~4_combout\,
	datab => \instancia_Temporizador|Selector36~0_combout\,
	datac => \instancia_Temporizador|LessThan1~0_combout\,
	datad => \instancia_Temporizador|LessThan0~2_combout\,
	combout => \instancia_Temporizador|Selector36~1_combout\);

-- Location: LCCOMB_X18_Y24_N18
\instancia_Temporizador|Selector36~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector36~2_combout\ = (!\instancia_Temporizador|counter\(31) & (\instancia_Temporizador|timeout~regout\ & (!\instancia_Temporizador|state\(2) & \instancia_Temporizador|Selector36~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(31),
	datab => \instancia_Temporizador|timeout~regout\,
	datac => \instancia_Temporizador|state\(2),
	datad => \instancia_Temporizador|Selector36~1_combout\,
	combout => \instancia_Temporizador|Selector36~2_combout\);

-- Location: LCCOMB_X18_Y24_N0
\instancia_Temporizador|Selector36~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector36~5_combout\ = (\instancia_Temporizador|Selector36~3_combout\) # ((\instancia_Temporizador|Selector36~2_combout\) # ((!\instancia_Temporizador|LessThan1~6_combout\ & \instancia_Temporizador|Selector36~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|Selector36~3_combout\,
	datab => \instancia_Temporizador|LessThan1~6_combout\,
	datac => \instancia_Temporizador|Selector36~4_combout\,
	datad => \instancia_Temporizador|Selector36~2_combout\,
	combout => \instancia_Temporizador|Selector36~5_combout\);

-- Location: LCFF_X18_Y24_N1
\instancia_Temporizador|timeout\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector36~5_combout\,
	aclr => \Reset_Cont~clkctrl_outclk\,
	ena => \Load_temp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|timeout~regout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Volume_Agua[2]~I\ : cycloneii_io
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
	padio => ww_Volume_Agua(2),
	combout => \Volume_Agua~combout\(2));

-- Location: LCCOMB_X1_Y25_N24
\instancia_Reg_Vol_Agua|Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_Vol_Agua|Q[2]~feeder_combout\ = \Volume_Agua~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Volume_Agua~combout\(2),
	combout => \instancia_Reg_Vol_Agua|Q[2]~feeder_combout\);

-- Location: LCFF_X1_Y25_N25
\instancia_Reg_Vol_Agua|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_Vol_Agua|Q[2]~feeder_combout\,
	aclr => \Reset_Vol_Agua~clkctrl_outclk\,
	ena => \Load_Vol_Agua~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_Vol_Agua|Q\(2));

-- Location: LCCOMB_X1_Y25_N28
\instancia_Comp_vol_agua|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Comp_vol_agua|Equal0~0_combout\ = (!\instancia_Reg_Vol_Agua|Q\(2) & (!\instancia_Reg_Vol_Agua|Q\(1) & (\instancia_Reg_Vol_Agua|Q\(0) & !\instancia_Reg_Vol_Agua|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_Vol_Agua|Q\(2),
	datab => \instancia_Reg_Vol_Agua|Q\(1),
	datac => \instancia_Reg_Vol_Agua|Q\(0),
	datad => \instancia_Reg_Vol_Agua|Q\(3),
	combout => \instancia_Comp_vol_agua|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y25_N2
\instancia_Comp_vol_agua|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Comp_vol_agua|Equal1~0_combout\ = (!\instancia_Reg_Vol_Agua|Q\(2) & (\instancia_Reg_Vol_Agua|Q\(1) & (!\instancia_Reg_Vol_Agua|Q\(0) & !\instancia_Reg_Vol_Agua|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_Vol_Agua|Q\(2),
	datab => \instancia_Reg_Vol_Agua|Q\(1),
	datac => \instancia_Reg_Vol_Agua|Q\(0),
	datad => \instancia_Reg_Vol_Agua|Q\(3),
	combout => \instancia_Comp_vol_agua|Equal1~0_combout\);

-- Location: LCCOMB_X1_Y25_N10
\instancia_Comp_vol_agua|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Comp_vol_agua|Equal3~0_combout\ = (!\instancia_Reg_Vol_Agua|Q\(2) & (!\instancia_Reg_Vol_Agua|Q\(1) & (!\instancia_Reg_Vol_Agua|Q\(0) & \instancia_Reg_Vol_Agua|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_Vol_Agua|Q\(2),
	datab => \instancia_Reg_Vol_Agua|Q\(1),
	datac => \instancia_Reg_Vol_Agua|Q\(0),
	datad => \instancia_Reg_Vol_Agua|Q\(3),
	combout => \instancia_Comp_vol_agua|Equal3~0_combout\);

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Modo_Lavagem[2]~I\ : cycloneii_io
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
	padio => ww_Modo_Lavagem(2),
	combout => \Modo_Lavagem~combout\(2));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset_Modo~I\ : cycloneii_io
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
	padio => ww_Reset_Modo,
	combout => \Reset_Modo~combout\);

-- Location: CLKCTRL_G2
\Reset_Modo~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_Modo~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_Modo~clkctrl_outclk\);

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Load_Modo~I\ : cycloneii_io
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
	padio => ww_Load_Modo,
	combout => \Load_Modo~combout\);

-- Location: LCFF_X1_Y32_N13
\instancia_Reg_Modo|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \Modo_Lavagem~combout\(2),
	aclr => \Reset_Modo~clkctrl_outclk\,
	sload => VCC,
	ena => \Load_Modo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_Modo|Q\(2));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Modo_Lavagem[1]~I\ : cycloneii_io
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
	padio => ww_Modo_Lavagem(1),
	combout => \Modo_Lavagem~combout\(1));

-- Location: LCCOMB_X1_Y32_N2
\instancia_Reg_Modo|Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_Modo|Q[1]~feeder_combout\ = \Modo_Lavagem~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Modo_Lavagem~combout\(1),
	combout => \instancia_Reg_Modo|Q[1]~feeder_combout\);

-- Location: LCFF_X1_Y32_N3
\instancia_Reg_Modo|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_Modo|Q[1]~feeder_combout\,
	aclr => \Reset_Modo~clkctrl_outclk\,
	ena => \Load_Modo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_Modo|Q\(1));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Modo_Lavagem[0]~I\ : cycloneii_io
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
	padio => ww_Modo_Lavagem(0),
	combout => \Modo_Lavagem~combout\(0));

-- Location: LCCOMB_X1_Y32_N20
\instancia_Reg_Modo|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_Modo|Q[0]~feeder_combout\ = \Modo_Lavagem~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Modo_Lavagem~combout\(0),
	combout => \instancia_Reg_Modo|Q[0]~feeder_combout\);

-- Location: LCFF_X1_Y32_N21
\instancia_Reg_Modo|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_Modo|Q[0]~feeder_combout\,
	aclr => \Reset_Modo~clkctrl_outclk\,
	ena => \Load_Modo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_Modo|Q\(0));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Modo_Lavagem[3]~I\ : cycloneii_io
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
	padio => ww_Modo_Lavagem(3),
	combout => \Modo_Lavagem~combout\(3));

-- Location: LCCOMB_X1_Y32_N18
\instancia_Reg_Modo|Q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Reg_Modo|Q[3]~feeder_combout\ = \Modo_Lavagem~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Modo_Lavagem~combout\(3),
	combout => \instancia_Reg_Modo|Q[3]~feeder_combout\);

-- Location: LCFF_X1_Y32_N19
\instancia_Reg_Modo|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Reg_Modo|Q[3]~feeder_combout\,
	aclr => \Reset_Modo~clkctrl_outclk\,
	ena => \Load_Modo~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Reg_Modo|Q\(3));

-- Location: LCCOMB_X1_Y32_N0
\instancia_Comp_modo_lavgm|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Comp_modo_lavgm|Equal0~0_combout\ = (!\instancia_Reg_Modo|Q\(2) & (!\instancia_Reg_Modo|Q\(1) & (\instancia_Reg_Modo|Q\(0) & !\instancia_Reg_Modo|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_Modo|Q\(2),
	datab => \instancia_Reg_Modo|Q\(1),
	datac => \instancia_Reg_Modo|Q\(0),
	datad => \instancia_Reg_Modo|Q\(3),
	combout => \instancia_Comp_modo_lavgm|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y32_N10
\instancia_Comp_modo_lavgm|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Comp_modo_lavgm|Equal1~0_combout\ = (!\instancia_Reg_Modo|Q\(2) & (\instancia_Reg_Modo|Q\(1) & (!\instancia_Reg_Modo|Q\(0) & !\instancia_Reg_Modo|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_Modo|Q\(2),
	datab => \instancia_Reg_Modo|Q\(1),
	datac => \instancia_Reg_Modo|Q\(0),
	datad => \instancia_Reg_Modo|Q\(3),
	combout => \instancia_Comp_modo_lavgm|Equal1~0_combout\);

-- Location: LCCOMB_X1_Y32_N28
\instancia_Comp_modo_lavgm|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Comp_modo_lavgm|Equal2~0_combout\ = (\instancia_Reg_Modo|Q\(2) & (!\instancia_Reg_Modo|Q\(1) & (!\instancia_Reg_Modo|Q\(0) & !\instancia_Reg_Modo|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_Modo|Q\(2),
	datab => \instancia_Reg_Modo|Q\(1),
	datac => \instancia_Reg_Modo|Q\(0),
	datad => \instancia_Reg_Modo|Q\(3),
	combout => \instancia_Comp_modo_lavgm|Equal2~0_combout\);

-- Location: LCCOMB_X1_Y32_N30
\instancia_Comp_modo_lavgm|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Comp_modo_lavgm|Equal3~0_combout\ = (!\instancia_Reg_Modo|Q\(2) & (!\instancia_Reg_Modo|Q\(1) & (!\instancia_Reg_Modo|Q\(0) & \instancia_Reg_Modo|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Reg_Modo|Q\(2),
	datab => \instancia_Reg_Modo|Q\(1),
	datac => \instancia_Reg_Modo|Q\(0),
	datad => \instancia_Reg_Modo|Q\(3),
	combout => \instancia_Comp_modo_lavgm|Equal3~0_combout\);

-- Location: LCCOMB_X17_Y25_N8
\instancia_Temporizador|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector1~0_combout\ = (!\instancia_Temporizador|counter_out[3]~7_combout\ & \instancia_Temporizador|counter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	datad => \instancia_Temporizador|counter\(2),
	combout => \instancia_Temporizador|Selector1~0_combout\);

-- Location: LCCOMB_X17_Y24_N4
\instancia_Temporizador|counter_out[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|counter_out[3]~8_combout\ = (\Load_temp~combout\ & (!\Reset_Cont~combout\ & ((\instancia_Temporizador|Selector36~0_combout\) # (!\instancia_Temporizador|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|state\(2),
	datab => \instancia_Temporizador|Selector36~0_combout\,
	datac => \Load_temp~combout\,
	datad => \Reset_Cont~combout\,
	combout => \instancia_Temporizador|counter_out[3]~8_combout\);

-- Location: LCFF_X17_Y25_N9
\instancia_Temporizador|counter_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector1~0_combout\,
	ena => \instancia_Temporizador|counter_out[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter_out\(2));

-- Location: LCCOMB_X17_Y25_N6
\instancia_Temporizador|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector2~0_combout\ = (\instancia_Temporizador|counter\(1) & !\instancia_Temporizador|counter_out[3]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(1),
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	combout => \instancia_Temporizador|Selector2~0_combout\);

-- Location: LCFF_X17_Y25_N7
\instancia_Temporizador|counter_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector2~0_combout\,
	ena => \instancia_Temporizador|counter_out[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter_out\(1));

-- Location: LCCOMB_X17_Y25_N30
\instancia_Temporizador|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector0~0_combout\ = (\instancia_Temporizador|counter\(3) & \instancia_Temporizador|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(3),
	datad => \instancia_Temporizador|counter\(31),
	combout => \instancia_Temporizador|Selector0~0_combout\);

-- Location: LCFF_X17_Y25_N31
\instancia_Temporizador|counter_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector0~0_combout\,
	ena => \instancia_Temporizador|counter_out[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter_out\(3));

-- Location: LCCOMB_X17_Y25_N28
\instancia_Temporizador|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Temporizador|Selector3~0_combout\ = (!\instancia_Temporizador|counter\(0) & !\instancia_Temporizador|counter_out[3]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter\(0),
	datac => \instancia_Temporizador|counter_out[3]~7_combout\,
	combout => \instancia_Temporizador|Selector3~0_combout\);

-- Location: LCFF_X17_Y25_N29
\instancia_Temporizador|counter_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	datain => \instancia_Temporizador|Selector3~0_combout\,
	ena => \instancia_Temporizador|counter_out[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_Temporizador|counter_out\(0));

-- Location: LCCOMB_X14_Y25_N4
\instancia_Bcd_7seg|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Bcd_7seg|Mux6~0_combout\ = (\instancia_Temporizador|counter_out\(2) & (!\instancia_Temporizador|counter_out\(1) & (\instancia_Temporizador|counter_out\(3) $ (!\instancia_Temporizador|counter_out\(0))))) # 
-- (!\instancia_Temporizador|counter_out\(2) & (\instancia_Temporizador|counter_out\(0) & (\instancia_Temporizador|counter_out\(1) $ (!\instancia_Temporizador|counter_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter_out\(2),
	datab => \instancia_Temporizador|counter_out\(1),
	datac => \instancia_Temporizador|counter_out\(3),
	datad => \instancia_Temporizador|counter_out\(0),
	combout => \instancia_Bcd_7seg|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y25_N10
\instancia_Bcd_7seg|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Bcd_7seg|Mux5~0_combout\ = (\instancia_Temporizador|counter_out\(1) & ((\instancia_Temporizador|counter_out\(0) & ((\instancia_Temporizador|counter_out\(3)))) # (!\instancia_Temporizador|counter_out\(0) & 
-- (\instancia_Temporizador|counter_out\(2))))) # (!\instancia_Temporizador|counter_out\(1) & (\instancia_Temporizador|counter_out\(2) & (\instancia_Temporizador|counter_out\(3) $ (\instancia_Temporizador|counter_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter_out\(2),
	datab => \instancia_Temporizador|counter_out\(1),
	datac => \instancia_Temporizador|counter_out\(3),
	datad => \instancia_Temporizador|counter_out\(0),
	combout => \instancia_Bcd_7seg|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y25_N8
\instancia_Bcd_7seg|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Bcd_7seg|Mux4~0_combout\ = (\instancia_Temporizador|counter_out\(2) & (\instancia_Temporizador|counter_out\(3) & ((\instancia_Temporizador|counter_out\(1)) # (!\instancia_Temporizador|counter_out\(0))))) # 
-- (!\instancia_Temporizador|counter_out\(2) & (\instancia_Temporizador|counter_out\(1) & (!\instancia_Temporizador|counter_out\(3) & !\instancia_Temporizador|counter_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter_out\(2),
	datab => \instancia_Temporizador|counter_out\(1),
	datac => \instancia_Temporizador|counter_out\(3),
	datad => \instancia_Temporizador|counter_out\(0),
	combout => \instancia_Bcd_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X14_Y25_N2
\instancia_Bcd_7seg|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Bcd_7seg|Mux3~0_combout\ = (\instancia_Temporizador|counter_out\(1) & ((\instancia_Temporizador|counter_out\(2) & ((\instancia_Temporizador|counter_out\(0)))) # (!\instancia_Temporizador|counter_out\(2) & 
-- (\instancia_Temporizador|counter_out\(3) & !\instancia_Temporizador|counter_out\(0))))) # (!\instancia_Temporizador|counter_out\(1) & (!\instancia_Temporizador|counter_out\(3) & (\instancia_Temporizador|counter_out\(2) $ 
-- (\instancia_Temporizador|counter_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter_out\(2),
	datab => \instancia_Temporizador|counter_out\(1),
	datac => \instancia_Temporizador|counter_out\(3),
	datad => \instancia_Temporizador|counter_out\(0),
	combout => \instancia_Bcd_7seg|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y25_N12
\instancia_Bcd_7seg|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Bcd_7seg|Mux2~0_combout\ = (\instancia_Temporizador|counter_out\(1) & (((!\instancia_Temporizador|counter_out\(3) & \instancia_Temporizador|counter_out\(0))))) # (!\instancia_Temporizador|counter_out\(1) & 
-- ((\instancia_Temporizador|counter_out\(2) & (!\instancia_Temporizador|counter_out\(3))) # (!\instancia_Temporizador|counter_out\(2) & ((\instancia_Temporizador|counter_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter_out\(2),
	datab => \instancia_Temporizador|counter_out\(1),
	datac => \instancia_Temporizador|counter_out\(3),
	datad => \instancia_Temporizador|counter_out\(0),
	combout => \instancia_Bcd_7seg|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y25_N26
\instancia_Bcd_7seg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Bcd_7seg|Mux1~0_combout\ = (\instancia_Temporizador|counter_out\(2) & (\instancia_Temporizador|counter_out\(0) & (\instancia_Temporizador|counter_out\(1) $ (\instancia_Temporizador|counter_out\(3))))) # (!\instancia_Temporizador|counter_out\(2) 
-- & (!\instancia_Temporizador|counter_out\(3) & ((\instancia_Temporizador|counter_out\(1)) # (\instancia_Temporizador|counter_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter_out\(2),
	datab => \instancia_Temporizador|counter_out\(1),
	datac => \instancia_Temporizador|counter_out\(3),
	datad => \instancia_Temporizador|counter_out\(0),
	combout => \instancia_Bcd_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X14_Y25_N28
\instancia_Bcd_7seg|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_Bcd_7seg|Mux0~0_combout\ = (\instancia_Temporizador|counter_out\(0) & ((\instancia_Temporizador|counter_out\(3)) # (\instancia_Temporizador|counter_out\(2) $ (\instancia_Temporizador|counter_out\(1))))) # 
-- (!\instancia_Temporizador|counter_out\(0) & ((\instancia_Temporizador|counter_out\(1)) # (\instancia_Temporizador|counter_out\(2) $ (\instancia_Temporizador|counter_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_Temporizador|counter_out\(2),
	datab => \instancia_Temporizador|counter_out\(1),
	datac => \instancia_Temporizador|counter_out\(3),
	datad => \instancia_Temporizador|counter_out\(0),
	combout => \instancia_Bcd_7seg|Mux0~0_combout\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Timeout~I\ : cycloneii_io
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
	datain => \instancia_Temporizador|timeout~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Timeout);

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pino_extra_baixo~I\ : cycloneii_io
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
	datain => \instancia_Comp_vol_agua|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pino_extra_baixo);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pino_baixo~I\ : cycloneii_io
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
	datain => \instancia_Comp_vol_agua|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pino_baixo);

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pino_medio~I\ : cycloneii_io
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
	datain => \instancia_Comp_vol_agua|ALT_INV_Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pino_medio);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pino_alto~I\ : cycloneii_io
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
	datain => \instancia_Comp_vol_agua|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pino_alto);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pino_economico~I\ : cycloneii_io
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
	datain => \instancia_Comp_modo_lavgm|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pino_economico);

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pino_delicado~I\ : cycloneii_io
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
	datain => \instancia_Comp_modo_lavgm|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pino_delicado);

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pino_pesado~I\ : cycloneii_io
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
	datain => \instancia_Comp_modo_lavgm|Equal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pino_pesado);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\pino_normal~I\ : cycloneii_io
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
	datain => \instancia_Comp_modo_lavgm|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_pino_normal);

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD[0]~I\ : cycloneii_io
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
	datain => \instancia_Bcd_7seg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD(0));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD[1]~I\ : cycloneii_io
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
	datain => \instancia_Bcd_7seg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD(1));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD[2]~I\ : cycloneii_io
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
	datain => \instancia_Bcd_7seg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD(2));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD[3]~I\ : cycloneii_io
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
	datain => \instancia_Bcd_7seg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD(3));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD[4]~I\ : cycloneii_io
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
	datain => \instancia_Bcd_7seg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD[5]~I\ : cycloneii_io
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
	datain => \instancia_Bcd_7seg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD(5));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\BCD[6]~I\ : cycloneii_io
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
	datain => \instancia_Bcd_7seg|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_BCD(6));
END structure;


