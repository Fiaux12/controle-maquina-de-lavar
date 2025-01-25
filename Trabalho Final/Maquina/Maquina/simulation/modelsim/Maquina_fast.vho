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

-- DATE "01/24/2025 21:28:46"

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

ENTITY 	Maquina IS
    PORT (
	RESET : IN std_logic;
	CLOCK : IN std_logic;
	Ligar_maquina : IN std_logic;
	Porta : IN std_logic;
	Display_7seg : OUT std_logic_vector(6 DOWNTO 0);
	vol_agua : IN std_logic_vector(3 DOWNTO 0);
	modo_lavgm : IN std_logic_vector(3 DOWNTO 0);
	Led_Enchendo : OUT std_logic;
	Led_Molho : OUT std_logic;
	Led_Lavar : OUT std_logic;
	Led_Enxague : OUT std_logic;
	Led_Centrifuga : OUT std_logic;
	Led_Finalizado : OUT std_logic;
	Valvula_Agua : OUT std_logic;
	Load_Motor : OUT std_logic
	);
END Maquina;

-- Design Ports Information
-- Display_7seg[0]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[1]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[2]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[3]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[4]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[5]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display_7seg[6]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Enchendo	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Molho	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Lavar	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Enxague	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Centrifuga	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Led_Finalizado	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Valvula_Agua	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Load_Motor	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Porta	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Ligar_maquina	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- modo_lavgm[1]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- modo_lavgm[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- modo_lavgm[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- modo_lavgm[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vol_agua[1]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vol_agua[0]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vol_agua[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- vol_agua[2]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Maquina IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_Ligar_maquina : std_logic;
SIGNAL ww_Porta : std_logic;
SIGNAL ww_Display_7seg : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_vol_agua : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_modo_lavgm : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Led_Enchendo : std_logic;
SIGNAL ww_Led_Molho : std_logic;
SIGNAL ww_Led_Lavar : std_logic;
SIGNAL ww_Led_Enxague : std_logic;
SIGNAL ww_Led_Centrifuga : std_logic;
SIGNAL ww_Led_Finalizado : std_logic;
SIGNAL ww_Valvula_Agua : std_logic;
SIGNAL ww_Load_Motor : std_logic;
SIGNAL \CLOCK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instancia_Temporizador|Add0~2_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~4_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~6_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~8_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~16_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~22_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~24_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|LessThan0~3_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector36~1_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector36~2_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector36~3_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|comb~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|comb~2_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Comp_vol_agua|Equal2~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|state[2]~2_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector23~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector24~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector31~0_combout\ : std_logic;
SIGNAL \CLOCK~combout\ : std_logic;
SIGNAL \CLOCK~clkctrl_outclk\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector27~0_combout\ : std_logic;
SIGNAL \Porta~combout\ : std_logic;
SIGNAL \instancia_controladora|Selector6~0_combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \RESET~clkctrl_outclk\ : std_logic;
SIGNAL \instancia_controladora|estado_atual.Molho~regout\ : std_logic;
SIGNAL \instancia_controladora|Selector8~0_combout\ : std_logic;
SIGNAL \instancia_controladora|estado_atual.Enxague~regout\ : std_logic;
SIGNAL \instancia_controladora|Selector9~0_combout\ : std_logic;
SIGNAL \instancia_controladora|estado_atual.Centrifuga~regout\ : std_logic;
SIGNAL \instancia_controladora|Selector5~0_combout\ : std_logic;
SIGNAL \instancia_controladora|estado_atual.Enchendo~regout\ : std_logic;
SIGNAL \instancia_controladora|Selector2~1_combout\ : std_logic;
SIGNAL \instancia_controladora|Selector2~2_combout\ : std_logic;
SIGNAL \Ligar_maquina~combout\ : std_logic;
SIGNAL \instancia_controladora|Selector4~0_combout\ : std_logic;
SIGNAL \instancia_controladora|Selector4~1_combout\ : std_logic;
SIGNAL \instancia_controladora|estado_atual.Load~regout\ : std_logic;
SIGNAL \instancia_controladora|Load_Vol_Agua~combout\ : std_logic;
SIGNAL \instancia_controladora|process_1~0_combout\ : std_logic;
SIGNAL \instancia_controladora|Selector2~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector32~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector34~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~18_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector26~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~20_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector25~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|LessThan0~4_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|LessThan0~2_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~10_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector30~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~14_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector28~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|LessThan0~5_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|LessThan0~6_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|LessThan0~7_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|LessThan1~1_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~44_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector13~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|LessThan1~2_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~58_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector6~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~56_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector7~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|LessThan1~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|LessThan1~3_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|LessThan1~5_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector68~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector68~1_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|LessThan1~4_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector68~2_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector68~3_combout\ : std_logic;
SIGNAL \instancia_controladora|modo_valido~0_combout\ : std_logic;
SIGNAL \instancia_controladora|Selector2~3_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|LessThan0~8_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|state[1]~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|state[1]~1_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|state[1]~4_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector35~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector35~1_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector35~2_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector35~3_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~1\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~3\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~5\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~7\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~9\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~11\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~12_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector29~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~13\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~15\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~17\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~19\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~21\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~23\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~25\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~26_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector22~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~27\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~28_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector21~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~29\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~30_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector20~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~31\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~32_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector19~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~33\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~34_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector18~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~35\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~36_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector17~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~37\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~38_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector16~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~39\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~40_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector15~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~41\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~42_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector14~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~43\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~45\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~46_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector12~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~47\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~48_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector11~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~49\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~50_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector10~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~51\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~52_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector9~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~53\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~54_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector8~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~55\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~57\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~59\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~60_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector5~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~61\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Add0~62_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector4~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|state[2]~3_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector36~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector36~4_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|timeout~regout\ : std_logic;
SIGNAL \instancia_controladora|Selector3~0_combout\ : std_logic;
SIGNAL \instancia_controladora|estado_atual.Ligar~regout\ : std_logic;
SIGNAL \instancia_controladora|Reset_Cont~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|comb~1_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|LessThan0~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|LessThan0~1_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|counter[23]~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|counter[23]~1_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|counter[23]~2_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector33~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector1~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|counter_out[3]~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|counter_out[3]~1_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector2~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector0~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|Selector3~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Bcd_7seg|Mux6~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Bcd_7seg|Mux5~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Bcd_7seg|Mux4~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Bcd_7seg|Mux3~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Bcd_7seg|Mux2~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Bcd_7seg|Mux1~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Bcd_7seg|Mux0~0_combout\ : std_logic;
SIGNAL \instancia_controladora|Led_Enchendo~0_combout\ : std_logic;
SIGNAL \instancia_controladora|Led_Molho~0_combout\ : std_logic;
SIGNAL \instancia_controladora|Selector7~0_combout\ : std_logic;
SIGNAL \instancia_controladora|estado_atual.Lavar~regout\ : std_logic;
SIGNAL \instancia_controladora|Led_Lavar~0_combout\ : std_logic;
SIGNAL \instancia_controladora|Led_Enxague~0_combout\ : std_logic;
SIGNAL \instancia_controladora|Led_Centrifuga~0_combout\ : std_logic;
SIGNAL \instancia_controladora|Selector10~0_combout\ : std_logic;
SIGNAL \instancia_controladora|estado_atual.Finalizado~regout\ : std_logic;
SIGNAL \instancia_controladora|Led_Finalizado~0_combout\ : std_logic;
SIGNAL \instancia_controladora|Selector1~0_combout\ : std_logic;
SIGNAL \instancia_controladora|Selector1~1_combout\ : std_logic;
SIGNAL \instancia_controladora|Selector0~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Temporizador|tempo_limite_enchendo\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instance_datapath|instancia_Temporizador|state\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \instance_datapath|instancia_Temporizador|counter_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instancia_Temporizador|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \vol_agua~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \modo_lavgm~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instancia_Reg_Vol_Agua|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instance_datapath|instancia_Reg_Modo|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instancia_controladora|ALT_INV_Led_Finalizado~0_combout\ : std_logic;
SIGNAL \instancia_controladora|ALT_INV_Led_Centrifuga~0_combout\ : std_logic;
SIGNAL \instancia_controladora|ALT_INV_Led_Enxague~0_combout\ : std_logic;
SIGNAL \instancia_controladora|ALT_INV_Led_Lavar~0_combout\ : std_logic;
SIGNAL \instancia_controladora|ALT_INV_Led_Molho~0_combout\ : std_logic;
SIGNAL \instancia_controladora|ALT_INV_Led_Enchendo~0_combout\ : std_logic;
SIGNAL \instance_datapath|instancia_Bcd_7seg|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_RESET <= RESET;
ww_CLOCK <= CLOCK;
ww_Ligar_maquina <= Ligar_maquina;
ww_Porta <= Porta;
Display_7seg <= ww_Display_7seg;
ww_vol_agua <= vol_agua;
ww_modo_lavgm <= modo_lavgm;
Led_Enchendo <= ww_Led_Enchendo;
Led_Molho <= ww_Led_Molho;
Led_Lavar <= ww_Led_Lavar;
Led_Enxague <= ww_Led_Enxague;
Led_Centrifuga <= ww_Led_Centrifuga;
Led_Finalizado <= ww_Led_Finalizado;
Valvula_Agua <= ww_Valvula_Agua;
Load_Motor <= ww_Load_Motor;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK~combout\);

\RESET~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RESET~combout\);
\instancia_controladora|ALT_INV_Led_Finalizado~0_combout\ <= NOT \instancia_controladora|Led_Finalizado~0_combout\;
\instancia_controladora|ALT_INV_Led_Centrifuga~0_combout\ <= NOT \instancia_controladora|Led_Centrifuga~0_combout\;
\instancia_controladora|ALT_INV_Led_Enxague~0_combout\ <= NOT \instancia_controladora|Led_Enxague~0_combout\;
\instancia_controladora|ALT_INV_Led_Lavar~0_combout\ <= NOT \instancia_controladora|Led_Lavar~0_combout\;
\instancia_controladora|ALT_INV_Led_Molho~0_combout\ <= NOT \instancia_controladora|Led_Molho~0_combout\;
\instancia_controladora|ALT_INV_Led_Enchendo~0_combout\ <= NOT \instancia_controladora|Led_Enchendo~0_combout\;
\instance_datapath|instancia_Bcd_7seg|ALT_INV_Mux0~0_combout\ <= NOT \instance_datapath|instancia_Bcd_7seg|Mux0~0_combout\;

-- Location: LCCOMB_X30_Y34_N2
\instance_datapath|instancia_Temporizador|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~2_combout\ = (\instance_datapath|instancia_Temporizador|counter\(1) & (!\instance_datapath|instancia_Temporizador|Add0~1\)) # (!\instance_datapath|instancia_Temporizador|counter\(1) & 
-- ((\instance_datapath|instancia_Temporizador|Add0~1\) # (GND)))
-- \instance_datapath|instancia_Temporizador|Add0~3\ = CARRY((!\instance_datapath|instancia_Temporizador|Add0~1\) # (!\instance_datapath|instancia_Temporizador|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(1),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~1\,
	combout => \instance_datapath|instancia_Temporizador|Add0~2_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~3\);

-- Location: LCCOMB_X30_Y34_N4
\instance_datapath|instancia_Temporizador|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~4_combout\ = (\instance_datapath|instancia_Temporizador|counter\(2) & (\instance_datapath|instancia_Temporizador|Add0~3\ $ (GND))) # (!\instance_datapath|instancia_Temporizador|counter\(2) & 
-- (!\instance_datapath|instancia_Temporizador|Add0~3\ & VCC))
-- \instance_datapath|instancia_Temporizador|Add0~5\ = CARRY((\instance_datapath|instancia_Temporizador|counter\(2) & !\instance_datapath|instancia_Temporizador|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(2),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~3\,
	combout => \instance_datapath|instancia_Temporizador|Add0~4_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~5\);

-- Location: LCCOMB_X30_Y34_N6
\instance_datapath|instancia_Temporizador|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~6_combout\ = (\instance_datapath|instancia_Temporizador|counter\(3) & (!\instance_datapath|instancia_Temporizador|Add0~5\)) # (!\instance_datapath|instancia_Temporizador|counter\(3) & 
-- ((\instance_datapath|instancia_Temporizador|Add0~5\) # (GND)))
-- \instance_datapath|instancia_Temporizador|Add0~7\ = CARRY((!\instance_datapath|instancia_Temporizador|Add0~5\) # (!\instance_datapath|instancia_Temporizador|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(3),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~5\,
	combout => \instance_datapath|instancia_Temporizador|Add0~6_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~7\);

-- Location: LCCOMB_X30_Y34_N8
\instance_datapath|instancia_Temporizador|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~8_combout\ = (\instance_datapath|instancia_Temporizador|counter\(4) & (\instance_datapath|instancia_Temporizador|Add0~7\ $ (GND))) # (!\instance_datapath|instancia_Temporizador|counter\(4) & 
-- (!\instance_datapath|instancia_Temporizador|Add0~7\ & VCC))
-- \instance_datapath|instancia_Temporizador|Add0~9\ = CARRY((\instance_datapath|instancia_Temporizador|counter\(4) & !\instance_datapath|instancia_Temporizador|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(4),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~7\,
	combout => \instance_datapath|instancia_Temporizador|Add0~8_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~9\);

-- Location: LCCOMB_X30_Y34_N16
\instance_datapath|instancia_Temporizador|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~16_combout\ = (\instance_datapath|instancia_Temporizador|counter\(8) & (\instance_datapath|instancia_Temporizador|Add0~15\ $ (GND))) # (!\instance_datapath|instancia_Temporizador|counter\(8) & 
-- (!\instance_datapath|instancia_Temporizador|Add0~15\ & VCC))
-- \instance_datapath|instancia_Temporizador|Add0~17\ = CARRY((\instance_datapath|instancia_Temporizador|counter\(8) & !\instance_datapath|instancia_Temporizador|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(8),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~15\,
	combout => \instance_datapath|instancia_Temporizador|Add0~16_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~17\);

-- Location: LCCOMB_X30_Y34_N22
\instance_datapath|instancia_Temporizador|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~22_combout\ = (\instance_datapath|instancia_Temporizador|counter\(11) & (!\instance_datapath|instancia_Temporizador|Add0~21\)) # (!\instance_datapath|instancia_Temporizador|counter\(11) & 
-- ((\instance_datapath|instancia_Temporizador|Add0~21\) # (GND)))
-- \instance_datapath|instancia_Temporizador|Add0~23\ = CARRY((!\instance_datapath|instancia_Temporizador|Add0~21\) # (!\instance_datapath|instancia_Temporizador|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(11),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~21\,
	combout => \instance_datapath|instancia_Temporizador|Add0~22_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~23\);

-- Location: LCCOMB_X30_Y34_N24
\instance_datapath|instancia_Temporizador|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~24_combout\ = (\instance_datapath|instancia_Temporizador|counter\(12) & (\instance_datapath|instancia_Temporizador|Add0~23\ $ (GND))) # (!\instance_datapath|instancia_Temporizador|counter\(12) & 
-- (!\instance_datapath|instancia_Temporizador|Add0~23\ & VCC))
-- \instance_datapath|instancia_Temporizador|Add0~25\ = CARRY((\instance_datapath|instancia_Temporizador|counter\(12) & !\instance_datapath|instancia_Temporizador|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(12),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~23\,
	combout => \instance_datapath|instancia_Temporizador|Add0~24_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~25\);

-- Location: LCFF_X27_Y35_N11
\instance_datapath|instancia_Temporizador|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector23~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(12));

-- Location: LCCOMB_X27_Y35_N12
\instance_datapath|instancia_Temporizador|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|LessThan0~3_combout\ = (!\instance_datapath|instancia_Temporizador|counter\(13) & (!\instance_datapath|instancia_Temporizador|counter\(14) & (!\instance_datapath|instancia_Temporizador|counter\(15) & 
-- !\instance_datapath|instancia_Temporizador|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(13),
	datab => \instance_datapath|instancia_Temporizador|counter\(14),
	datac => \instance_datapath|instancia_Temporizador|counter\(15),
	datad => \instance_datapath|instancia_Temporizador|counter\(12),
	combout => \instance_datapath|instancia_Temporizador|LessThan0~3_combout\);

-- Location: LCFF_X29_Y34_N13
\instance_datapath|instancia_Temporizador|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector24~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(11));

-- Location: LCFF_X29_Y34_N3
\instance_datapath|instancia_Temporizador|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector31~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(4));

-- Location: LCFF_X28_Y35_N1
\instance_datapath|instancia_Reg_Modo|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \modo_lavgm~combout\(0),
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_Modo|Q\(0));

-- Location: LCFF_X28_Y35_N21
\instance_datapath|instancia_Reg_Vol_Agua|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \vol_agua~combout\(0),
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	sload => VCC,
	ena => \instancia_controladora|Load_Vol_Agua~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_Vol_Agua|Q\(0));

-- Location: LCCOMB_X27_Y34_N14
\instance_datapath|instancia_Temporizador|Selector36~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector36~1_combout\ = (\instance_datapath|instancia_Temporizador|state\(1) & ((\instance_datapath|instancia_Temporizador|timeout~regout\) # ((!\instance_datapath|instancia_Temporizador|state\(2))))) # 
-- (!\instance_datapath|instancia_Temporizador|state\(1) & (((\instance_datapath|instancia_Temporizador|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|timeout~regout\,
	datab => \instance_datapath|instancia_Temporizador|state\(0),
	datac => \instance_datapath|instancia_Temporizador|state\(2),
	datad => \instance_datapath|instancia_Temporizador|state\(1),
	combout => \instance_datapath|instancia_Temporizador|Selector36~1_combout\);

-- Location: LCCOMB_X28_Y34_N18
\instance_datapath|instancia_Temporizador|Selector36~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector36~2_combout\ = (\instance_datapath|instancia_Temporizador|LessThan1~3_combout\ & ((\instance_datapath|instancia_Temporizador|Selector36~1_combout\ & 
-- ((!\instance_datapath|instancia_Temporizador|LessThan1~5_combout\))) # (!\instance_datapath|instancia_Temporizador|Selector36~1_combout\ & (!\instance_datapath|instancia_Temporizador|LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|Selector36~1_combout\,
	datab => \instance_datapath|instancia_Temporizador|LessThan0~7_combout\,
	datac => \instance_datapath|instancia_Temporizador|LessThan1~3_combout\,
	datad => \instance_datapath|instancia_Temporizador|LessThan1~5_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector36~2_combout\);

-- Location: LCCOMB_X28_Y34_N24
\instance_datapath|instancia_Temporizador|Selector36~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector36~3_combout\ = (\instance_datapath|instancia_Temporizador|state\(2) & ((\instance_datapath|instancia_Temporizador|counter\(31) $ (!\instance_datapath|instancia_Temporizador|Selector36~1_combout\)))) # 
-- (!\instance_datapath|instancia_Temporizador|state\(2) & (\instance_datapath|instancia_Temporizador|Selector36~2_combout\ & (!\instance_datapath|instancia_Temporizador|counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|state\(2),
	datab => \instance_datapath|instancia_Temporizador|Selector36~2_combout\,
	datac => \instance_datapath|instancia_Temporizador|counter\(31),
	datad => \instance_datapath|instancia_Temporizador|Selector36~1_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector36~3_combout\);

-- Location: LCCOMB_X27_Y35_N14
\instance_datapath|instancia_Temporizador|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|comb~0_combout\ = (!\instance_datapath|instancia_Reg_Vol_Agua|Q\(3) & ((\instance_datapath|instancia_Reg_Vol_Agua|Q\(0) & (!\instance_datapath|instancia_Reg_Vol_Agua|Q\(1) & 
-- !\instance_datapath|instancia_Reg_Vol_Agua|Q\(2))) # (!\instance_datapath|instancia_Reg_Vol_Agua|Q\(0) & (\instance_datapath|instancia_Reg_Vol_Agua|Q\(1) $ (\instance_datapath|instancia_Reg_Vol_Agua|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_Vol_Agua|Q\(0),
	datab => \instance_datapath|instancia_Reg_Vol_Agua|Q\(1),
	datac => \instance_datapath|instancia_Reg_Vol_Agua|Q\(3),
	datad => \instance_datapath|instancia_Reg_Vol_Agua|Q\(2),
	combout => \instance_datapath|instancia_Temporizador|comb~0_combout\);

-- Location: LCCOMB_X28_Y35_N20
\instance_datapath|instancia_Temporizador|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|comb~2_combout\ = (!\instance_datapath|instancia_Reg_Vol_Agua|Q\(2) & ((\instance_datapath|instancia_Reg_Vol_Agua|Q\(3) & (!\instance_datapath|instancia_Reg_Vol_Agua|Q\(0) & 
-- !\instance_datapath|instancia_Reg_Vol_Agua|Q\(1))) # (!\instance_datapath|instancia_Reg_Vol_Agua|Q\(3) & (\instance_datapath|instancia_Reg_Vol_Agua|Q\(0) $ (\instance_datapath|instancia_Reg_Vol_Agua|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_Vol_Agua|Q\(3),
	datab => \instance_datapath|instancia_Reg_Vol_Agua|Q\(2),
	datac => \instance_datapath|instancia_Reg_Vol_Agua|Q\(0),
	datad => \instance_datapath|instancia_Reg_Vol_Agua|Q\(1),
	combout => \instance_datapath|instancia_Temporizador|comb~2_combout\);

-- Location: LCCOMB_X28_Y35_N22
\instance_datapath|instancia_Comp_vol_agua|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Comp_vol_agua|Equal2~0_combout\ = (\instance_datapath|instancia_Reg_Vol_Agua|Q\(0)) # (((\instance_datapath|instancia_Reg_Vol_Agua|Q\(1)) # (\instance_datapath|instancia_Reg_Vol_Agua|Q\(3))) # 
-- (!\instance_datapath|instancia_Reg_Vol_Agua|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_Vol_Agua|Q\(0),
	datab => \instance_datapath|instancia_Reg_Vol_Agua|Q\(2),
	datac => \instance_datapath|instancia_Reg_Vol_Agua|Q\(1),
	datad => \instance_datapath|instancia_Reg_Vol_Agua|Q\(3),
	combout => \instance_datapath|instancia_Comp_vol_agua|Equal2~0_combout\);

-- Location: LCCOMB_X27_Y34_N6
\instance_datapath|instancia_Temporizador|state[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|state[2]~2_combout\ = (\instance_datapath|instancia_Temporizador|state\(1) & ((\instance_datapath|instancia_Temporizador|state\(2)) # (\instance_datapath|instancia_Temporizador|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|state\(2),
	datab => \instance_datapath|instancia_Temporizador|state\(1),
	datad => \instance_datapath|instancia_Temporizador|state\(0),
	combout => \instance_datapath|instancia_Temporizador|state[2]~2_combout\);

-- Location: LCCOMB_X27_Y35_N10
\instance_datapath|instancia_Temporizador|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector23~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter[23]~2_combout\ & \instance_datapath|instancia_Temporizador|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|Add0~24_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector23~0_combout\);

-- Location: LCCOMB_X29_Y34_N12
\instance_datapath|instancia_Temporizador|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector24~0_combout\ = (\instance_datapath|instancia_Temporizador|Add0~22_combout\ & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|Add0~22_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector24~0_combout\);

-- Location: LCCOMB_X29_Y34_N2
\instance_datapath|instancia_Temporizador|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector31~0_combout\ = (\instance_datapath|instancia_Temporizador|Add0~8_combout\ & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|Add0~8_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector31~0_combout\);

-- Location: LCCOMB_X28_Y35_N12
\instance_datapath|instancia_Temporizador|tempo_limite_enchendo[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(2) = (!\instance_datapath|instancia_Temporizador|comb~0_combout\ & ((\instance_datapath|instancia_Temporizador|comb~1_combout\) # 
-- (\instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|comb~0_combout\,
	datab => \instance_datapath|instancia_Temporizador|comb~1_combout\,
	datad => \instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(2),
	combout => \instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(2));

-- Location: LCCOMB_X28_Y35_N18
\instance_datapath|instancia_Temporizador|tempo_limite_enchendo[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(0) = (!\instance_datapath|instancia_Temporizador|comb~2_combout\ & ((\instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(0)) # 
-- (!\instance_datapath|instancia_Comp_vol_agua|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Comp_vol_agua|Equal2~0_combout\,
	datac => \instance_datapath|instancia_Temporizador|comb~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(0),
	combout => \instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(0));

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

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\modo_lavgm[0]~I\ : cycloneii_io
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
	padio => ww_modo_lavgm(0),
	combout => \modo_lavgm~combout\(0));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X29_Y34_N26
\instance_datapath|instancia_Temporizador|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector27~0_combout\ = (\instance_datapath|instancia_Temporizador|Add0~16_combout\ & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|Add0~16_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector27~0_combout\);

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
	padio => ww_Porta,
	combout => \Porta~combout\);

-- Location: LCCOMB_X24_Y35_N16
\instancia_controladora|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Selector6~0_combout\ = (\instance_datapath|instancia_Temporizador|timeout~regout\ & ((\Porta~combout\ & ((\instancia_controladora|estado_atual.Molho~regout\))) # (!\Porta~combout\ & 
-- (\instancia_controladora|estado_atual.Enchendo~regout\)))) # (!\instance_datapath|instancia_Temporizador|timeout~regout\ & (((\instancia_controladora|estado_atual.Molho~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_controladora|estado_atual.Enchendo~regout\,
	datab => \instance_datapath|instancia_Temporizador|timeout~regout\,
	datac => \instancia_controladora|estado_atual.Molho~regout\,
	datad => \Porta~combout\,
	combout => \instancia_controladora|Selector6~0_combout\);

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

-- Location: LCFF_X24_Y35_N17
\instancia_controladora|estado_atual.Molho\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instancia_controladora|Selector6~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_controladora|estado_atual.Molho~regout\);

-- Location: LCCOMB_X24_Y35_N0
\instancia_controladora|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Selector8~0_combout\ = (\instance_datapath|instancia_Temporizador|timeout~regout\ & ((\Porta~combout\ & ((\instancia_controladora|estado_atual.Enxague~regout\))) # (!\Porta~combout\ & 
-- (\instancia_controladora|estado_atual.Lavar~regout\)))) # (!\instance_datapath|instancia_Temporizador|timeout~regout\ & (((\instancia_controladora|estado_atual.Enxague~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_controladora|estado_atual.Lavar~regout\,
	datab => \instance_datapath|instancia_Temporizador|timeout~regout\,
	datac => \instancia_controladora|estado_atual.Enxague~regout\,
	datad => \Porta~combout\,
	combout => \instancia_controladora|Selector8~0_combout\);

-- Location: LCFF_X24_Y35_N1
\instancia_controladora|estado_atual.Enxague\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instancia_controladora|Selector8~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_controladora|estado_atual.Enxague~regout\);

-- Location: LCCOMB_X24_Y35_N8
\instancia_controladora|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Selector9~0_combout\ = (\Porta~combout\ & (((\instancia_controladora|estado_atual.Centrifuga~regout\)))) # (!\Porta~combout\ & ((\instance_datapath|instancia_Temporizador|timeout~regout\ & 
-- ((\instancia_controladora|estado_atual.Enxague~regout\))) # (!\instance_datapath|instancia_Temporizador|timeout~regout\ & (\instancia_controladora|estado_atual.Centrifuga~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Porta~combout\,
	datab => \instance_datapath|instancia_Temporizador|timeout~regout\,
	datac => \instancia_controladora|estado_atual.Centrifuga~regout\,
	datad => \instancia_controladora|estado_atual.Enxague~regout\,
	combout => \instancia_controladora|Selector9~0_combout\);

-- Location: LCFF_X24_Y35_N9
\instancia_controladora|estado_atual.Centrifuga\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instancia_controladora|Selector9~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_controladora|estado_atual.Centrifuga~regout\);

-- Location: LCCOMB_X24_Y35_N12
\instancia_controladora|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Selector5~0_combout\ = (\instancia_controladora|Selector2~0_combout\) # ((\instancia_controladora|estado_atual.Enchendo~regout\ & ((\Porta~combout\) # (!\instance_datapath|instancia_Temporizador|timeout~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_controladora|Selector2~0_combout\,
	datab => \instance_datapath|instancia_Temporizador|timeout~regout\,
	datac => \instancia_controladora|estado_atual.Enchendo~regout\,
	datad => \Porta~combout\,
	combout => \instancia_controladora|Selector5~0_combout\);

-- Location: LCFF_X24_Y35_N13
\instancia_controladora|estado_atual.Enchendo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instancia_controladora|Selector5~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_controladora|estado_atual.Enchendo~regout\);

-- Location: LCCOMB_X24_Y35_N28
\instancia_controladora|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Selector2~1_combout\ = (\instancia_controladora|estado_atual.Lavar~regout\) # ((\instancia_controladora|estado_atual.Enxague~regout\) # ((\instancia_controladora|estado_atual.Centrifuga~regout\) # 
-- (\instancia_controladora|estado_atual.Enchendo~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_controladora|estado_atual.Lavar~regout\,
	datab => \instancia_controladora|estado_atual.Enxague~regout\,
	datac => \instancia_controladora|estado_atual.Centrifuga~regout\,
	datad => \instancia_controladora|estado_atual.Enchendo~regout\,
	combout => \instancia_controladora|Selector2~1_combout\);

-- Location: LCCOMB_X24_Y35_N18
\instancia_controladora|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Selector2~2_combout\ = (!\Porta~combout\ & ((\instancia_controladora|estado_atual.Molho~regout\) # (\instancia_controladora|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Porta~combout\,
	datac => \instancia_controladora|estado_atual.Molho~regout\,
	datad => \instancia_controladora|Selector2~1_combout\,
	combout => \instancia_controladora|Selector2~2_combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X28_Y35_N10
\instancia_controladora|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Selector4~0_combout\ = (!\instancia_controladora|estado_atual.Ligar~regout\ & \Ligar_maquina~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_controladora|estado_atual.Ligar~regout\,
	datad => \Ligar_maquina~combout\,
	combout => \instancia_controladora|Selector4~0_combout\);

-- Location: LCCOMB_X28_Y35_N24
\instancia_controladora|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Selector4~1_combout\ = (\instancia_controladora|Selector4~0_combout\) # ((\instancia_controladora|estado_atual.Load~regout\ & ((!\instancia_controladora|process_1~0_combout\) # (!\instancia_controladora|modo_valido~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_controladora|modo_valido~0_combout\,
	datab => \instancia_controladora|process_1~0_combout\,
	datac => \instancia_controladora|estado_atual.Load~regout\,
	datad => \instancia_controladora|Selector4~0_combout\,
	combout => \instancia_controladora|Selector4~1_combout\);

-- Location: LCFF_X28_Y35_N25
\instancia_controladora|estado_atual.Load\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instancia_controladora|Selector4~1_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_controladora|estado_atual.Load~regout\);

-- Location: LCCOMB_X27_Y35_N30
\instancia_controladora|Load_Vol_Agua\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Load_Vol_Agua~combout\ = (\instancia_controladora|estado_atual.Load~regout\) # (!\instancia_controladora|estado_atual.Ligar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instancia_controladora|estado_atual.Load~regout\,
	datad => \instancia_controladora|estado_atual.Ligar~regout\,
	combout => \instancia_controladora|Load_Vol_Agua~combout\);

-- Location: LCFF_X28_Y35_N5
\instance_datapath|instancia_Reg_Vol_Agua|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \vol_agua~combout\(2),
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	sload => VCC,
	ena => \instancia_controladora|Load_Vol_Agua~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_Vol_Agua|Q\(2));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X28_Y35_N11
\instance_datapath|instancia_Reg_Vol_Agua|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \vol_agua~combout\(3),
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	sload => VCC,
	ena => \instancia_controladora|Load_Vol_Agua~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_Vol_Agua|Q\(3));

-- Location: LCCOMB_X28_Y35_N4
\instancia_controladora|process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|process_1~0_combout\ = (\instance_datapath|instancia_Reg_Vol_Agua|Q\(0) & (!\instance_datapath|instancia_Reg_Vol_Agua|Q\(1) & (!\instance_datapath|instancia_Reg_Vol_Agua|Q\(2) & !\instance_datapath|instancia_Reg_Vol_Agua|Q\(3)))) # 
-- (!\instance_datapath|instancia_Reg_Vol_Agua|Q\(0) & ((\instance_datapath|instancia_Reg_Vol_Agua|Q\(1) & (!\instance_datapath|instancia_Reg_Vol_Agua|Q\(2) & !\instance_datapath|instancia_Reg_Vol_Agua|Q\(3))) # 
-- (!\instance_datapath|instancia_Reg_Vol_Agua|Q\(1) & (\instance_datapath|instancia_Reg_Vol_Agua|Q\(2) $ (\instance_datapath|instancia_Reg_Vol_Agua|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_Vol_Agua|Q\(0),
	datab => \instance_datapath|instancia_Reg_Vol_Agua|Q\(1),
	datac => \instance_datapath|instancia_Reg_Vol_Agua|Q\(2),
	datad => \instance_datapath|instancia_Reg_Vol_Agua|Q\(3),
	combout => \instancia_controladora|process_1~0_combout\);

-- Location: LCCOMB_X28_Y35_N30
\instancia_controladora|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Selector2~0_combout\ = (\instancia_controladora|modo_valido~0_combout\ & (\instancia_controladora|process_1~0_combout\ & \instancia_controladora|estado_atual.Load~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_controladora|modo_valido~0_combout\,
	datab => \instancia_controladora|process_1~0_combout\,
	datad => \instancia_controladora|estado_atual.Load~regout\,
	combout => \instancia_controladora|Selector2~0_combout\);

-- Location: LCCOMB_X28_Y35_N14
\instance_datapath|instancia_Temporizador|counter_out[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\ = (\instance_datapath|instancia_Temporizador|counter_out[3]~0_combout\ & ((\instancia_controladora|Selector2~2_combout\) # (\instancia_controladora|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter_out[3]~0_combout\,
	datab => \instancia_controladora|Selector2~2_combout\,
	datad => \instancia_controladora|Selector2~0_combout\,
	combout => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\);

-- Location: LCFF_X29_Y34_N27
\instance_datapath|instancia_Temporizador|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector27~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(8));

-- Location: LCCOMB_X29_Y34_N6
\instance_datapath|instancia_Temporizador|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector32~0_combout\ = (\instance_datapath|instancia_Temporizador|Add0~6_combout\ & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|Add0~6_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector32~0_combout\);

-- Location: LCFF_X29_Y34_N7
\instance_datapath|instancia_Temporizador|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector32~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(3));

-- Location: LCCOMB_X29_Y34_N18
\instance_datapath|instancia_Temporizador|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector34~0_combout\ = (\instance_datapath|instancia_Temporizador|Add0~2_combout\ & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|Add0~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector34~0_combout\);

-- Location: LCFF_X29_Y34_N19
\instance_datapath|instancia_Temporizador|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector34~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(1));

-- Location: LCCOMB_X30_Y34_N18
\instance_datapath|instancia_Temporizador|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~18_combout\ = (\instance_datapath|instancia_Temporizador|counter\(9) & (!\instance_datapath|instancia_Temporizador|Add0~17\)) # (!\instance_datapath|instancia_Temporizador|counter\(9) & 
-- ((\instance_datapath|instancia_Temporizador|Add0~17\) # (GND)))
-- \instance_datapath|instancia_Temporizador|Add0~19\ = CARRY((!\instance_datapath|instancia_Temporizador|Add0~17\) # (!\instance_datapath|instancia_Temporizador|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(9),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~17\,
	combout => \instance_datapath|instancia_Temporizador|Add0~18_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~19\);

-- Location: LCCOMB_X29_Y34_N0
\instance_datapath|instancia_Temporizador|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector26~0_combout\ = (\instance_datapath|instancia_Temporizador|Add0~18_combout\ & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|Add0~18_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector26~0_combout\);

-- Location: LCFF_X29_Y34_N1
\instance_datapath|instancia_Temporizador|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector26~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(9));

-- Location: LCCOMB_X30_Y34_N20
\instance_datapath|instancia_Temporizador|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~20_combout\ = (\instance_datapath|instancia_Temporizador|counter\(10) & (\instance_datapath|instancia_Temporizador|Add0~19\ $ (GND))) # (!\instance_datapath|instancia_Temporizador|counter\(10) & 
-- (!\instance_datapath|instancia_Temporizador|Add0~19\ & VCC))
-- \instance_datapath|instancia_Temporizador|Add0~21\ = CARRY((\instance_datapath|instancia_Temporizador|counter\(10) & !\instance_datapath|instancia_Temporizador|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(10),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~19\,
	combout => \instance_datapath|instancia_Temporizador|Add0~20_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~21\);

-- Location: LCCOMB_X29_Y34_N14
\instance_datapath|instancia_Temporizador|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector25~0_combout\ = (\instance_datapath|instancia_Temporizador|Add0~20_combout\ & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|Add0~20_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector25~0_combout\);

-- Location: LCFF_X29_Y34_N15
\instance_datapath|instancia_Temporizador|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector25~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(10));

-- Location: LCCOMB_X29_Y34_N8
\instance_datapath|instancia_Temporizador|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|LessThan0~4_combout\ = (!\instance_datapath|instancia_Temporizador|counter\(11) & (!\instance_datapath|instancia_Temporizador|counter\(9) & (!\instance_datapath|instancia_Temporizador|counter\(10) & 
-- !\instance_datapath|instancia_Temporizador|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(11),
	datab => \instance_datapath|instancia_Temporizador|counter\(9),
	datac => \instance_datapath|instancia_Temporizador|counter\(10),
	datad => \instance_datapath|instancia_Temporizador|counter\(8),
	combout => \instance_datapath|instancia_Temporizador|LessThan0~4_combout\);

-- Location: LCCOMB_X27_Y35_N18
\instance_datapath|instancia_Temporizador|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|LessThan0~2_combout\ = (!\instance_datapath|instancia_Temporizador|counter\(18) & (!\instance_datapath|instancia_Temporizador|counter\(19) & (!\instance_datapath|instancia_Temporizador|counter\(16) & 
-- !\instance_datapath|instancia_Temporizador|counter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(18),
	datab => \instance_datapath|instancia_Temporizador|counter\(19),
	datac => \instance_datapath|instancia_Temporizador|counter\(16),
	datad => \instance_datapath|instancia_Temporizador|counter\(17),
	combout => \instance_datapath|instancia_Temporizador|LessThan0~2_combout\);

-- Location: LCCOMB_X30_Y34_N10
\instance_datapath|instancia_Temporizador|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~10_combout\ = (\instance_datapath|instancia_Temporizador|counter\(5) & (!\instance_datapath|instancia_Temporizador|Add0~9\)) # (!\instance_datapath|instancia_Temporizador|counter\(5) & 
-- ((\instance_datapath|instancia_Temporizador|Add0~9\) # (GND)))
-- \instance_datapath|instancia_Temporizador|Add0~11\ = CARRY((!\instance_datapath|instancia_Temporizador|Add0~9\) # (!\instance_datapath|instancia_Temporizador|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(5),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~9\,
	combout => \instance_datapath|instancia_Temporizador|Add0~10_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~11\);

-- Location: LCCOMB_X29_Y35_N26
\instance_datapath|instancia_Temporizador|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector30~0_combout\ = (\instance_datapath|instancia_Temporizador|Add0~10_combout\ & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|Add0~10_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector30~0_combout\);

-- Location: LCFF_X29_Y35_N27
\instance_datapath|instancia_Temporizador|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector30~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(5));

-- Location: LCCOMB_X30_Y34_N14
\instance_datapath|instancia_Temporizador|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~14_combout\ = (\instance_datapath|instancia_Temporizador|counter\(7) & (!\instance_datapath|instancia_Temporizador|Add0~13\)) # (!\instance_datapath|instancia_Temporizador|counter\(7) & 
-- ((\instance_datapath|instancia_Temporizador|Add0~13\) # (GND)))
-- \instance_datapath|instancia_Temporizador|Add0~15\ = CARRY((!\instance_datapath|instancia_Temporizador|Add0~13\) # (!\instance_datapath|instancia_Temporizador|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(7),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~13\,
	combout => \instance_datapath|instancia_Temporizador|Add0~14_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~15\);

-- Location: LCCOMB_X29_Y34_N30
\instance_datapath|instancia_Temporizador|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector28~0_combout\ = (\instance_datapath|instancia_Temporizador|Add0~14_combout\ & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|Add0~14_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector28~0_combout\);

-- Location: LCFF_X29_Y34_N31
\instance_datapath|instancia_Temporizador|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector28~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(7));

-- Location: LCCOMB_X28_Y34_N2
\instance_datapath|instancia_Temporizador|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|LessThan0~5_combout\ = (!\instance_datapath|instancia_Temporizador|counter\(4) & (!\instance_datapath|instancia_Temporizador|counter\(6) & (!\instance_datapath|instancia_Temporizador|counter\(5) & 
-- !\instance_datapath|instancia_Temporizador|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(4),
	datab => \instance_datapath|instancia_Temporizador|counter\(6),
	datac => \instance_datapath|instancia_Temporizador|counter\(5),
	datad => \instance_datapath|instancia_Temporizador|counter\(7),
	combout => \instance_datapath|instancia_Temporizador|LessThan0~5_combout\);

-- Location: LCCOMB_X28_Y34_N20
\instance_datapath|instancia_Temporizador|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|LessThan0~6_combout\ = (\instance_datapath|instancia_Temporizador|LessThan0~3_combout\ & (\instance_datapath|instancia_Temporizador|LessThan0~4_combout\ & 
-- (\instance_datapath|instancia_Temporizador|LessThan0~2_combout\ & \instance_datapath|instancia_Temporizador|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|LessThan0~3_combout\,
	datab => \instance_datapath|instancia_Temporizador|LessThan0~4_combout\,
	datac => \instance_datapath|instancia_Temporizador|LessThan0~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|LessThan0~5_combout\,
	combout => \instance_datapath|instancia_Temporizador|LessThan0~6_combout\);

-- Location: LCCOMB_X28_Y34_N26
\instance_datapath|instancia_Temporizador|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|LessThan0~7_combout\ = (\instance_datapath|instancia_Temporizador|counter\(3)) # ((\instance_datapath|instancia_Temporizador|LessThan0~1_combout\) # 
-- (!\instance_datapath|instancia_Temporizador|LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(3),
	datab => \instance_datapath|instancia_Temporizador|LessThan0~1_combout\,
	datac => \instance_datapath|instancia_Temporizador|LessThan0~6_combout\,
	combout => \instance_datapath|instancia_Temporizador|LessThan0~7_combout\);

-- Location: LCCOMB_X29_Y35_N2
\instance_datapath|instancia_Temporizador|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|LessThan1~1_combout\ = (!\instance_datapath|instancia_Temporizador|counter\(26) & (!\instance_datapath|instancia_Temporizador|counter\(24) & (!\instance_datapath|instancia_Temporizador|counter\(25) & 
-- !\instance_datapath|instancia_Temporizador|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(26),
	datab => \instance_datapath|instancia_Temporizador|counter\(24),
	datac => \instance_datapath|instancia_Temporizador|counter\(25),
	datad => \instance_datapath|instancia_Temporizador|counter\(23),
	combout => \instance_datapath|instancia_Temporizador|LessThan1~1_combout\);

-- Location: LCCOMB_X30_Y33_N12
\instance_datapath|instancia_Temporizador|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~44_combout\ = (\instance_datapath|instancia_Temporizador|counter\(22) & (\instance_datapath|instancia_Temporizador|Add0~43\ $ (GND))) # (!\instance_datapath|instancia_Temporizador|counter\(22) & 
-- (!\instance_datapath|instancia_Temporizador|Add0~43\ & VCC))
-- \instance_datapath|instancia_Temporizador|Add0~45\ = CARRY((\instance_datapath|instancia_Temporizador|counter\(22) & !\instance_datapath|instancia_Temporizador|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(22),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~43\,
	combout => \instance_datapath|instancia_Temporizador|Add0~44_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~45\);

-- Location: LCCOMB_X29_Y35_N28
\instance_datapath|instancia_Temporizador|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector13~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter[23]~2_combout\ & \instance_datapath|instancia_Temporizador|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|Add0~44_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector13~0_combout\);

-- Location: LCFF_X29_Y35_N29
\instance_datapath|instancia_Temporizador|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector13~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(22));

-- Location: LCCOMB_X29_Y35_N14
\instance_datapath|instancia_Temporizador|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|LessThan1~2_combout\ = (!\instance_datapath|instancia_Temporizador|counter\(22) & (!\instance_datapath|instancia_Temporizador|counter\(20) & !\instance_datapath|instancia_Temporizador|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(22),
	datac => \instance_datapath|instancia_Temporizador|counter\(20),
	datad => \instance_datapath|instancia_Temporizador|counter\(21),
	combout => \instance_datapath|instancia_Temporizador|LessThan1~2_combout\);

-- Location: LCCOMB_X30_Y33_N26
\instance_datapath|instancia_Temporizador|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~58_combout\ = (\instance_datapath|instancia_Temporizador|counter\(29) & (!\instance_datapath|instancia_Temporizador|Add0~57\)) # (!\instance_datapath|instancia_Temporizador|counter\(29) & 
-- ((\instance_datapath|instancia_Temporizador|Add0~57\) # (GND)))
-- \instance_datapath|instancia_Temporizador|Add0~59\ = CARRY((!\instance_datapath|instancia_Temporizador|Add0~57\) # (!\instance_datapath|instancia_Temporizador|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(29),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~57\,
	combout => \instance_datapath|instancia_Temporizador|Add0~58_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~59\);

-- Location: LCCOMB_X29_Y35_N30
\instance_datapath|instancia_Temporizador|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector6~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter[23]~2_combout\ & \instance_datapath|instancia_Temporizador|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|Add0~58_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector6~0_combout\);

-- Location: LCFF_X29_Y35_N31
\instance_datapath|instancia_Temporizador|counter[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector6~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(29));

-- Location: LCCOMB_X30_Y33_N24
\instance_datapath|instancia_Temporizador|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~56_combout\ = (\instance_datapath|instancia_Temporizador|counter\(28) & (\instance_datapath|instancia_Temporizador|Add0~55\ $ (GND))) # (!\instance_datapath|instancia_Temporizador|counter\(28) & 
-- (!\instance_datapath|instancia_Temporizador|Add0~55\ & VCC))
-- \instance_datapath|instancia_Temporizador|Add0~57\ = CARRY((\instance_datapath|instancia_Temporizador|counter\(28) & !\instance_datapath|instancia_Temporizador|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(28),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~55\,
	combout => \instance_datapath|instancia_Temporizador|Add0~56_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~57\);

-- Location: LCCOMB_X29_Y35_N4
\instance_datapath|instancia_Temporizador|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector7~0_combout\ = (\instance_datapath|instancia_Temporizador|Add0~56_combout\ & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|Add0~56_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector7~0_combout\);

-- Location: LCFF_X29_Y35_N5
\instance_datapath|instancia_Temporizador|counter[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector7~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(28));

-- Location: LCCOMB_X29_Y35_N0
\instance_datapath|instancia_Temporizador|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|LessThan1~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter\(30) & (!\instance_datapath|instancia_Temporizador|counter\(29) & (!\instance_datapath|instancia_Temporizador|counter\(28) & 
-- !\instance_datapath|instancia_Temporizador|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(30),
	datab => \instance_datapath|instancia_Temporizador|counter\(29),
	datac => \instance_datapath|instancia_Temporizador|counter\(28),
	datad => \instance_datapath|instancia_Temporizador|counter\(27),
	combout => \instance_datapath|instancia_Temporizador|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y35_N16
\instance_datapath|instancia_Temporizador|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|LessThan1~3_combout\ = (\instance_datapath|instancia_Temporizador|LessThan1~1_combout\ & (\instance_datapath|instancia_Temporizador|LessThan1~2_combout\ & 
-- \instance_datapath|instancia_Temporizador|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|LessThan1~1_combout\,
	datac => \instance_datapath|instancia_Temporizador|LessThan1~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|LessThan1~0_combout\,
	combout => \instance_datapath|instancia_Temporizador|LessThan1~3_combout\);

-- Location: LCCOMB_X28_Y34_N12
\instance_datapath|instancia_Temporizador|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|LessThan1~5_combout\ = (\instance_datapath|instancia_Temporizador|counter\(3)) # ((\instance_datapath|instancia_Temporizador|counter\(2)) # (!\instance_datapath|instancia_Temporizador|LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(3),
	datac => \instance_datapath|instancia_Temporizador|LessThan0~6_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter\(2),
	combout => \instance_datapath|instancia_Temporizador|LessThan1~5_combout\);

-- Location: LCCOMB_X28_Y34_N22
\instance_datapath|instancia_Temporizador|Selector68~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector68~0_combout\ = ((\instance_datapath|instancia_Temporizador|state\(1) & ((\instance_datapath|instancia_Temporizador|LessThan1~5_combout\))) # (!\instance_datapath|instancia_Temporizador|state\(1) & 
-- (\instance_datapath|instancia_Temporizador|LessThan0~7_combout\))) # (!\instance_datapath|instancia_Temporizador|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|state\(1),
	datab => \instance_datapath|instancia_Temporizador|LessThan0~7_combout\,
	datac => \instance_datapath|instancia_Temporizador|LessThan1~3_combout\,
	datad => \instance_datapath|instancia_Temporizador|LessThan1~5_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector68~0_combout\);

-- Location: LCCOMB_X28_Y34_N28
\instance_datapath|instancia_Temporizador|Selector68~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector68~1_combout\ = (\instance_datapath|instancia_Temporizador|state\(2) & (\instance_datapath|instancia_Temporizador|state\(0))) # (!\instance_datapath|instancia_Temporizador|state\(2) & 
-- (!\instance_datapath|instancia_Temporizador|state\(0) & \instance_datapath|instancia_Temporizador|Selector68~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|state\(2),
	datab => \instance_datapath|instancia_Temporizador|state\(0),
	datad => \instance_datapath|instancia_Temporizador|Selector68~0_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector68~1_combout\);

-- Location: LCCOMB_X28_Y34_N16
\instance_datapath|instancia_Temporizador|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|LessThan1~4_combout\ = (\instance_datapath|instancia_Temporizador|LessThan0~6_combout\ & (!\instance_datapath|instancia_Temporizador|counter\(2) & (\instance_datapath|instancia_Temporizador|LessThan1~3_combout\ & 
-- !\instance_datapath|instancia_Temporizador|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|LessThan0~6_combout\,
	datab => \instance_datapath|instancia_Temporizador|counter\(2),
	datac => \instance_datapath|instancia_Temporizador|LessThan1~3_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter\(3),
	combout => \instance_datapath|instancia_Temporizador|LessThan1~4_combout\);

-- Location: LCCOMB_X28_Y34_N6
\instance_datapath|instancia_Temporizador|Selector68~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector68~2_combout\ = (\instance_datapath|instancia_Temporizador|counter\(31)) # ((\instance_datapath|instancia_Temporizador|LessThan1~4_combout\ & 
-- !\instance_datapath|instancia_Temporizador|Selector68~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(31),
	datac => \instance_datapath|instancia_Temporizador|LessThan1~4_combout\,
	datad => \instance_datapath|instancia_Temporizador|Selector68~1_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector68~2_combout\);

-- Location: LCCOMB_X28_Y34_N30
\instance_datapath|instancia_Temporizador|Selector68~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector68~3_combout\ = (\instance_datapath|instancia_Temporizador|Selector68~1_combout\ & ((\instance_datapath|instancia_Temporizador|state\(0) & (\instance_datapath|instancia_Temporizador|Selector36~0_combout\)) 
-- # (!\instance_datapath|instancia_Temporizador|state\(0) & ((!\instance_datapath|instancia_Temporizador|Selector68~2_combout\))))) # (!\instance_datapath|instancia_Temporizador|Selector68~1_combout\ & 
-- ((\instance_datapath|instancia_Temporizador|Selector68~2_combout\ & ((\instance_datapath|instancia_Temporizador|state\(0)))) # (!\instance_datapath|instancia_Temporizador|Selector68~2_combout\ & 
-- (\instance_datapath|instancia_Temporizador|Selector36~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|Selector36~0_combout\,
	datab => \instance_datapath|instancia_Temporizador|Selector68~1_combout\,
	datac => \instance_datapath|instancia_Temporizador|state\(0),
	datad => \instance_datapath|instancia_Temporizador|Selector68~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector68~3_combout\);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\modo_lavgm[1]~I\ : cycloneii_io
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
	padio => ww_modo_lavgm(1),
	combout => \modo_lavgm~combout\(1));

-- Location: LCFF_X28_Y35_N15
\instance_datapath|instancia_Reg_Modo|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \modo_lavgm~combout\(1),
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_Modo|Q\(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\modo_lavgm[2]~I\ : cycloneii_io
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
	padio => ww_modo_lavgm(2),
	combout => \modo_lavgm~combout\(2));

-- Location: LCFF_X28_Y35_N17
\instance_datapath|instancia_Reg_Modo|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \modo_lavgm~combout\(2),
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_Modo|Q\(2));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\modo_lavgm[3]~I\ : cycloneii_io
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
	padio => ww_modo_lavgm(3),
	combout => \modo_lavgm~combout\(3));

-- Location: LCFF_X28_Y35_N31
\instance_datapath|instancia_Reg_Modo|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \modo_lavgm~combout\(3),
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_Modo|Q\(3));

-- Location: LCCOMB_X28_Y35_N16
\instancia_controladora|modo_valido~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|modo_valido~0_combout\ = (\instance_datapath|instancia_Reg_Modo|Q\(0) & (!\instance_datapath|instancia_Reg_Modo|Q\(1) & (!\instance_datapath|instancia_Reg_Modo|Q\(2) & !\instance_datapath|instancia_Reg_Modo|Q\(3)))) # 
-- (!\instance_datapath|instancia_Reg_Modo|Q\(0) & ((\instance_datapath|instancia_Reg_Modo|Q\(1) & (!\instance_datapath|instancia_Reg_Modo|Q\(2) & !\instance_datapath|instancia_Reg_Modo|Q\(3))) # (!\instance_datapath|instancia_Reg_Modo|Q\(1) & 
-- (\instance_datapath|instancia_Reg_Modo|Q\(2) $ (\instance_datapath|instancia_Reg_Modo|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_Modo|Q\(0),
	datab => \instance_datapath|instancia_Reg_Modo|Q\(1),
	datac => \instance_datapath|instancia_Reg_Modo|Q\(2),
	datad => \instance_datapath|instancia_Reg_Modo|Q\(3),
	combout => \instancia_controladora|modo_valido~0_combout\);

-- Location: LCCOMB_X28_Y35_N2
\instancia_controladora|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Selector2~3_combout\ = (\instancia_controladora|Selector2~2_combout\) # ((\instancia_controladora|estado_atual.Load~regout\ & (\instancia_controladora|process_1~0_combout\ & \instancia_controladora|modo_valido~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_controladora|estado_atual.Load~regout\,
	datab => \instancia_controladora|process_1~0_combout\,
	datac => \instancia_controladora|modo_valido~0_combout\,
	datad => \instancia_controladora|Selector2~2_combout\,
	combout => \instancia_controladora|Selector2~3_combout\);

-- Location: LCFF_X28_Y34_N31
\instance_datapath|instancia_Temporizador|state[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector68~3_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instancia_controladora|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|state\(0));

-- Location: LCCOMB_X28_Y34_N8
\instance_datapath|instancia_Temporizador|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|LessThan0~8_combout\ = (\instance_datapath|instancia_Temporizador|counter\(31)) # ((\instance_datapath|instancia_Temporizador|LessThan1~3_combout\ & 
-- !\instance_datapath|instancia_Temporizador|LessThan0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(31),
	datac => \instance_datapath|instancia_Temporizador|LessThan1~3_combout\,
	datad => \instance_datapath|instancia_Temporizador|LessThan0~7_combout\,
	combout => \instance_datapath|instancia_Temporizador|LessThan0~8_combout\);

-- Location: LCCOMB_X27_Y34_N18
\instance_datapath|instancia_Temporizador|state[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|state[1]~0_combout\ = (\instancia_controladora|Selector2~3_combout\ & (((!\instance_datapath|instancia_Temporizador|counter\(31) & !\instance_datapath|instancia_Temporizador|LessThan1~4_combout\)) # 
-- (!\instance_datapath|instancia_Temporizador|Selector35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter\(31),
	datab => \instance_datapath|instancia_Temporizador|Selector35~0_combout\,
	datac => \instance_datapath|instancia_Temporizador|LessThan1~4_combout\,
	datad => \instancia_controladora|Selector2~3_combout\,
	combout => \instance_datapath|instancia_Temporizador|state[1]~0_combout\);

-- Location: LCCOMB_X27_Y34_N0
\instance_datapath|instancia_Temporizador|state[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|state[1]~1_combout\ = (\instance_datapath|instancia_Temporizador|state[1]~0_combout\ & ((\instance_datapath|instancia_Temporizador|state\(2)) # ((\instance_datapath|instancia_Temporizador|Selector35~0_combout\) # 
-- (!\instance_datapath|instancia_Temporizador|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|state\(2),
	datab => \instance_datapath|instancia_Temporizador|Selector35~0_combout\,
	datac => \instance_datapath|instancia_Temporizador|LessThan0~8_combout\,
	datad => \instance_datapath|instancia_Temporizador|state[1]~0_combout\,
	combout => \instance_datapath|instancia_Temporizador|state[1]~1_combout\);

-- Location: LCCOMB_X27_Y34_N30
\instance_datapath|instancia_Temporizador|state[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|state[1]~4_combout\ = (\instance_datapath|instancia_Temporizador|state[1]~1_combout\ & (!\instance_datapath|instancia_Temporizador|state\(2) & (\instance_datapath|instancia_Temporizador|state\(0) $ 
-- (\instance_datapath|instancia_Temporizador|state\(1))))) # (!\instance_datapath|instancia_Temporizador|state[1]~1_combout\ & (((\instance_datapath|instancia_Temporizador|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|state\(2),
	datab => \instance_datapath|instancia_Temporizador|state\(0),
	datac => \instance_datapath|instancia_Temporizador|state\(1),
	datad => \instance_datapath|instancia_Temporizador|state[1]~1_combout\,
	combout => \instance_datapath|instancia_Temporizador|state[1]~4_combout\);

-- Location: LCFF_X27_Y34_N31
\instance_datapath|instancia_Temporizador|state[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|state[1]~4_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|state\(1));

-- Location: LCCOMB_X27_Y34_N28
\instance_datapath|instancia_Temporizador|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector35~0_combout\ = \instance_datapath|instancia_Temporizador|state\(2) $ (((\instance_datapath|instancia_Temporizador|state\(1)) # (\instance_datapath|instancia_Temporizador|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|state\(2),
	datab => \instance_datapath|instancia_Temporizador|state\(1),
	datad => \instance_datapath|instancia_Temporizador|state\(0),
	combout => \instance_datapath|instancia_Temporizador|Selector35~0_combout\);

-- Location: LCCOMB_X30_Y34_N0
\instance_datapath|instancia_Temporizador|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~0_combout\ = \instance_datapath|instancia_Temporizador|counter\(0) $ (GND)
-- \instance_datapath|instancia_Temporizador|Add0~1\ = CARRY(!\instance_datapath|instancia_Temporizador|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(0),
	datad => VCC,
	combout => \instance_datapath|instancia_Temporizador|Add0~0_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~1\);

-- Location: LCCOMB_X29_Y34_N4
\instance_datapath|instancia_Temporizador|Selector35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector35~1_combout\ = (\instance_datapath|instancia_Temporizador|state\(2) & ((\instance_datapath|instancia_Temporizador|Selector35~0_combout\ & (\instance_datapath|instancia_Temporizador|Add0~0_combout\)) # 
-- (!\instance_datapath|instancia_Temporizador|Selector35~0_combout\ & ((!\instance_datapath|instancia_Temporizador|counter\(0)))))) # (!\instance_datapath|instancia_Temporizador|state\(2) & (\instance_datapath|instancia_Temporizador|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|state\(2),
	datab => \instance_datapath|instancia_Temporizador|Add0~0_combout\,
	datac => \instance_datapath|instancia_Temporizador|counter\(0),
	datad => \instance_datapath|instancia_Temporizador|Selector35~0_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector35~1_combout\);

-- Location: LCCOMB_X28_Y34_N14
\instance_datapath|instancia_Temporizador|Selector35~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector35~2_combout\ = (\instance_datapath|instancia_Temporizador|Selector35~1_combout\) # ((!\instance_datapath|instancia_Temporizador|LessThan1~4_combout\ & 
-- (\instance_datapath|instancia_Temporizador|Selector35~0_combout\ & !\instance_datapath|instancia_Temporizador|counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|LessThan1~4_combout\,
	datab => \instance_datapath|instancia_Temporizador|Selector35~0_combout\,
	datac => \instance_datapath|instancia_Temporizador|counter\(31),
	datad => \instance_datapath|instancia_Temporizador|Selector35~1_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector35~2_combout\);

-- Location: LCCOMB_X29_Y34_N16
\instance_datapath|instancia_Temporizador|Selector35~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector35~3_combout\ = (!\instance_datapath|instancia_Temporizador|Selector35~2_combout\ & ((\instance_datapath|instancia_Temporizador|state\(2)) # 
-- ((\instance_datapath|instancia_Temporizador|Selector35~0_combout\) # (\instance_datapath|instancia_Temporizador|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|state\(2),
	datab => \instance_datapath|instancia_Temporizador|Selector35~0_combout\,
	datac => \instance_datapath|instancia_Temporizador|LessThan0~8_combout\,
	datad => \instance_datapath|instancia_Temporizador|Selector35~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector35~3_combout\);

-- Location: LCFF_X29_Y34_N17
\instance_datapath|instancia_Temporizador|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector35~3_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instancia_controladora|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(0));

-- Location: LCCOMB_X30_Y34_N12
\instance_datapath|instancia_Temporizador|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~12_combout\ = (\instance_datapath|instancia_Temporizador|counter\(6) & (\instance_datapath|instancia_Temporizador|Add0~11\ $ (GND))) # (!\instance_datapath|instancia_Temporizador|counter\(6) & 
-- (!\instance_datapath|instancia_Temporizador|Add0~11\ & VCC))
-- \instance_datapath|instancia_Temporizador|Add0~13\ = CARRY((\instance_datapath|instancia_Temporizador|counter\(6) & !\instance_datapath|instancia_Temporizador|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(6),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~11\,
	combout => \instance_datapath|instancia_Temporizador|Add0~12_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~13\);

-- Location: LCCOMB_X29_Y34_N24
\instance_datapath|instancia_Temporizador|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector29~0_combout\ = (\instance_datapath|instancia_Temporizador|Add0~12_combout\ & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|Add0~12_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector29~0_combout\);

-- Location: LCFF_X29_Y34_N25
\instance_datapath|instancia_Temporizador|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector29~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(6));

-- Location: LCCOMB_X30_Y34_N26
\instance_datapath|instancia_Temporizador|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~26_combout\ = (\instance_datapath|instancia_Temporizador|counter\(13) & (!\instance_datapath|instancia_Temporizador|Add0~25\)) # (!\instance_datapath|instancia_Temporizador|counter\(13) & 
-- ((\instance_datapath|instancia_Temporizador|Add0~25\) # (GND)))
-- \instance_datapath|instancia_Temporizador|Add0~27\ = CARRY((!\instance_datapath|instancia_Temporizador|Add0~25\) # (!\instance_datapath|instancia_Temporizador|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(13),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~25\,
	combout => \instance_datapath|instancia_Temporizador|Add0~26_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~27\);

-- Location: LCCOMB_X27_Y35_N24
\instance_datapath|instancia_Temporizador|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector22~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter[23]~2_combout\ & \instance_datapath|instancia_Temporizador|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|Add0~26_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector22~0_combout\);

-- Location: LCFF_X27_Y35_N25
\instance_datapath|instancia_Temporizador|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector22~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(13));

-- Location: LCCOMB_X30_Y34_N28
\instance_datapath|instancia_Temporizador|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~28_combout\ = (\instance_datapath|instancia_Temporizador|counter\(14) & (\instance_datapath|instancia_Temporizador|Add0~27\ $ (GND))) # (!\instance_datapath|instancia_Temporizador|counter\(14) & 
-- (!\instance_datapath|instancia_Temporizador|Add0~27\ & VCC))
-- \instance_datapath|instancia_Temporizador|Add0~29\ = CARRY((\instance_datapath|instancia_Temporizador|counter\(14) & !\instance_datapath|instancia_Temporizador|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(14),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~27\,
	combout => \instance_datapath|instancia_Temporizador|Add0~28_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~29\);

-- Location: LCCOMB_X27_Y35_N26
\instance_datapath|instancia_Temporizador|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector21~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter[23]~2_combout\ & \instance_datapath|instancia_Temporizador|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|Add0~28_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector21~0_combout\);

-- Location: LCFF_X27_Y35_N27
\instance_datapath|instancia_Temporizador|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector21~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(14));

-- Location: LCCOMB_X30_Y34_N30
\instance_datapath|instancia_Temporizador|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~30_combout\ = (\instance_datapath|instancia_Temporizador|counter\(15) & (!\instance_datapath|instancia_Temporizador|Add0~29\)) # (!\instance_datapath|instancia_Temporizador|counter\(15) & 
-- ((\instance_datapath|instancia_Temporizador|Add0~29\) # (GND)))
-- \instance_datapath|instancia_Temporizador|Add0~31\ = CARRY((!\instance_datapath|instancia_Temporizador|Add0~29\) # (!\instance_datapath|instancia_Temporizador|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(15),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~29\,
	combout => \instance_datapath|instancia_Temporizador|Add0~30_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~31\);

-- Location: LCCOMB_X27_Y35_N16
\instance_datapath|instancia_Temporizador|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector20~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter[23]~2_combout\ & \instance_datapath|instancia_Temporizador|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|Add0~30_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector20~0_combout\);

-- Location: LCFF_X27_Y35_N17
\instance_datapath|instancia_Temporizador|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector20~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(15));

-- Location: LCCOMB_X30_Y33_N0
\instance_datapath|instancia_Temporizador|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~32_combout\ = (\instance_datapath|instancia_Temporizador|counter\(16) & (\instance_datapath|instancia_Temporizador|Add0~31\ $ (GND))) # (!\instance_datapath|instancia_Temporizador|counter\(16) & 
-- (!\instance_datapath|instancia_Temporizador|Add0~31\ & VCC))
-- \instance_datapath|instancia_Temporizador|Add0~33\ = CARRY((\instance_datapath|instancia_Temporizador|counter\(16) & !\instance_datapath|instancia_Temporizador|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(16),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~31\,
	combout => \instance_datapath|instancia_Temporizador|Add0~32_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~33\);

-- Location: LCCOMB_X27_Y35_N4
\instance_datapath|instancia_Temporizador|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector19~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter[23]~2_combout\ & \instance_datapath|instancia_Temporizador|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|Add0~32_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector19~0_combout\);

-- Location: LCFF_X27_Y35_N5
\instance_datapath|instancia_Temporizador|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector19~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(16));

-- Location: LCCOMB_X30_Y33_N2
\instance_datapath|instancia_Temporizador|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~34_combout\ = (\instance_datapath|instancia_Temporizador|counter\(17) & (!\instance_datapath|instancia_Temporizador|Add0~33\)) # (!\instance_datapath|instancia_Temporizador|counter\(17) & 
-- ((\instance_datapath|instancia_Temporizador|Add0~33\) # (GND)))
-- \instance_datapath|instancia_Temporizador|Add0~35\ = CARRY((!\instance_datapath|instancia_Temporizador|Add0~33\) # (!\instance_datapath|instancia_Temporizador|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(17),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~33\,
	combout => \instance_datapath|instancia_Temporizador|Add0~34_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~35\);

-- Location: LCCOMB_X27_Y35_N6
\instance_datapath|instancia_Temporizador|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector18~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter[23]~2_combout\ & \instance_datapath|instancia_Temporizador|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|Add0~34_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector18~0_combout\);

-- Location: LCFF_X27_Y35_N7
\instance_datapath|instancia_Temporizador|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector18~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(17));

-- Location: LCCOMB_X30_Y33_N4
\instance_datapath|instancia_Temporizador|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~36_combout\ = (\instance_datapath|instancia_Temporizador|counter\(18) & (\instance_datapath|instancia_Temporizador|Add0~35\ $ (GND))) # (!\instance_datapath|instancia_Temporizador|counter\(18) & 
-- (!\instance_datapath|instancia_Temporizador|Add0~35\ & VCC))
-- \instance_datapath|instancia_Temporizador|Add0~37\ = CARRY((\instance_datapath|instancia_Temporizador|counter\(18) & !\instance_datapath|instancia_Temporizador|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(18),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~35\,
	combout => \instance_datapath|instancia_Temporizador|Add0~36_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~37\);

-- Location: LCCOMB_X27_Y35_N20
\instance_datapath|instancia_Temporizador|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector17~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter[23]~2_combout\ & \instance_datapath|instancia_Temporizador|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|Add0~36_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector17~0_combout\);

-- Location: LCFF_X27_Y35_N21
\instance_datapath|instancia_Temporizador|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector17~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(18));

-- Location: LCCOMB_X30_Y33_N6
\instance_datapath|instancia_Temporizador|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~38_combout\ = (\instance_datapath|instancia_Temporizador|counter\(19) & (!\instance_datapath|instancia_Temporizador|Add0~37\)) # (!\instance_datapath|instancia_Temporizador|counter\(19) & 
-- ((\instance_datapath|instancia_Temporizador|Add0~37\) # (GND)))
-- \instance_datapath|instancia_Temporizador|Add0~39\ = CARRY((!\instance_datapath|instancia_Temporizador|Add0~37\) # (!\instance_datapath|instancia_Temporizador|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(19),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~37\,
	combout => \instance_datapath|instancia_Temporizador|Add0~38_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~39\);

-- Location: LCCOMB_X27_Y35_N22
\instance_datapath|instancia_Temporizador|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector16~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter[23]~2_combout\ & \instance_datapath|instancia_Temporizador|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|Add0~38_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector16~0_combout\);

-- Location: LCFF_X27_Y35_N23
\instance_datapath|instancia_Temporizador|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector16~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(19));

-- Location: LCCOMB_X30_Y33_N8
\instance_datapath|instancia_Temporizador|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~40_combout\ = (\instance_datapath|instancia_Temporizador|counter\(20) & (\instance_datapath|instancia_Temporizador|Add0~39\ $ (GND))) # (!\instance_datapath|instancia_Temporizador|counter\(20) & 
-- (!\instance_datapath|instancia_Temporizador|Add0~39\ & VCC))
-- \instance_datapath|instancia_Temporizador|Add0~41\ = CARRY((\instance_datapath|instancia_Temporizador|counter\(20) & !\instance_datapath|instancia_Temporizador|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(20),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~39\,
	combout => \instance_datapath|instancia_Temporizador|Add0~40_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~41\);

-- Location: LCCOMB_X29_Y35_N8
\instance_datapath|instancia_Temporizador|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector15~0_combout\ = (\instance_datapath|instancia_Temporizador|Add0~40_combout\ & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|Add0~40_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector15~0_combout\);

-- Location: LCFF_X29_Y35_N9
\instance_datapath|instancia_Temporizador|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector15~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(20));

-- Location: LCCOMB_X30_Y33_N10
\instance_datapath|instancia_Temporizador|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~42_combout\ = (\instance_datapath|instancia_Temporizador|counter\(21) & (!\instance_datapath|instancia_Temporizador|Add0~41\)) # (!\instance_datapath|instancia_Temporizador|counter\(21) & 
-- ((\instance_datapath|instancia_Temporizador|Add0~41\) # (GND)))
-- \instance_datapath|instancia_Temporizador|Add0~43\ = CARRY((!\instance_datapath|instancia_Temporizador|Add0~41\) # (!\instance_datapath|instancia_Temporizador|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(21),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~41\,
	combout => \instance_datapath|instancia_Temporizador|Add0~42_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~43\);

-- Location: LCCOMB_X29_Y35_N18
\instance_datapath|instancia_Temporizador|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector14~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter[23]~2_combout\ & \instance_datapath|instancia_Temporizador|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|Add0~42_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector14~0_combout\);

-- Location: LCFF_X29_Y35_N19
\instance_datapath|instancia_Temporizador|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector14~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(21));

-- Location: LCCOMB_X30_Y33_N14
\instance_datapath|instancia_Temporizador|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~46_combout\ = (\instance_datapath|instancia_Temporizador|counter\(23) & (!\instance_datapath|instancia_Temporizador|Add0~45\)) # (!\instance_datapath|instancia_Temporizador|counter\(23) & 
-- ((\instance_datapath|instancia_Temporizador|Add0~45\) # (GND)))
-- \instance_datapath|instancia_Temporizador|Add0~47\ = CARRY((!\instance_datapath|instancia_Temporizador|Add0~45\) # (!\instance_datapath|instancia_Temporizador|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(23),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~45\,
	combout => \instance_datapath|instancia_Temporizador|Add0~46_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~47\);

-- Location: LCCOMB_X29_Y35_N12
\instance_datapath|instancia_Temporizador|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector12~0_combout\ = (\instance_datapath|instancia_Temporizador|Add0~46_combout\ & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|Add0~46_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector12~0_combout\);

-- Location: LCFF_X29_Y35_N13
\instance_datapath|instancia_Temporizador|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector12~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(23));

-- Location: LCCOMB_X30_Y33_N16
\instance_datapath|instancia_Temporizador|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~48_combout\ = (\instance_datapath|instancia_Temporizador|counter\(24) & (\instance_datapath|instancia_Temporizador|Add0~47\ $ (GND))) # (!\instance_datapath|instancia_Temporizador|counter\(24) & 
-- (!\instance_datapath|instancia_Temporizador|Add0~47\ & VCC))
-- \instance_datapath|instancia_Temporizador|Add0~49\ = CARRY((\instance_datapath|instancia_Temporizador|counter\(24) & !\instance_datapath|instancia_Temporizador|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(24),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~47\,
	combout => \instance_datapath|instancia_Temporizador|Add0~48_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~49\);

-- Location: LCCOMB_X29_Y35_N22
\instance_datapath|instancia_Temporizador|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector11~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter[23]~2_combout\ & \instance_datapath|instancia_Temporizador|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|Add0~48_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector11~0_combout\);

-- Location: LCFF_X29_Y35_N23
\instance_datapath|instancia_Temporizador|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector11~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(24));

-- Location: LCCOMB_X30_Y33_N18
\instance_datapath|instancia_Temporizador|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~50_combout\ = (\instance_datapath|instancia_Temporizador|counter\(25) & (!\instance_datapath|instancia_Temporizador|Add0~49\)) # (!\instance_datapath|instancia_Temporizador|counter\(25) & 
-- ((\instance_datapath|instancia_Temporizador|Add0~49\) # (GND)))
-- \instance_datapath|instancia_Temporizador|Add0~51\ = CARRY((!\instance_datapath|instancia_Temporizador|Add0~49\) # (!\instance_datapath|instancia_Temporizador|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(25),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~49\,
	combout => \instance_datapath|instancia_Temporizador|Add0~50_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~51\);

-- Location: LCCOMB_X29_Y35_N24
\instance_datapath|instancia_Temporizador|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector10~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter[23]~2_combout\ & \instance_datapath|instancia_Temporizador|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|Add0~50_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector10~0_combout\);

-- Location: LCFF_X29_Y35_N25
\instance_datapath|instancia_Temporizador|counter[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector10~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(25));

-- Location: LCCOMB_X30_Y33_N20
\instance_datapath|instancia_Temporizador|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~52_combout\ = (\instance_datapath|instancia_Temporizador|counter\(26) & (\instance_datapath|instancia_Temporizador|Add0~51\ $ (GND))) # (!\instance_datapath|instancia_Temporizador|counter\(26) & 
-- (!\instance_datapath|instancia_Temporizador|Add0~51\ & VCC))
-- \instance_datapath|instancia_Temporizador|Add0~53\ = CARRY((\instance_datapath|instancia_Temporizador|counter\(26) & !\instance_datapath|instancia_Temporizador|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(26),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~51\,
	combout => \instance_datapath|instancia_Temporizador|Add0~52_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~53\);

-- Location: LCCOMB_X29_Y35_N10
\instance_datapath|instancia_Temporizador|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector9~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter[23]~2_combout\ & \instance_datapath|instancia_Temporizador|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|Add0~52_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector9~0_combout\);

-- Location: LCFF_X29_Y35_N11
\instance_datapath|instancia_Temporizador|counter[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector9~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(26));

-- Location: LCCOMB_X30_Y33_N22
\instance_datapath|instancia_Temporizador|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~54_combout\ = (\instance_datapath|instancia_Temporizador|counter\(27) & (!\instance_datapath|instancia_Temporizador|Add0~53\)) # (!\instance_datapath|instancia_Temporizador|counter\(27) & 
-- ((\instance_datapath|instancia_Temporizador|Add0~53\) # (GND)))
-- \instance_datapath|instancia_Temporizador|Add0~55\ = CARRY((!\instance_datapath|instancia_Temporizador|Add0~53\) # (!\instance_datapath|instancia_Temporizador|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(27),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~53\,
	combout => \instance_datapath|instancia_Temporizador|Add0~54_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~55\);

-- Location: LCCOMB_X29_Y35_N6
\instance_datapath|instancia_Temporizador|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector8~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter[23]~2_combout\ & \instance_datapath|instancia_Temporizador|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|Add0~54_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector8~0_combout\);

-- Location: LCFF_X29_Y35_N7
\instance_datapath|instancia_Temporizador|counter[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector8~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(27));

-- Location: LCCOMB_X30_Y33_N28
\instance_datapath|instancia_Temporizador|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~60_combout\ = (\instance_datapath|instancia_Temporizador|counter\(30) & (\instance_datapath|instancia_Temporizador|Add0~59\ $ (GND))) # (!\instance_datapath|instancia_Temporizador|counter\(30) & 
-- (!\instance_datapath|instancia_Temporizador|Add0~59\ & VCC))
-- \instance_datapath|instancia_Temporizador|Add0~61\ = CARRY((\instance_datapath|instancia_Temporizador|counter\(30) & !\instance_datapath|instancia_Temporizador|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|counter\(30),
	datad => VCC,
	cin => \instance_datapath|instancia_Temporizador|Add0~59\,
	combout => \instance_datapath|instancia_Temporizador|Add0~60_combout\,
	cout => \instance_datapath|instancia_Temporizador|Add0~61\);

-- Location: LCCOMB_X29_Y35_N20
\instance_datapath|instancia_Temporizador|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector5~0_combout\ = (\instance_datapath|instancia_Temporizador|Add0~60_combout\ & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|Add0~60_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector5~0_combout\);

-- Location: LCFF_X29_Y35_N21
\instance_datapath|instancia_Temporizador|counter[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector5~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(30));

-- Location: LCCOMB_X30_Y33_N30
\instance_datapath|instancia_Temporizador|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Add0~62_combout\ = \instance_datapath|instancia_Temporizador|Add0~61\ $ (\instance_datapath|instancia_Temporizador|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \instance_datapath|instancia_Temporizador|counter\(31),
	cin => \instance_datapath|instancia_Temporizador|Add0~61\,
	combout => \instance_datapath|instancia_Temporizador|Add0~62_combout\);

-- Location: LCCOMB_X29_Y33_N12
\instance_datapath|instancia_Temporizador|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector4~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter[23]~2_combout\ & \instance_datapath|instancia_Temporizador|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	datad => \instance_datapath|instancia_Temporizador|Add0~62_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector4~0_combout\);

-- Location: LCFF_X29_Y33_N13
\instance_datapath|instancia_Temporizador|counter[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector4~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(31));

-- Location: LCCOMB_X27_Y34_N12
\instance_datapath|instancia_Temporizador|state[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|state[2]~3_combout\ = (\instance_datapath|instancia_Temporizador|state[2]~2_combout\ & ((\instance_datapath|instancia_Temporizador|state\(2) & (!\instance_datapath|instancia_Temporizador|state[1]~0_combout\)) # 
-- (!\instance_datapath|instancia_Temporizador|state\(2) & ((\instance_datapath|instancia_Temporizador|state[1]~1_combout\))))) # (!\instance_datapath|instancia_Temporizador|state[2]~2_combout\ & (((\instance_datapath|instancia_Temporizador|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|state[2]~2_combout\,
	datab => \instance_datapath|instancia_Temporizador|state[1]~0_combout\,
	datac => \instance_datapath|instancia_Temporizador|state\(2),
	datad => \instance_datapath|instancia_Temporizador|state[1]~1_combout\,
	combout => \instance_datapath|instancia_Temporizador|state[2]~3_combout\);

-- Location: LCFF_X27_Y34_N13
\instance_datapath|instancia_Temporizador|state[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|state[2]~3_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|state\(2));

-- Location: LCCOMB_X27_Y34_N16
\instance_datapath|instancia_Temporizador|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector36~0_combout\ = (!\instance_datapath|instancia_Temporizador|state\(1) & \instance_datapath|instancia_Temporizador|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|state\(1),
	datad => \instance_datapath|instancia_Temporizador|state\(2),
	combout => \instance_datapath|instancia_Temporizador|Selector36~0_combout\);

-- Location: LCCOMB_X28_Y34_N4
\instance_datapath|instancia_Temporizador|Selector36~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector36~4_combout\ = (\instance_datapath|instancia_Temporizador|Selector36~3_combout\ & ((\instance_datapath|instancia_Temporizador|counter\(31)) # 
-- ((!\instance_datapath|instancia_Temporizador|LessThan1~4_combout\ & \instance_datapath|instancia_Temporizador|Selector36~0_combout\)))) # (!\instance_datapath|instancia_Temporizador|Selector36~3_combout\ & 
-- (!\instance_datapath|instancia_Temporizador|counter\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|Selector36~3_combout\,
	datab => \instance_datapath|instancia_Temporizador|counter\(31),
	datac => \instance_datapath|instancia_Temporizador|LessThan1~4_combout\,
	datad => \instance_datapath|instancia_Temporizador|Selector36~0_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector36~4_combout\);

-- Location: LCFF_X28_Y34_N5
\instance_datapath|instancia_Temporizador|timeout\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector36~4_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instancia_controladora|Selector2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|timeout~regout\);

-- Location: LCCOMB_X28_Y35_N28
\instancia_controladora|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Selector3~0_combout\ = (\instancia_controladora|estado_atual.Finalizado~regout\ & (!\instance_datapath|instancia_Temporizador|timeout~regout\ & ((\instancia_controladora|estado_atual.Ligar~regout\) # (\Ligar_maquina~combout\)))) # 
-- (!\instancia_controladora|estado_atual.Finalizado~regout\ & (((\instancia_controladora|estado_atual.Ligar~regout\) # (\Ligar_maquina~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_controladora|estado_atual.Finalizado~regout\,
	datab => \instance_datapath|instancia_Temporizador|timeout~regout\,
	datac => \instancia_controladora|estado_atual.Ligar~regout\,
	datad => \Ligar_maquina~combout\,
	combout => \instancia_controladora|Selector3~0_combout\);

-- Location: LCFF_X28_Y35_N29
\instancia_controladora|estado_atual.Ligar\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instancia_controladora|Selector3~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_controladora|estado_atual.Ligar~regout\);

-- Location: LCCOMB_X28_Y35_N6
\instancia_controladora|Reset_Cont~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Reset_Cont~0_combout\ = (!\Ligar_maquina~combout\ & !\instancia_controladora|estado_atual.Ligar~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ligar_maquina~combout\,
	datad => \instancia_controladora|estado_atual.Ligar~regout\,
	combout => \instancia_controladora|Reset_Cont~0_combout\);

-- Location: LCFF_X28_Y35_N23
\instance_datapath|instancia_Reg_Vol_Agua|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	sdata => \vol_agua~combout\(1),
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	sload => VCC,
	ena => \instancia_controladora|Load_Vol_Agua~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Reg_Vol_Agua|Q\(1));

-- Location: LCCOMB_X27_Y35_N28
\instance_datapath|instancia_Temporizador|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|comb~1_combout\ = (!\instance_datapath|instancia_Reg_Vol_Agua|Q\(0) & (!\instance_datapath|instancia_Reg_Vol_Agua|Q\(1) & (\instance_datapath|instancia_Reg_Vol_Agua|Q\(3) & 
-- !\instance_datapath|instancia_Reg_Vol_Agua|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Reg_Vol_Agua|Q\(0),
	datab => \instance_datapath|instancia_Reg_Vol_Agua|Q\(1),
	datac => \instance_datapath|instancia_Reg_Vol_Agua|Q\(3),
	datad => \instance_datapath|instancia_Reg_Vol_Agua|Q\(2),
	combout => \instance_datapath|instancia_Temporizador|comb~1_combout\);

-- Location: LCCOMB_X28_Y35_N0
\instance_datapath|instancia_Temporizador|tempo_limite_enchendo[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(1) = (!\instance_datapath|instancia_Temporizador|comb~1_combout\ & ((\instance_datapath|instancia_Temporizador|comb~0_combout\) # 
-- (\instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|comb~0_combout\,
	datab => \instance_datapath|instancia_Temporizador|comb~1_combout\,
	datad => \instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(1),
	combout => \instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(1));

-- Location: LCCOMB_X29_Y34_N20
\instance_datapath|instancia_Temporizador|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|LessThan0~0_combout\ = (\instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(1) & ((\instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(0)) # 
-- ((\instance_datapath|instancia_Temporizador|counter\(0)) # (!\instance_datapath|instancia_Temporizador|counter\(1))))) # (!\instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(1) & (!\instance_datapath|instancia_Temporizador|counter\(1) & 
-- ((\instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(0)) # (\instance_datapath|instancia_Temporizador|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(0),
	datab => \instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(1),
	datac => \instance_datapath|instancia_Temporizador|counter\(0),
	datad => \instance_datapath|instancia_Temporizador|counter\(1),
	combout => \instance_datapath|instancia_Temporizador|LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y34_N10
\instance_datapath|instancia_Temporizador|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|LessThan0~1_combout\ = (\instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(2) & (\instance_datapath|instancia_Temporizador|counter\(2) & 
-- !\instance_datapath|instancia_Temporizador|LessThan0~0_combout\)) # (!\instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(2) & ((\instance_datapath|instancia_Temporizador|counter\(2)) # 
-- (!\instance_datapath|instancia_Temporizador|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|tempo_limite_enchendo\(2),
	datab => \instance_datapath|instancia_Temporizador|counter\(2),
	datac => \instance_datapath|instancia_Temporizador|LessThan0~0_combout\,
	combout => \instance_datapath|instancia_Temporizador|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y34_N0
\instance_datapath|instancia_Temporizador|counter[23]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|counter[23]~0_combout\ = (!\instance_datapath|instancia_Temporizador|state\(2) & (!\instance_datapath|instancia_Temporizador|state\(1) & !\instance_datapath|instancia_Temporizador|state\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|state\(2),
	datac => \instance_datapath|instancia_Temporizador|state\(1),
	datad => \instance_datapath|instancia_Temporizador|state\(0),
	combout => \instance_datapath|instancia_Temporizador|counter[23]~0_combout\);

-- Location: LCCOMB_X28_Y35_N8
\instance_datapath|instancia_Temporizador|counter[23]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|counter[23]~1_combout\ = ((\instance_datapath|instancia_Temporizador|counter[23]~0_combout\ & (\instance_datapath|instancia_Temporizador|LessThan0~1_combout\)) # 
-- (!\instance_datapath|instancia_Temporizador|counter[23]~0_combout\ & ((\instance_datapath|instancia_Temporizador|counter\(2))))) # (!\instance_datapath|instancia_Temporizador|LessThan1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|LessThan1~3_combout\,
	datab => \instance_datapath|instancia_Temporizador|LessThan0~1_combout\,
	datac => \instance_datapath|instancia_Temporizador|counter\(2),
	datad => \instance_datapath|instancia_Temporizador|counter[23]~0_combout\,
	combout => \instance_datapath|instancia_Temporizador|counter[23]~1_combout\);

-- Location: LCCOMB_X28_Y35_N26
\instance_datapath|instancia_Temporizador|counter[23]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|counter[23]~2_combout\ = (!\instance_datapath|instancia_Temporizador|counter\(31) & (((\instance_datapath|instancia_Temporizador|counter[23]~1_combout\) # (\instance_datapath|instancia_Temporizador|counter\(3))) # 
-- (!\instance_datapath|instancia_Temporizador|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|LessThan0~6_combout\,
	datab => \instance_datapath|instancia_Temporizador|counter[23]~1_combout\,
	datac => \instance_datapath|instancia_Temporizador|counter\(31),
	datad => \instance_datapath|instancia_Temporizador|counter\(3),
	combout => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\);

-- Location: LCCOMB_X29_Y34_N28
\instance_datapath|instancia_Temporizador|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector33~0_combout\ = (\instance_datapath|instancia_Temporizador|Add0~4_combout\ & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|Add0~4_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector33~0_combout\);

-- Location: LCFF_X29_Y34_N29
\instance_datapath|instancia_Temporizador|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector33~0_combout\,
	aclr => \instancia_controladora|Reset_Cont~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter\(2));

-- Location: LCCOMB_X31_Y35_N0
\instance_datapath|instancia_Temporizador|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector1~0_combout\ = (\instance_datapath|instancia_Temporizador|counter\(2) & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|counter\(2),
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector1~0_combout\);

-- Location: LCCOMB_X28_Y34_N10
\instance_datapath|instancia_Temporizador|counter_out[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|counter_out[3]~0_combout\ = ((!\instance_datapath|instancia_Temporizador|state\(0) & !\instance_datapath|instancia_Temporizador|state\(1))) # (!\instance_datapath|instancia_Temporizador|state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|state\(0),
	datac => \instance_datapath|instancia_Temporizador|state\(1),
	datad => \instance_datapath|instancia_Temporizador|state\(2),
	combout => \instance_datapath|instancia_Temporizador|counter_out[3]~0_combout\);

-- Location: LCCOMB_X31_Y35_N12
\instance_datapath|instancia_Temporizador|counter_out[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|counter_out[3]~1_combout\ = (!\instancia_controladora|Reset_Cont~0_combout\ & (\instance_datapath|instancia_Temporizador|counter_out[3]~0_combout\ & ((\instancia_controladora|Selector2~2_combout\) # 
-- (\instancia_controladora|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_controladora|Reset_Cont~0_combout\,
	datab => \instancia_controladora|Selector2~2_combout\,
	datac => \instancia_controladora|Selector2~0_combout\,
	datad => \instance_datapath|instancia_Temporizador|counter_out[3]~0_combout\,
	combout => \instance_datapath|instancia_Temporizador|counter_out[3]~1_combout\);

-- Location: LCFF_X31_Y35_N1
\instance_datapath|instancia_Temporizador|counter_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector1~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter_out\(2));

-- Location: LCCOMB_X31_Y35_N10
\instance_datapath|instancia_Temporizador|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector2~0_combout\ = (\instance_datapath|instancia_Temporizador|counter\(1) & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|counter\(1),
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector2~0_combout\);

-- Location: LCFF_X31_Y35_N11
\instance_datapath|instancia_Temporizador|counter_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector2~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter_out\(1));

-- Location: LCCOMB_X31_Y35_N22
\instance_datapath|instancia_Temporizador|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector0~0_combout\ = (\instance_datapath|instancia_Temporizador|counter\(3) & \instance_datapath|instancia_Temporizador|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|counter\(3),
	datad => \instance_datapath|instancia_Temporizador|counter\(31),
	combout => \instance_datapath|instancia_Temporizador|Selector0~0_combout\);

-- Location: LCFF_X31_Y35_N23
\instance_datapath|instancia_Temporizador|counter_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector0~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter_out\(3));

-- Location: LCCOMB_X31_Y35_N4
\instance_datapath|instancia_Temporizador|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Temporizador|Selector3~0_combout\ = (!\instance_datapath|instancia_Temporizador|counter\(0) & !\instance_datapath|instancia_Temporizador|counter[23]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instance_datapath|instancia_Temporizador|counter\(0),
	datad => \instance_datapath|instancia_Temporizador|counter[23]~2_combout\,
	combout => \instance_datapath|instancia_Temporizador|Selector3~0_combout\);

-- Location: LCFF_X31_Y35_N5
\instance_datapath|instancia_Temporizador|counter_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instance_datapath|instancia_Temporizador|Selector3~0_combout\,
	ena => \instance_datapath|instancia_Temporizador|counter_out[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instance_datapath|instancia_Temporizador|counter_out\(0));

-- Location: LCCOMB_X35_Y35_N4
\instance_datapath|instancia_Bcd_7seg|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Bcd_7seg|Mux6~0_combout\ = (\instance_datapath|instancia_Temporizador|counter_out\(2) & (!\instance_datapath|instancia_Temporizador|counter_out\(1) & (\instance_datapath|instancia_Temporizador|counter_out\(3) $ 
-- (!\instance_datapath|instancia_Temporizador|counter_out\(0))))) # (!\instance_datapath|instancia_Temporizador|counter_out\(2) & (\instance_datapath|instancia_Temporizador|counter_out\(0) & (\instance_datapath|instancia_Temporizador|counter_out\(1) $ 
-- (!\instance_datapath|instancia_Temporizador|counter_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter_out\(2),
	datab => \instance_datapath|instancia_Temporizador|counter_out\(1),
	datac => \instance_datapath|instancia_Temporizador|counter_out\(3),
	datad => \instance_datapath|instancia_Temporizador|counter_out\(0),
	combout => \instance_datapath|instancia_Bcd_7seg|Mux6~0_combout\);

-- Location: LCCOMB_X35_Y35_N10
\instance_datapath|instancia_Bcd_7seg|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Bcd_7seg|Mux5~0_combout\ = (\instance_datapath|instancia_Temporizador|counter_out\(1) & ((\instance_datapath|instancia_Temporizador|counter_out\(0) & ((\instance_datapath|instancia_Temporizador|counter_out\(3)))) # 
-- (!\instance_datapath|instancia_Temporizador|counter_out\(0) & (\instance_datapath|instancia_Temporizador|counter_out\(2))))) # (!\instance_datapath|instancia_Temporizador|counter_out\(1) & (\instance_datapath|instancia_Temporizador|counter_out\(2) & 
-- (\instance_datapath|instancia_Temporizador|counter_out\(3) $ (\instance_datapath|instancia_Temporizador|counter_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter_out\(2),
	datab => \instance_datapath|instancia_Temporizador|counter_out\(1),
	datac => \instance_datapath|instancia_Temporizador|counter_out\(3),
	datad => \instance_datapath|instancia_Temporizador|counter_out\(0),
	combout => \instance_datapath|instancia_Bcd_7seg|Mux5~0_combout\);

-- Location: LCCOMB_X35_Y35_N20
\instance_datapath|instancia_Bcd_7seg|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Bcd_7seg|Mux4~0_combout\ = (\instance_datapath|instancia_Temporizador|counter_out\(2) & (\instance_datapath|instancia_Temporizador|counter_out\(3) & ((\instance_datapath|instancia_Temporizador|counter_out\(1)) # 
-- (!\instance_datapath|instancia_Temporizador|counter_out\(0))))) # (!\instance_datapath|instancia_Temporizador|counter_out\(2) & (\instance_datapath|instancia_Temporizador|counter_out\(1) & (!\instance_datapath|instancia_Temporizador|counter_out\(3) & 
-- !\instance_datapath|instancia_Temporizador|counter_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter_out\(2),
	datab => \instance_datapath|instancia_Temporizador|counter_out\(1),
	datac => \instance_datapath|instancia_Temporizador|counter_out\(3),
	datad => \instance_datapath|instancia_Temporizador|counter_out\(0),
	combout => \instance_datapath|instancia_Bcd_7seg|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y35_N18
\instance_datapath|instancia_Bcd_7seg|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Bcd_7seg|Mux3~0_combout\ = (\instance_datapath|instancia_Temporizador|counter_out\(1) & ((\instance_datapath|instancia_Temporizador|counter_out\(2) & ((\instance_datapath|instancia_Temporizador|counter_out\(0)))) # 
-- (!\instance_datapath|instancia_Temporizador|counter_out\(2) & (\instance_datapath|instancia_Temporizador|counter_out\(3) & !\instance_datapath|instancia_Temporizador|counter_out\(0))))) # (!\instance_datapath|instancia_Temporizador|counter_out\(1) & 
-- (!\instance_datapath|instancia_Temporizador|counter_out\(3) & (\instance_datapath|instancia_Temporizador|counter_out\(2) $ (\instance_datapath|instancia_Temporizador|counter_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter_out\(2),
	datab => \instance_datapath|instancia_Temporizador|counter_out\(1),
	datac => \instance_datapath|instancia_Temporizador|counter_out\(3),
	datad => \instance_datapath|instancia_Temporizador|counter_out\(0),
	combout => \instance_datapath|instancia_Bcd_7seg|Mux3~0_combout\);

-- Location: LCCOMB_X35_Y35_N0
\instance_datapath|instancia_Bcd_7seg|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Bcd_7seg|Mux2~0_combout\ = (\instance_datapath|instancia_Temporizador|counter_out\(1) & (((!\instance_datapath|instancia_Temporizador|counter_out\(3) & \instance_datapath|instancia_Temporizador|counter_out\(0))))) # 
-- (!\instance_datapath|instancia_Temporizador|counter_out\(1) & ((\instance_datapath|instancia_Temporizador|counter_out\(2) & (!\instance_datapath|instancia_Temporizador|counter_out\(3))) # (!\instance_datapath|instancia_Temporizador|counter_out\(2) & 
-- ((\instance_datapath|instancia_Temporizador|counter_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter_out\(2),
	datab => \instance_datapath|instancia_Temporizador|counter_out\(1),
	datac => \instance_datapath|instancia_Temporizador|counter_out\(3),
	datad => \instance_datapath|instancia_Temporizador|counter_out\(0),
	combout => \instance_datapath|instancia_Bcd_7seg|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y35_N22
\instance_datapath|instancia_Bcd_7seg|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Bcd_7seg|Mux1~0_combout\ = (\instance_datapath|instancia_Temporizador|counter_out\(2) & (\instance_datapath|instancia_Temporizador|counter_out\(0) & (\instance_datapath|instancia_Temporizador|counter_out\(1) $ 
-- (\instance_datapath|instancia_Temporizador|counter_out\(3))))) # (!\instance_datapath|instancia_Temporizador|counter_out\(2) & (!\instance_datapath|instancia_Temporizador|counter_out\(3) & ((\instance_datapath|instancia_Temporizador|counter_out\(1)) # 
-- (\instance_datapath|instancia_Temporizador|counter_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter_out\(2),
	datab => \instance_datapath|instancia_Temporizador|counter_out\(1),
	datac => \instance_datapath|instancia_Temporizador|counter_out\(3),
	datad => \instance_datapath|instancia_Temporizador|counter_out\(0),
	combout => \instance_datapath|instancia_Bcd_7seg|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y35_N12
\instance_datapath|instancia_Bcd_7seg|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instance_datapath|instancia_Bcd_7seg|Mux0~0_combout\ = (\instance_datapath|instancia_Temporizador|counter_out\(0) & ((\instance_datapath|instancia_Temporizador|counter_out\(3)) # (\instance_datapath|instancia_Temporizador|counter_out\(2) $ 
-- (\instance_datapath|instancia_Temporizador|counter_out\(1))))) # (!\instance_datapath|instancia_Temporizador|counter_out\(0) & ((\instance_datapath|instancia_Temporizador|counter_out\(1)) # (\instance_datapath|instancia_Temporizador|counter_out\(2) $ 
-- (\instance_datapath|instancia_Temporizador|counter_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|counter_out\(2),
	datab => \instance_datapath|instancia_Temporizador|counter_out\(1),
	datac => \instance_datapath|instancia_Temporizador|counter_out\(3),
	datad => \instance_datapath|instancia_Temporizador|counter_out\(0),
	combout => \instance_datapath|instancia_Bcd_7seg|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y35_N26
\instancia_controladora|Led_Enchendo~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Led_Enchendo~0_combout\ = ((\instance_datapath|instancia_Temporizador|timeout~regout\) # (\Porta~combout\)) # (!\instancia_controladora|estado_atual.Enchendo~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_controladora|estado_atual.Enchendo~regout\,
	datab => \instance_datapath|instancia_Temporizador|timeout~regout\,
	datad => \Porta~combout\,
	combout => \instancia_controladora|Led_Enchendo~0_combout\);

-- Location: LCCOMB_X24_Y35_N6
\instancia_controladora|Led_Molho~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Led_Molho~0_combout\ = (\instance_datapath|instancia_Temporizador|timeout~regout\) # ((\Porta~combout\) # (!\instancia_controladora|estado_atual.Molho~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|timeout~regout\,
	datac => \instancia_controladora|estado_atual.Molho~regout\,
	datad => \Porta~combout\,
	combout => \instancia_controladora|Led_Molho~0_combout\);

-- Location: LCCOMB_X24_Y35_N20
\instancia_controladora|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Selector7~0_combout\ = (\instance_datapath|instancia_Temporizador|timeout~regout\ & ((\Porta~combout\ & ((\instancia_controladora|estado_atual.Lavar~regout\))) # (!\Porta~combout\ & 
-- (\instancia_controladora|estado_atual.Molho~regout\)))) # (!\instance_datapath|instancia_Temporizador|timeout~regout\ & (((\instancia_controladora|estado_atual.Lavar~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_controladora|estado_atual.Molho~regout\,
	datab => \instance_datapath|instancia_Temporizador|timeout~regout\,
	datac => \instancia_controladora|estado_atual.Lavar~regout\,
	datad => \Porta~combout\,
	combout => \instancia_controladora|Selector7~0_combout\);

-- Location: LCFF_X24_Y35_N21
\instancia_controladora|estado_atual.Lavar\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instancia_controladora|Selector7~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_controladora|estado_atual.Lavar~regout\);

-- Location: LCCOMB_X24_Y35_N10
\instancia_controladora|Led_Lavar~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Led_Lavar~0_combout\ = (\instance_datapath|instancia_Temporizador|timeout~regout\) # ((\Porta~combout\) # (!\instancia_controladora|estado_atual.Lavar~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|timeout~regout\,
	datac => \instancia_controladora|estado_atual.Lavar~regout\,
	datad => \Porta~combout\,
	combout => \instancia_controladora|Led_Lavar~0_combout\);

-- Location: LCCOMB_X24_Y35_N30
\instancia_controladora|Led_Enxague~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Led_Enxague~0_combout\ = (\instance_datapath|instancia_Temporizador|timeout~regout\) # ((\Porta~combout\) # (!\instancia_controladora|estado_atual.Enxague~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|timeout~regout\,
	datac => \Porta~combout\,
	datad => \instancia_controladora|estado_atual.Enxague~regout\,
	combout => \instancia_controladora|Led_Enxague~0_combout\);

-- Location: LCCOMB_X24_Y35_N2
\instancia_controladora|Led_Centrifuga~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Led_Centrifuga~0_combout\ = (\instance_datapath|instancia_Temporizador|timeout~regout\) # ((\Porta~combout\) # (!\instancia_controladora|estado_atual.Centrifuga~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|timeout~regout\,
	datac => \instancia_controladora|estado_atual.Centrifuga~regout\,
	datad => \Porta~combout\,
	combout => \instancia_controladora|Led_Centrifuga~0_combout\);

-- Location: LCCOMB_X24_Y35_N4
\instancia_controladora|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Selector10~0_combout\ = (\instance_datapath|instancia_Temporizador|timeout~regout\ & (\instancia_controladora|estado_atual.Centrifuga~regout\ & ((!\Porta~combout\)))) # (!\instance_datapath|instancia_Temporizador|timeout~regout\ & 
-- (((\instancia_controladora|estado_atual.Finalizado~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instance_datapath|instancia_Temporizador|timeout~regout\,
	datab => \instancia_controladora|estado_atual.Centrifuga~regout\,
	datac => \instancia_controladora|estado_atual.Finalizado~regout\,
	datad => \Porta~combout\,
	combout => \instancia_controladora|Selector10~0_combout\);

-- Location: LCFF_X24_Y35_N5
\instancia_controladora|estado_atual.Finalizado\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK~clkctrl_outclk\,
	datain => \instancia_controladora|Selector10~0_combout\,
	aclr => \RESET~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \instancia_controladora|estado_atual.Finalizado~regout\);

-- Location: LCCOMB_X27_Y35_N8
\instancia_controladora|Led_Finalizado~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Led_Finalizado~0_combout\ = (\instance_datapath|instancia_Temporizador|timeout~regout\) # (!\instancia_controladora|estado_atual.Finalizado~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instancia_controladora|estado_atual.Finalizado~regout\,
	datad => \instance_datapath|instancia_Temporizador|timeout~regout\,
	combout => \instancia_controladora|Led_Finalizado~0_combout\);

-- Location: LCCOMB_X24_Y35_N22
\instancia_controladora|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Selector1~0_combout\ = (!\instance_datapath|instancia_Temporizador|timeout~regout\ & (!\Porta~combout\ & ((\instancia_controladora|estado_atual.Enchendo~regout\) # (\instancia_controladora|estado_atual.Enxague~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_controladora|estado_atual.Enchendo~regout\,
	datab => \instance_datapath|instancia_Temporizador|timeout~regout\,
	datac => \Porta~combout\,
	datad => \instancia_controladora|estado_atual.Enxague~regout\,
	combout => \instancia_controladora|Selector1~0_combout\);

-- Location: LCCOMB_X24_Y35_N24
\instancia_controladora|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Selector1~1_combout\ = (!\instance_datapath|instancia_Temporizador|timeout~regout\ & !\Porta~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instance_datapath|instancia_Temporizador|timeout~regout\,
	datad => \Porta~combout\,
	combout => \instancia_controladora|Selector1~1_combout\);

-- Location: LCCOMB_X24_Y35_N14
\instancia_controladora|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \instancia_controladora|Selector0~0_combout\ = (\instancia_controladora|Selector1~1_combout\ & ((\instancia_controladora|estado_atual.Lavar~regout\) # ((\instancia_controladora|estado_atual.Centrifuga~regout\) # 
-- (\instancia_controladora|estado_atual.Enxague~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instancia_controladora|estado_atual.Lavar~regout\,
	datab => \instancia_controladora|estado_atual.Centrifuga~regout\,
	datac => \instancia_controladora|Selector1~1_combout\,
	datad => \instancia_controladora|estado_atual.Enxague~regout\,
	combout => \instancia_controladora|Selector0~0_combout\);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[0]~I\ : cycloneii_io
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
	datain => \instance_datapath|instancia_Bcd_7seg|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(0));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[1]~I\ : cycloneii_io
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
	datain => \instance_datapath|instancia_Bcd_7seg|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(1));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[2]~I\ : cycloneii_io
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
	datain => \instance_datapath|instancia_Bcd_7seg|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(2));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[3]~I\ : cycloneii_io
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
	datain => \instance_datapath|instancia_Bcd_7seg|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(3));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[4]~I\ : cycloneii_io
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
	datain => \instance_datapath|instancia_Bcd_7seg|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(4));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[5]~I\ : cycloneii_io
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
	datain => \instance_datapath|instancia_Bcd_7seg|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(5));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display_7seg[6]~I\ : cycloneii_io
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
	datain => \instance_datapath|instancia_Bcd_7seg|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display_7seg(6));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instancia_controladora|ALT_INV_Led_Enchendo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led_Enchendo);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instancia_controladora|ALT_INV_Led_Molho~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led_Molho);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instancia_controladora|ALT_INV_Led_Lavar~0_combout\,
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
	datain => \instancia_controladora|ALT_INV_Led_Enxague~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led_Enxague);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instancia_controladora|ALT_INV_Led_Centrifuga~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Led_Centrifuga);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instancia_controladora|ALT_INV_Led_Finalizado~0_combout\,
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
	datain => \instancia_controladora|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Valvula_Agua);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \instancia_controladora|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Load_Motor);
END structure;


