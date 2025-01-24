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

-- DATE "01/24/2025 20:07:32"

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

ENTITY 	Controladora IS
    PORT (
	Ligar_maquina : IN std_logic;
	Porta : IN std_logic;
	RESET : IN std_logic;
	CLOCK : IN std_logic;
	Reset_Vol_Agua : OUT std_logic;
	Load_Vol_Agua : OUT std_logic;
	Reset_Modo : OUT std_logic;
	Load_Modo : OUT std_logic;
	Load_temp : OUT std_logic;
	Reset_Cont : OUT std_logic;
	Timeout : IN std_logic;
	pino_extra_baixo : IN std_logic;
	pino_baixo : IN std_logic;
	pino_medio : IN std_logic;
	pino_alto : IN std_logic;
	pino_economico : IN std_logic;
	pino_delicado : IN std_logic;
	pino_pesado : IN std_logic;
	pino_normal : IN std_logic;
	Load_Motor : OUT std_logic;
	Led_Enchendo : OUT std_logic;
	Led_Molho : OUT std_logic;
	Led_Lavar : OUT std_logic;
	Led_Enxague : OUT std_logic;
	Led_Centrifuga : OUT std_logic;
	Led_Finalizado : OUT std_logic;
	Valvula_Agua : OUT std_logic
	);
END Controladora;

-- Design Ports Information
-- Porta	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset_Vol_Agua	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Load_Vol_Agua	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Reset_Modo	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Load_Modo	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Load_temp	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Reset_Cont	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Load_Motor	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Enchendo	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Molho	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Lavar	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Enxague	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Centrifuga	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Finalizado	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Valvula_Agua	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Ligar_maquina	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pino_medio	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pino_alto	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pino_extra_baixo	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pino_baixo	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pino_pesado	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pino_normal	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pino_economico	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pino_delicado	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Timeout	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Controladora IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Ligar_maquina : std_logic;
SIGNAL ww_Porta : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLOCK : std_logic;
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
SIGNAL ww_Load_Motor : std_logic;
SIGNAL ww_Led_Enchendo : std_logic;
SIGNAL ww_Led_Molho : std_logic;
SIGNAL ww_Led_Lavar : std_logic;
SIGNAL ww_Led_Enxague : std_logic;
SIGNAL ww_Led_Centrifuga : std_logic;
SIGNAL ww_Led_Finalizado : std_logic;
SIGNAL ww_Valvula_Agua : std_logic;
SIGNAL \CLOCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \pino_medio~combout\ : std_logic;
SIGNAL \pino_normal~combout\ : std_logic;
SIGNAL \CLOCK~combout\ : std_logic;
SIGNAL \CLOCK~clkctrl_outclk\ : std_logic;
SIGNAL \Ligar_maquina~combout\ : std_logic;
SIGNAL \Timeout~combout\ : std_logic;
SIGNAL \pino_alto~combout\ : std_logic;
SIGNAL \pino_extra_baixo~combout\ : std_logic;
SIGNAL \pino_baixo~combout\ : std_logic;
SIGNAL \volume_valido~0_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \pino_delicado~combout\ : std_logic;
SIGNAL \pino_pesado~combout\ : std_logic;
SIGNAL \pino_economico~combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \RESET~clkctrl_outclk\ : std_logic;
SIGNAL \estado_atual.Load~regout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \estado_atual.Enchendo~regout\ : std_logic;
SIGNAL \estado_atual.Molho~feeder_combout\ : std_logic;
SIGNAL \estado_atual.Molho~regout\ : std_logic;
SIGNAL \estado_atual.Lavar~feeder_combout\ : std_logic;
SIGNAL \estado_atual.Lavar~regout\ : std_logic;
SIGNAL \estado_atual.Enxague~regout\ : std_logic;
SIGNAL \estado_atual.Centrifuga~feeder_combout\ : std_logic;
SIGNAL \estado_atual.Centrifuga~regout\ : std_logic;
SIGNAL \estado_atual.Finalizado~regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estado_atual.Ligar~regout\ : std_logic;
SIGNAL \Reset_Vol_Agua$latch~combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \Load_temp$latch~combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Load_Motor$latch~combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \Led_Enchendo$latch~combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Led_Molho$latch~combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Led_Lavar$latch~combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Led_Enxague$latch~combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Led_Centrifuga$latch~combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Led_Finalizado$latch~combout\ : std_logic;

BEGIN

ww_Ligar_maquina <= Ligar_maquina;
ww_Porta <= Porta;
ww_RESET <= RESET;
ww_CLOCK <= CLOCK;
Reset_Vol_Agua <= ww_Reset_Vol_Agua;
Load_Vol_Agua <= ww_Load_Vol_Agua;
Reset_Modo <= ww_Reset_Modo;
Load_Modo <= ww_Load_Modo;
Load_temp <= ww_Load_temp;
Reset_Cont <= ww_Reset_Cont;
ww_Timeout <= Timeout;
ww_pino_extra_baixo <= pino_extra_baixo;
ww_pino_baixo <= pino_baixo;
ww_pino_medio <= pino_medio;
ww_pino_alto <= pino_alto;
ww_pino_economico <= pino_economico;
ww_pino_delicado <= pino_delicado;
ww_pino_pesado <= pino_pesado;
ww_pino_normal <= pino_normal;
Load_Motor <= ww_Load_Motor;
Led_Enchendo <= ww_Led_Enchendo;
Led_Molho <= ww_Led_Molho;
Led_Lavar <= ww_Led_Lavar;
Led_Enxague <= ww_Led_Enxague;
Led_Centrifuga <= ww_Led_Centrifuga;
Led_Finalizado <= ww_Led_Finalizado;
Valvula_Agua <= ww_Valvula_Agua;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK~combout\);

\RESET~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RESET~combout\);

-- Location: LCCOMB_X1_Y18_N8
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\estado_atual.Ligar~regout\ & \Ligar_maquina~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.Ligar~regout\,
	datad => \Ligar_maquina~combout\,
	combout => \Selector3~0_combout\);

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_pino_medio,
	combout => \pino_medio~combout\);

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_pino_normal,
	combout => \pino_normal~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK~I\ : cycloneii_io
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
	padio => ww_CLOCK,
	combout => \CLOCK~combout\);

-- Location: CLKCTRL_G3
\CLOCK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~clkctrl_outclk\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Ligar_maquina~I\ : cycloneii_io
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
	padio => ww_Ligar_maquina,
	combout => \Ligar_maquina~combout\);

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_Timeout,
	combout => \Timeout~combout\);

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_pino_alto,
	combout => \pino_alto~combout\);

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_pino_extra_baixo,
	combout => \pino_extra_baixo~combout\);

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_pino_baixo,
	combout => \pino_baixo~combout\);

-- Location: LCCOMB_X1_Y16_N0
\volume_valido~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \volume_valido~0_combout\ = (\pino_medio~combout\ & (!\pino_alto~combout\ & (!\pino_extra_baixo~combout\ & !\pino_baixo~combout\))) # (!\pino_medio~combout\ & ((\pino_alto~combout\ & (!\pino_extra_baixo~combout\ & !\pino_baixo~combout\)) # 
-- (!\pino_alto~combout\ & (\pino_extra_baixo~combout\ $ (\pino_baixo~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pino_medio~combout\,
	datab => \pino_alto~combout\,
	datac => \pino_extra_baixo~combout\,
	datad => \pino_baixo~combout\,
	combout => \volume_valido~0_combout\);

-- Location: LCCOMB_X1_Y18_N6
\Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\Timeout~combout\ & \estado_atual.Enchendo~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Timeout~combout\,
	datad => \estado_atual.Enchendo~regout\,
	combout => \Selector24~0_combout\);

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_pino_delicado,
	combout => \pino_delicado~combout\);

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_pino_pesado,
	combout => \pino_pesado~combout\);

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_pino_economico,
	combout => \pino_economico~combout\);

-- Location: LCCOMB_X1_Y17_N0
\process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\pino_normal~combout\ & (!\pino_delicado~combout\ & (!\pino_pesado~combout\ & !\pino_economico~combout\))) # (!\pino_normal~combout\ & ((\pino_delicado~combout\ & (!\pino_pesado~combout\ & !\pino_economico~combout\)) # 
-- (!\pino_delicado~combout\ & (\pino_pesado~combout\ $ (\pino_economico~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pino_normal~combout\,
	datab => \pino_delicado~combout\,
	datac => \pino_pesado~combout\,
	datad => \pino_economico~combout\,
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X1_Y18_N12
\Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\estado_atual.Load~regout\ & ((!\process_1~0_combout\) # (!\volume_valido~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \volume_valido~0_combout\,
	datac => \estado_atual.Load~regout\,
	datad => \process_1~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RESET~I\ : cycloneii_io
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
	padio => ww_RESET,
	combout => \RESET~combout\);

-- Location: CLKCTRL_G1
\RESET~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~clkctrl_outclk\);

-- Location: LCFF_X1_Y18_N13
\estado_atual.Load\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector3~1_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.Load~regout\);

-- Location: LCCOMB_X1_Y18_N28
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Selector24~0_combout\) # ((\process_1~0_combout\ & (\volume_valido~0_combout\ & \estado_atual.Load~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \volume_valido~0_combout\,
	datac => \Selector24~0_combout\,
	datad => \estado_atual.Load~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X1_Y18_N29
\estado_atual.Enchendo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector4~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.Enchendo~regout\);

-- Location: LCCOMB_X2_Y18_N0
\estado_atual.Molho~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado_atual.Molho~feeder_combout\ = \estado_atual.Enchendo~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_atual.Enchendo~regout\,
	combout => \estado_atual.Molho~feeder_combout\);

-- Location: LCFF_X2_Y18_N1
\estado_atual.Molho\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	datain => \estado_atual.Molho~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	ena => \Timeout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.Molho~regout\);

-- Location: LCCOMB_X2_Y18_N16
\estado_atual.Lavar~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado_atual.Lavar~feeder_combout\ = \estado_atual.Molho~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_atual.Molho~regout\,
	combout => \estado_atual.Lavar~feeder_combout\);

-- Location: LCFF_X2_Y18_N17
\estado_atual.Lavar\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	datain => \estado_atual.Lavar~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	ena => \Timeout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.Lavar~regout\);

-- Location: LCFF_X2_Y18_N7
\estado_atual.Enxague\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	sdata => \estado_atual.Lavar~regout\,
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	ena => \Timeout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.Enxague~regout\);

-- Location: LCCOMB_X2_Y18_N28
\estado_atual.Centrifuga~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \estado_atual.Centrifuga~feeder_combout\ = \estado_atual.Enxague~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_atual.Enxague~regout\,
	combout => \estado_atual.Centrifuga~feeder_combout\);

-- Location: LCFF_X2_Y18_N29
\estado_atual.Centrifuga\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \estado_atual.Centrifuga~feeder_combout\,
	aclr => \RESET~clkctrl_outclk\,
	ena => \Timeout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.Centrifuga~regout\);

-- Location: LCFF_X1_Y18_N19
\estado_atual.Finalizado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	sdata => \estado_atual.Centrifuga~regout\,
	aclr => \RESET~clkctrl_outclk\,
	sload => VCC,
	ena => \Timeout~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.Finalizado~regout\);

-- Location: LCCOMB_X1_Y18_N26
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Ligar_maquina~combout\ & (((!\estado_atual.Finalizado~regout\)) # (!\Timeout~combout\))) # (!\Ligar_maquina~combout\ & (\estado_atual.Ligar~regout\ & ((!\estado_atual.Finalizado~regout\) # (!\Timeout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ligar_maquina~combout\,
	datab => \Timeout~combout\,
	datac => \estado_atual.Ligar~regout\,
	datad => \estado_atual.Finalizado~regout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X1_Y18_N27
\estado_atual.Ligar\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.Ligar~regout\);

-- Location: LCCOMB_X1_Y18_N16
\Reset_Vol_Agua$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reset_Vol_Agua$latch~combout\ = (\estado_atual.Ligar~regout\ & ((\Reset_Vol_Agua$latch~combout\))) # (!\estado_atual.Ligar~regout\ & (!\Ligar_maquina~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ligar_maquina~combout\,
	datac => \Reset_Vol_Agua$latch~combout\,
	datad => \estado_atual.Ligar~regout\,
	combout => \Reset_Vol_Agua$latch~combout\);

-- Location: LCCOMB_X1_Y18_N18
\process_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (\volume_valido~0_combout\ & \process_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \volume_valido~0_combout\,
	datad => \process_1~0_combout\,
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X1_Y18_N14
\Load_temp$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Load_temp$latch~combout\ = (\estado_atual.Load~regout\ & (\process_1~1_combout\)) # (!\estado_atual.Load~regout\ & ((\Load_temp$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~1_combout\,
	datac => \Load_temp$latch~combout\,
	datad => \estado_atual.Load~regout\,
	combout => \Load_temp$latch~combout\);

-- Location: LCCOMB_X2_Y18_N8
\WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (\estado_atual.Enxague~regout\) # ((\estado_atual.Centrifuga~regout\) # ((\estado_atual.Lavar~regout\) # (!\estado_atual.Ligar~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.Enxague~regout\,
	datab => \estado_atual.Centrifuga~regout\,
	datac => \estado_atual.Lavar~regout\,
	datad => \estado_atual.Ligar~regout\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X1_Y18_N22
\Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (\Timeout~combout\) # (!\estado_atual.Ligar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Timeout~combout\,
	datad => \estado_atual.Ligar~regout\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X1_Y18_N30
\Load_Motor$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Load_Motor$latch~combout\ = (\WideOr0~0_combout\ & ((!\Selector26~0_combout\))) # (!\WideOr0~0_combout\ & (\Load_Motor$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Load_Motor$latch~combout\,
	datac => \WideOr0~0_combout\,
	datad => \Selector26~0_combout\,
	combout => \Load_Motor$latch~combout\);

-- Location: LCCOMB_X1_Y18_N24
\WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\estado_atual.Enchendo~regout\) # (!\estado_atual.Ligar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.Ligar~regout\,
	datad => \estado_atual.Enchendo~regout\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y18_N0
\Led_Enchendo$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led_Enchendo$latch~combout\ = (\WideOr1~0_combout\ & ((\Selector24~0_combout\))) # (!\WideOr1~0_combout\ & (\Led_Enchendo$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Led_Enchendo$latch~combout\,
	datac => \WideOr1~0_combout\,
	datad => \Selector24~0_combout\,
	combout => \Led_Enchendo$latch~combout\);

-- Location: LCCOMB_X2_Y18_N14
\WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (\estado_atual.Molho~regout\) # (!\estado_atual.Ligar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.Molho~regout\,
	datad => \estado_atual.Ligar~regout\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X2_Y18_N30
\Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\Timeout~combout\ & \estado_atual.Molho~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Timeout~combout\,
	datad => \estado_atual.Molho~regout\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X2_Y18_N24
\Led_Molho$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led_Molho$latch~combout\ = (\WideOr2~0_combout\ & ((\Selector22~0_combout\))) # (!\WideOr2~0_combout\ & (\Led_Molho$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Led_Molho$latch~combout\,
	datac => \WideOr2~0_combout\,
	datad => \Selector22~0_combout\,
	combout => \Led_Molho$latch~combout\);

-- Location: LCCOMB_X2_Y18_N26
\WideOr0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (!\estado_atual.Lavar~regout\ & \estado_atual.Ligar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.Lavar~regout\,
	datad => \estado_atual.Ligar~regout\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X2_Y18_N12
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (!\Timeout~combout\ & \estado_atual.Lavar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Timeout~combout\,
	datac => \estado_atual.Lavar~regout\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X2_Y18_N22
\Led_Lavar$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led_Lavar$latch~combout\ = (\WideOr0~1_combout\ & (\Led_Lavar$latch~combout\)) # (!\WideOr0~1_combout\ & ((\Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Led_Lavar$latch~combout\,
	datac => \WideOr0~1_combout\,
	datad => \Selector20~0_combout\,
	combout => \Led_Lavar$latch~combout\);

-- Location: LCCOMB_X2_Y18_N6
\WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\estado_atual.Enxague~regout\) # (!\estado_atual.Ligar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.Enxague~regout\,
	datad => \estado_atual.Ligar~regout\,
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X2_Y18_N10
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (!\Timeout~combout\ & \estado_atual.Enxague~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Timeout~combout\,
	datad => \estado_atual.Enxague~regout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X2_Y18_N2
\Led_Enxague$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led_Enxague$latch~combout\ = (\WideOr4~0_combout\ & ((\Selector18~0_combout\))) # (!\WideOr4~0_combout\ & (\Led_Enxague$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Led_Enxague$latch~combout\,
	datac => \WideOr4~0_combout\,
	datad => \Selector18~0_combout\,
	combout => \Led_Enxague$latch~combout\);

-- Location: LCCOMB_X2_Y18_N20
\WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\estado_atual.Centrifuga~regout\) # (!\estado_atual.Ligar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.Centrifuga~regout\,
	datad => \estado_atual.Ligar~regout\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X2_Y18_N18
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\Timeout~combout\ & \estado_atual.Centrifuga~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Timeout~combout\,
	datad => \estado_atual.Centrifuga~regout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X2_Y18_N4
\Led_Centrifuga$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led_Centrifuga$latch~combout\ = (\WideOr5~0_combout\ & ((\Selector16~0_combout\))) # (!\WideOr5~0_combout\ & (\Led_Centrifuga$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Led_Centrifuga$latch~combout\,
	datac => \WideOr5~0_combout\,
	datad => \Selector16~0_combout\,
	combout => \Led_Centrifuga$latch~combout\);

-- Location: LCCOMB_X1_Y18_N20
\WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\estado_atual.Finalizado~regout\) # (!\estado_atual.Ligar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual.Finalizado~regout\,
	datac => \estado_atual.Ligar~regout\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X1_Y18_N10
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (!\Timeout~combout\ & \estado_atual.Finalizado~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Timeout~combout\,
	datad => \estado_atual.Finalizado~regout\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X1_Y18_N2
\Led_Finalizado$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led_Finalizado$latch~combout\ = (\WideOr6~0_combout\ & ((\Selector14~0_combout\))) # (!\WideOr6~0_combout\ & (\Led_Finalizado$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Led_Finalizado$latch~combout\,
	datac => \WideOr6~0_combout\,
	datad => \Selector14~0_combout\,
	combout => \Led_Finalizado$latch~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Porta~I\ : cycloneii_io
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
	padio => ww_Porta);

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Reset_Vol_Agua$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Reset_Vol_Agua);

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Load_Vol_Agua);

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Reset_Vol_Agua$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Reset_Modo);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Load_Modo);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Load_temp$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Load_temp);

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Reset_Vol_Agua$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Reset_Cont);

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Load_Motor~I\ : cycloneii_io
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
	datain => \Load_Motor$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Load_Motor);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Led_Enchendo~I\ : cycloneii_io
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
	datain => \Led_Enchendo$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led_Enchendo);

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Led_Molho~I\ : cycloneii_io
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
	datain => \Led_Molho$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led_Molho);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Led_Lavar~I\ : cycloneii_io
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
	datain => \Led_Lavar$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led_Lavar);

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Led_Enxague~I\ : cycloneii_io
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
	datain => \Led_Enxague$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led_Enxague);

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Led_Centrifuga~I\ : cycloneii_io
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
	datain => \Led_Centrifuga$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led_Centrifuga);

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Led_Finalizado~I\ : cycloneii_io
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
	datain => \Led_Finalizado$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led_Finalizado);

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Valvula_Agua~I\ : cycloneii_io
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
	datain => \Led_Enchendo$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Valvula_Agua);
END structure;


