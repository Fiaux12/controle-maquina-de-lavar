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

-- DATE "01/24/2025 20:40:01"

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
-- Reset_Vol_Agua	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Load_Vol_Agua	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Reset_Modo	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Load_Modo	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Load_temp	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Reset_Cont	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Load_Motor	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Enchendo	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Molho	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Lavar	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Enxague	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Centrifuga	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Finalizado	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Valvula_Agua	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Ligar_maquina	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pino_medio	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pino_alto	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pino_extra_baixo	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pino_baixo	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pino_pesado	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pino_normal	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pino_economico	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- pino_delicado	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Porta	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Timeout	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \WideOr9~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \pino_baixo~combout\ : std_logic;
SIGNAL \pino_pesado~combout\ : std_logic;
SIGNAL \pino_normal~combout\ : std_logic;
SIGNAL \pino_economico~combout\ : std_logic;
SIGNAL \pino_delicado~combout\ : std_logic;
SIGNAL \CLOCK~combout\ : std_logic;
SIGNAL \CLOCK~clkctrl_outclk\ : std_logic;
SIGNAL \Ligar_maquina~combout\ : std_logic;
SIGNAL \Timeout~combout\ : std_logic;
SIGNAL \Porta~combout\ : std_logic;
SIGNAL \pino_extra_baixo~combout\ : std_logic;
SIGNAL \pino_alto~combout\ : std_logic;
SIGNAL \pino_medio~combout\ : std_logic;
SIGNAL \volume_valido~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \RESET~clkctrl_outclk\ : std_logic;
SIGNAL \estado_atual.Load~regout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \estado_atual.Enchendo~regout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \estado_atual.Molho~regout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \estado_atual.Lavar~regout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \estado_atual.Enxague~regout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \estado_atual.Centrifuga~regout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \estado_atual.Finalizado~regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \estado_atual.Ligar~regout\ : std_logic;
SIGNAL \Reset_Vol_Agua$latch~combout\ : std_logic;
SIGNAL \WideOr9~combout\ : std_logic;
SIGNAL \WideOr9~clkctrl_outclk\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Load_temp$latch~combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector29~1_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Load_Motor$latch~combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector26~0_combout\ : std_logic;
SIGNAL \Led_Enchendo$latch~combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Led_Molho$latch~combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Led_Lavar$latch~combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Led_Enxague$latch~combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Led_Centrifuga$latch~combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
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

\WideOr9~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideOr9~combout\);

-- Location: LCCOMB_X16_Y35_N24
\process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (\pino_delicado~combout\ & (!\pino_normal~combout\ & (!\pino_economico~combout\ & !\pino_pesado~combout\))) # (!\pino_delicado~combout\ & ((\pino_normal~combout\ & (!\pino_economico~combout\ & !\pino_pesado~combout\)) # 
-- (!\pino_normal~combout\ & (\pino_economico~combout\ $ (\pino_pesado~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pino_delicado~combout\,
	datab => \pino_normal~combout\,
	datac => \pino_economico~combout\,
	datad => \pino_pesado~combout\,
	combout => \process_1~0_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_Porta,
	combout => \Porta~combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X27_Y35_N8
\volume_valido~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \volume_valido~0_combout\ = (\pino_baixo~combout\ & (!\pino_extra_baixo~combout\ & (!\pino_alto~combout\ & !\pino_medio~combout\))) # (!\pino_baixo~combout\ & ((\pino_extra_baixo~combout\ & (!\pino_alto~combout\ & !\pino_medio~combout\)) # 
-- (!\pino_extra_baixo~combout\ & (\pino_alto~combout\ $ (\pino_medio~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pino_baixo~combout\,
	datab => \pino_extra_baixo~combout\,
	datac => \pino_alto~combout\,
	datad => \pino_medio~combout\,
	combout => \volume_valido~0_combout\);

-- Location: LCCOMB_X23_Y35_N24
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\estado_atual.Enchendo~regout\ & ((\Porta~combout\) # (!\Timeout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Timeout~combout\,
	datac => \Porta~combout\,
	datad => \estado_atual.Enchendo~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X24_Y35_N24
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Ligar_maquina~combout\ & !\estado_atual.Ligar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Ligar_maquina~combout\,
	datad => \estado_atual.Ligar~regout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X23_Y35_N22
\Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\estado_atual.Load~regout\ & ((!\volume_valido~0_combout\) # (!\process_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \Selector3~0_combout\,
	datac => \estado_atual.Load~regout\,
	datad => \volume_valido~0_combout\,
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

-- Location: LCFF_X23_Y35_N23
\estado_atual.Load\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector3~1_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.Load~regout\);

-- Location: LCCOMB_X23_Y35_N6
\Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\process_1~0_combout\ & (\volume_valido~0_combout\ & \estado_atual.Load~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \volume_valido~0_combout\,
	datac => \Selector4~0_combout\,
	datad => \estado_atual.Load~regout\,
	combout => \Selector4~1_combout\);

-- Location: LCFF_X23_Y35_N7
\estado_atual.Enchendo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	datain => \Selector4~1_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.Enchendo~regout\);

-- Location: LCCOMB_X22_Y35_N2
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Timeout~combout\ & ((\Porta~combout\ & (\estado_atual.Molho~regout\)) # (!\Porta~combout\ & ((\estado_atual.Enchendo~regout\))))) # (!\Timeout~combout\ & (((\estado_atual.Molho~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timeout~combout\,
	datab => \Porta~combout\,
	datac => \estado_atual.Molho~regout\,
	datad => \estado_atual.Enchendo~regout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X22_Y35_N3
\estado_atual.Molho\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	datain => \Selector5~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.Molho~regout\);

-- Location: LCCOMB_X22_Y35_N22
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Timeout~combout\ & ((\Porta~combout\ & (\estado_atual.Lavar~regout\)) # (!\Porta~combout\ & ((\estado_atual.Molho~regout\))))) # (!\Timeout~combout\ & (((\estado_atual.Lavar~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timeout~combout\,
	datab => \Porta~combout\,
	datac => \estado_atual.Lavar~regout\,
	datad => \estado_atual.Molho~regout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X22_Y35_N23
\estado_atual.Lavar\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	datain => \Selector6~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.Lavar~regout\);

-- Location: LCCOMB_X22_Y35_N0
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Timeout~combout\ & ((\Porta~combout\ & (\estado_atual.Enxague~regout\)) # (!\Porta~combout\ & ((\estado_atual.Lavar~regout\))))) # (!\Timeout~combout\ & (((\estado_atual.Enxague~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timeout~combout\,
	datab => \Porta~combout\,
	datac => \estado_atual.Enxague~regout\,
	datad => \estado_atual.Lavar~regout\,
	combout => \Selector7~0_combout\);

-- Location: LCFF_X22_Y35_N1
\estado_atual.Enxague\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	datain => \Selector7~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.Enxague~regout\);

-- Location: LCCOMB_X22_Y35_N12
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Timeout~combout\ & ((\Porta~combout\ & (\estado_atual.Centrifuga~regout\)) # (!\Porta~combout\ & ((\estado_atual.Enxague~regout\))))) # (!\Timeout~combout\ & (((\estado_atual.Centrifuga~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timeout~combout\,
	datab => \Porta~combout\,
	datac => \estado_atual.Centrifuga~regout\,
	datad => \estado_atual.Enxague~regout\,
	combout => \Selector8~0_combout\);

-- Location: LCFF_X22_Y35_N13
\estado_atual.Centrifuga\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~combout\,
	datain => \Selector8~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.Centrifuga~regout\);

-- Location: LCCOMB_X22_Y35_N14
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\Timeout~combout\ & (!\Porta~combout\ & ((\estado_atual.Centrifuga~regout\)))) # (!\Timeout~combout\ & (((\estado_atual.Finalizado~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timeout~combout\,
	datab => \Porta~combout\,
	datac => \estado_atual.Finalizado~regout\,
	datad => \estado_atual.Centrifuga~regout\,
	combout => \Selector9~0_combout\);

-- Location: LCFF_X22_Y35_N15
\estado_atual.Finalizado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector9~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.Finalizado~regout\);

-- Location: LCCOMB_X23_Y35_N14
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

-- Location: LCFF_X23_Y35_N15
\estado_atual.Ligar\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \Selector2~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \estado_atual.Ligar~regout\);

-- Location: LCCOMB_X23_Y35_N8
\Reset_Vol_Agua$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Reset_Vol_Agua$latch~combout\ = (\estado_atual.Ligar~regout\ & ((\Reset_Vol_Agua$latch~combout\))) # (!\estado_atual.Ligar~regout\ & (!\Ligar_maquina~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Ligar_maquina~combout\,
	datac => \estado_atual.Ligar~regout\,
	datad => \Reset_Vol_Agua$latch~combout\,
	combout => \Reset_Vol_Agua$latch~combout\);

-- Location: LCCOMB_X23_Y35_N2
WideOr9 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr9~combout\ = (\estado_atual.Finalizado~regout\) # (!\estado_atual.Ligar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.Ligar~regout\,
	datad => \estado_atual.Finalizado~regout\,
	combout => \WideOr9~combout\);

-- Location: CLKCTRL_G10
\WideOr9~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr9~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr9~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y35_N28
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\estado_atual.Load~regout\ & (\process_1~0_combout\ & (\volume_valido~0_combout\))) # (!\estado_atual.Load~regout\ & (((!\Porta~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~0_combout\,
	datab => \volume_valido~0_combout\,
	datac => \Porta~combout\,
	datad => \estado_atual.Load~regout\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X23_Y35_N20
\Load_temp$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Load_temp$latch~combout\ = (GLOBAL(\WideOr9~clkctrl_outclk\) & (\Load_temp$latch~combout\)) # (!GLOBAL(\WideOr9~clkctrl_outclk\) & ((\Selector12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_temp$latch~combout\,
	datac => \WideOr9~clkctrl_outclk\,
	datad => \Selector12~0_combout\,
	combout => \Load_temp$latch~combout\);

-- Location: LCCOMB_X22_Y35_N26
\Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (\estado_atual.Ligar~regout\ & ((\Porta~combout\) # (!\estado_atual.Centrifuga~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual.Ligar~regout\,
	datac => \Porta~combout\,
	datad => \estado_atual.Centrifuga~regout\,
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X22_Y35_N30
\Selector29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector29~1_combout\ = ((!\Porta~combout\ & ((\estado_atual.Enxague~regout\) # (\estado_atual.Lavar~regout\)))) # (!\Selector29~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.Enxague~regout\,
	datab => \Porta~combout\,
	datac => \estado_atual.Lavar~regout\,
	datad => \Selector29~0_combout\,
	combout => \Selector29~1_combout\);

-- Location: LCCOMB_X23_Y35_N0
\Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\Timeout~combout\) # (!\estado_atual.Ligar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Timeout~combout\,
	datac => \estado_atual.Ligar~regout\,
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X23_Y35_N12
\Load_Motor$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Load_Motor$latch~combout\ = (\Selector29~1_combout\ & ((!\Selector28~0_combout\))) # (!\Selector29~1_combout\ & (\Load_Motor$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Load_Motor$latch~combout\,
	datac => \Selector29~1_combout\,
	datad => \Selector28~0_combout\,
	combout => \Load_Motor$latch~combout\);

-- Location: LCCOMB_X23_Y35_N4
\Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = ((!\Porta~combout\ & \estado_atual.Enchendo~regout\)) # (!\estado_atual.Ligar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Porta~combout\,
	datac => \estado_atual.Ligar~regout\,
	datad => \estado_atual.Enchendo~regout\,
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X23_Y35_N18
\Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector26~0_combout\ = (!\Timeout~combout\ & \estado_atual.Enchendo~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Timeout~combout\,
	datad => \estado_atual.Enchendo~regout\,
	combout => \Selector26~0_combout\);

-- Location: LCCOMB_X23_Y35_N26
\Led_Enchendo$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led_Enchendo$latch~combout\ = (\Selector27~0_combout\ & ((\Selector26~0_combout\))) # (!\Selector27~0_combout\ & (\Led_Enchendo$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector27~0_combout\,
	datac => \Led_Enchendo$latch~combout\,
	datad => \Selector26~0_combout\,
	combout => \Led_Enchendo$latch~combout\);

-- Location: LCCOMB_X23_Y35_N10
\Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = ((!\Porta~combout\ & \estado_atual.Molho~regout\)) # (!\estado_atual.Ligar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.Ligar~regout\,
	datab => \Porta~combout\,
	datad => \estado_atual.Molho~regout\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X22_Y35_N18
\Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\Timeout~combout\ & \estado_atual.Molho~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timeout~combout\,
	datad => \estado_atual.Molho~regout\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X22_Y35_N8
\Led_Molho$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led_Molho$latch~combout\ = (\Selector25~0_combout\ & ((\Selector24~0_combout\))) # (!\Selector25~0_combout\ & (\Led_Molho$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Led_Molho$latch~combout\,
	datac => \Selector25~0_combout\,
	datad => \Selector24~0_combout\,
	combout => \Led_Molho$latch~combout\);

-- Location: LCCOMB_X22_Y35_N24
\Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = ((!\Porta~combout\ & \estado_atual.Lavar~regout\)) # (!\estado_atual.Ligar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Porta~combout\,
	datac => \estado_atual.Ligar~regout\,
	datad => \estado_atual.Lavar~regout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X22_Y35_N6
\Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (!\Timeout~combout\ & \estado_atual.Lavar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timeout~combout\,
	datad => \estado_atual.Lavar~regout\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X22_Y35_N4
\Led_Lavar$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led_Lavar$latch~combout\ = (\Selector23~0_combout\ & ((\Selector22~0_combout\))) # (!\Selector23~0_combout\ & (\Led_Lavar$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Led_Lavar$latch~combout\,
	datac => \Selector23~0_combout\,
	datad => \Selector22~0_combout\,
	combout => \Led_Lavar$latch~combout\);

-- Location: LCCOMB_X23_Y35_N16
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ((!\Porta~combout\ & \estado_atual.Enxague~regout\)) # (!\estado_atual.Ligar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.Ligar~regout\,
	datab => \Porta~combout\,
	datac => \estado_atual.Enxague~regout\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X22_Y35_N28
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (!\Timeout~combout\ & \estado_atual.Enxague~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timeout~combout\,
	datad => \estado_atual.Enxague~regout\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X22_Y35_N16
\Led_Enxague$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led_Enxague$latch~combout\ = (\Selector21~0_combout\ & ((\Selector20~0_combout\))) # (!\Selector21~0_combout\ & (\Led_Enxague$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Led_Enxague$latch~combout\,
	datac => \Selector21~0_combout\,
	datad => \Selector20~0_combout\,
	combout => \Led_Enxague$latch~combout\);

-- Location: LCCOMB_X22_Y35_N10
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (!\Timeout~combout\ & \estado_atual.Centrifuga~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Timeout~combout\,
	datad => \estado_atual.Centrifuga~regout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X22_Y35_N20
\Led_Centrifuga$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led_Centrifuga$latch~combout\ = (\Selector29~0_combout\ & (\Led_Centrifuga$latch~combout\)) # (!\Selector29~0_combout\ & ((\Selector18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector29~0_combout\,
	datac => \Led_Centrifuga$latch~combout\,
	datad => \Selector18~0_combout\,
	combout => \Led_Centrifuga$latch~combout\);

-- Location: LCCOMB_X23_Y35_N30
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (!\Timeout~combout\ & \estado_atual.Finalizado~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Timeout~combout\,
	datad => \estado_atual.Finalizado~regout\,
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X24_Y35_N14
\Led_Finalizado$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \Led_Finalizado$latch~combout\ = (GLOBAL(\WideOr9~clkctrl_outclk\) & (\Selector16~0_combout\)) # (!GLOBAL(\WideOr9~clkctrl_outclk\) & ((\Led_Finalizado$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datac => \Led_Finalizado$latch~combout\,
	datad => \WideOr9~clkctrl_outclk\,
	combout => \Led_Finalizado$latch~combout\);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


