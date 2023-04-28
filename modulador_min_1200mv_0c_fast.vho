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

-- DATE "04/18/2023 12:44:19"

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

ENTITY 	moduladorSCH_VHDL IS
    PORT (
	entrada : IN std_logic;
	reset : IN std_logic;
	PB_N : IN std_logic;
	fase : IN std_logic;
	data1_in : IN std_logic_vector(1 DOWNTO 0);
	F_in : IN std_logic_vector(4 DOWNTO 0);
	periodos : IN std_logic_vector(1 DOWNTO 0);
	locked : OUT std_logic;
	c0 : OUT std_logic;
	q : OUT std_logic;
	\GND\ : OUT std_logic;
	rlj : OUT std_logic;
	LED : OUT std_logic;
	LED_SEL : OUT std_logic;
	cuenta_o : OUT std_logic_vector(10 DOWNTO 0);
	dato_o : OUT std_logic_vector(1 DOWNTO 0);
	indice_o : OUT std_logic_vector(10 DOWNTO 0);
	sal : OUT std_logic_vector(1 DOWNTO 0);
	salida : OUT std_logic_vector(11 DOWNTO 0)
	);
END moduladorSCH_VHDL;

-- Design Ports Information
-- locked	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GND	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rlj	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_SEL	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[4]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[5]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[8]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[9]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[10]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato_o[0]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato_o[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[6]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[8]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[9]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[10]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sal[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[0]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[1]	=>  Location: PIN_L27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[2]	=>  Location: PIN_K28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[3]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[4]	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[5]	=>  Location: PIN_K25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[6]	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[7]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[8]	=>  Location: PIN_F28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[9]	=>  Location: PIN_F27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[10]	=>  Location: PIN_H24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- salida[11]	=>  Location: PIN_H23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_in[0]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_in[1]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_in[2]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_in[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_in[4]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1_in[0]	=>  Location: PIN_J28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1_in[1]	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fase	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- periodos[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- periodos[1]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PB_N	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF moduladorSCH_VHDL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_PB_N : std_logic;
SIGNAL ww_fase : std_logic;
SIGNAL ww_data1_in : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_F_in : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_periodos : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_locked : std_logic;
SIGNAL ww_c0 : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL \ww_GND\ : std_logic;
SIGNAL ww_rlj : std_logic;
SIGNAL ww_LED : std_logic;
SIGNAL ww_LED_SEL : std_logic;
SIGNAL ww_cuenta_o : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_dato_o : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_indice_o : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_sal : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_salida : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst|rlj~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|q~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst5|altpll_component|auto_generated|locked~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst6|reloj_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|Add4~36_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~58_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~30_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~48_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~52_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~54_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~56_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~58_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~2_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~4_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~8_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~12_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta~0_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta~2_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta~3_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta~5_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~5_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan6~2_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux3~1_combout\ : std_logic;
SIGNAL \b2v_inst6|reloj_out~q\ : std_logic;
SIGNAL \b2v_inst|indice[7]~_emulated_q\ : std_logic;
SIGNAL \b2v_inst|indice[8]~_emulated_q\ : std_logic;
SIGNAL \b2v_inst|indice[9]~_emulated_q\ : std_logic;
SIGNAL \b2v_inst|Mux10~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~25_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~26_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~25_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~25_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~26_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux12~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux11~1_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~33_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan8~1_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~35_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~36_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux1~1_combout\ : std_logic;
SIGNAL \b2v_inst6|reloj_out~0_combout\ : std_logic;
SIGNAL \b2v_inst6|reloj_out~1_combout\ : std_logic;
SIGNAL \b2v_inst|indice[7]~3_combout\ : std_logic;
SIGNAL \b2v_inst|indice[8]~7_combout\ : std_logic;
SIGNAL \b2v_inst|indice[9]~11_combout\ : std_logic;
SIGNAL \b2v_inst6|cnt~0_combout\ : std_logic;
SIGNAL \b2v_inst6|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst6|cnt~1_combout\ : std_logic;
SIGNAL \b2v_inst6|Add0~1_combout\ : std_logic;
SIGNAL \b2v_inst6|cnt~2_combout\ : std_logic;
SIGNAL \b2v_inst6|cnt~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~29_combout\ : std_logic;
SIGNAL \F_in[2]~input_o\ : std_logic;
SIGNAL \data1_in[0]~input_o\ : std_logic;
SIGNAL \b2v_inst|rlj~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst1|q~2clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst6|reloj_out~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|cuenta[1]~feeder_combout\ : std_logic;
SIGNAL \entrada~input_o\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|pll_lock_sync~q\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|locked~combout\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_outclk\ : std_logic;
SIGNAL \F_in[1]~input_o\ : std_logic;
SIGNAL \F_in[0]~input_o\ : std_logic;
SIGNAL \b2v_inst|Add0~1_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~0_combout\ : std_logic;
SIGNAL \F_in[4]~input_o\ : std_logic;
SIGNAL \F_in[3]~input_o\ : std_logic;
SIGNAL \b2v_inst|Add0~3_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~4_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~5\ : std_logic;
SIGNAL \b2v_inst|Add4~6_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|locked~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|cuenta~4_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~7\ : std_logic;
SIGNAL \b2v_inst|Add4~9\ : std_logic;
SIGNAL \b2v_inst|Add4~10_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta[5]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta~6_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~11\ : std_logic;
SIGNAL \b2v_inst|Add4~12_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~13\ : std_logic;
SIGNAL \b2v_inst|Add4~14_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~15\ : std_logic;
SIGNAL \b2v_inst|Add4~16_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~17\ : std_logic;
SIGNAL \b2v_inst|Add4~18_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~19\ : std_logic;
SIGNAL \b2v_inst|Add4~20_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~21\ : std_logic;
SIGNAL \b2v_inst|Add4~22_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~23\ : std_logic;
SIGNAL \b2v_inst|Add4~24_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~25\ : std_logic;
SIGNAL \b2v_inst|Add4~26_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~27\ : std_logic;
SIGNAL \b2v_inst|Add4~28_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~7_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~29\ : std_logic;
SIGNAL \b2v_inst|Add4~31\ : std_logic;
SIGNAL \b2v_inst|Add4~33\ : std_logic;
SIGNAL \b2v_inst|Add4~35\ : std_logic;
SIGNAL \b2v_inst|Add4~37\ : std_logic;
SIGNAL \b2v_inst|Add4~38_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~39\ : std_logic;
SIGNAL \b2v_inst|Add4~40_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~41\ : std_logic;
SIGNAL \b2v_inst|Add4~42_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~34_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~30_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~32_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~4_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~43\ : std_logic;
SIGNAL \b2v_inst|Add4~44_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~45\ : std_logic;
SIGNAL \b2v_inst|Add4~46_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~47\ : std_logic;
SIGNAL \b2v_inst|Add4~48_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~49\ : std_logic;
SIGNAL \b2v_inst|Add4~50_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~51\ : std_logic;
SIGNAL \b2v_inst|Add4~52_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~53\ : std_logic;
SIGNAL \b2v_inst|Add4~54_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta[27]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~55\ : std_logic;
SIGNAL \b2v_inst|Add4~56_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~57\ : std_logic;
SIGNAL \b2v_inst|Add4~59\ : std_logic;
SIGNAL \b2v_inst|Add4~60_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta[30]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~61\ : std_logic;
SIGNAL \b2v_inst|Add4~62_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta~1_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~1\ : std_logic;
SIGNAL \b2v_inst|Add4~3\ : std_logic;
SIGNAL \b2v_inst|Add4~4_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~8_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~6_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~5_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~8_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~9_combout\ : std_logic;
SIGNAL \b2v_inst|rlj~q\ : std_logic;
SIGNAL \periodos[1]~input_o\ : std_logic;
SIGNAL \periodos[0]~input_o\ : std_logic;
SIGNAL \b2v_inst1|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux1~2_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal9~0_combout\ : std_logic;
SIGNAL \b2v_inst1|q~8_combout\ : std_logic;
SIGNAL \b2v_inst1|q~1_combout\ : std_logic;
SIGNAL \b2v_inst1|cnt[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~3_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal8~3_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal8~2_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal8~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal8~1_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~2_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~1_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux3~2_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux3~3_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux3~4_combout\ : std_logic;
SIGNAL \b2v_inst1|q~4_combout\ : std_logic;
SIGNAL \b2v_inst1|q~0_combout\ : std_logic;
SIGNAL \b2v_inst1|q~_emulated_q\ : std_logic;
SIGNAL \b2v_inst1|q~3_combout\ : std_logic;
SIGNAL \b2v_inst1|q~2_combout\ : std_logic;
SIGNAL \PB_N~input_o\ : std_logic;
SIGNAL \b2v_inst11|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst11|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst11|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst11|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst11|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst11|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \b2v_inst12|SALIDA_PB~0_combout\ : std_logic;
SIGNAL \b2v_inst12|SALIDA_PB~q\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|Add4~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~2_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta_o[6]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta_o[7]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|pseudo_regLSB[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst8|pseudo_regLSB[1]~7_combout\ : std_logic;
SIGNAL \b2v_inst8|pseudo_regLSB~2_combout\ : std_logic;
SIGNAL \b2v_inst8|pseudo_regLSB~1_combout\ : std_logic;
SIGNAL \b2v_inst8|pseudo_regLSB~0_combout\ : std_logic;
SIGNAL \b2v_inst8|pseudo_regLSB[5]~5_combout\ : std_logic;
SIGNAL \b2v_inst8|pseudo_regLSB[6]~4_combout\ : std_logic;
SIGNAL \b2v_inst8|pseudo_regLSB[7]~3_combout\ : std_logic;
SIGNAL \b2v_inst4|data_out[0]~0_combout\ : std_logic;
SIGNAL \data1_in[1]~input_o\ : std_logic;
SIGNAL \b2v_inst8|pseudo_regMSB[0]~4_combout\ : std_logic;
SIGNAL \b2v_inst8|pseudo_regMSB[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|pseudo_regMSB~2_combout\ : std_logic;
SIGNAL \b2v_inst8|pseudo_regMSB~1_combout\ : std_logic;
SIGNAL \b2v_inst8|pseudo_regMSB~0_combout\ : std_logic;
SIGNAL \b2v_inst8|pseudo_regMSB[5]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|pseudo_regMSB[6]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst8|pseudo_regMSB[7]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|data_out[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~0_combout\ : std_logic;
SIGNAL \b2v_inst|indice_o[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~1\ : std_logic;
SIGNAL \b2v_inst|Add3~2_combout\ : std_logic;
SIGNAL \b2v_inst|indice_o[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|indice~19_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~2_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~3\ : std_logic;
SIGNAL \b2v_inst|Add3~5\ : std_logic;
SIGNAL \b2v_inst|Add3~7\ : std_logic;
SIGNAL \b2v_inst|Add3~8_combout\ : std_logic;
SIGNAL \b2v_inst|indice~17_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~9\ : std_logic;
SIGNAL \b2v_inst|Add3~10_combout\ : std_logic;
SIGNAL \b2v_inst|indice~18_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~11\ : std_logic;
SIGNAL \b2v_inst|Add3~12_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~13\ : std_logic;
SIGNAL \b2v_inst|Add3~15\ : std_logic;
SIGNAL \b2v_inst|Add3~17\ : std_logic;
SIGNAL \b2v_inst|Add3~19\ : std_logic;
SIGNAL \b2v_inst|Add3~20_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~21\ : std_logic;
SIGNAL \b2v_inst|Add3~23\ : std_logic;
SIGNAL \b2v_inst|Add3~24_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~25\ : std_logic;
SIGNAL \b2v_inst|Add3~27\ : std_logic;
SIGNAL \b2v_inst|Add3~28_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~29\ : std_logic;
SIGNAL \b2v_inst|Add3~31\ : std_logic;
SIGNAL \b2v_inst|Add3~32_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~33\ : std_logic;
SIGNAL \b2v_inst|Add3~34_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~35\ : std_logic;
SIGNAL \b2v_inst|Add3~36_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~37\ : std_logic;
SIGNAL \b2v_inst|Add3~38_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~39\ : std_logic;
SIGNAL \b2v_inst|Add3~40_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~41\ : std_logic;
SIGNAL \b2v_inst|Add3~42_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~43\ : std_logic;
SIGNAL \b2v_inst|Add3~44_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~45\ : std_logic;
SIGNAL \b2v_inst|Add3~46_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~47\ : std_logic;
SIGNAL \b2v_inst|Add3~49\ : std_logic;
SIGNAL \b2v_inst|Add3~51\ : std_logic;
SIGNAL \b2v_inst|Add3~53\ : std_logic;
SIGNAL \b2v_inst|Add3~55\ : std_logic;
SIGNAL \b2v_inst|Add3~57\ : std_logic;
SIGNAL \b2v_inst|Add3~59\ : std_logic;
SIGNAL \b2v_inst|Add3~61\ : std_logic;
SIGNAL \b2v_inst|Add3~62_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~50_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan6~3_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~60_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan6~4_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan6~5_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \b2v_inst|indice~15_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~4_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~6_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~14_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~16_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~18_combout\ : std_logic;
SIGNAL \b2v_inst|indice~28_combout\ : std_logic;
SIGNAL \b2v_inst|indice~16_combout\ : std_logic;
SIGNAL \fase~input_o\ : std_logic;
SIGNAL \b2v_inst|indice[7]~1_combout\ : std_logic;
SIGNAL \b2v_inst|indice[7]~2_combout\ : std_logic;
SIGNAL \b2v_inst|indice~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~28_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~32_combout\ : std_logic;
SIGNAL \b2v_inst|indice~29_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~29_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~30_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~31_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~33_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~13_combout\ : std_logic;
SIGNAL \b2v_inst|indice~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~25_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~26_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~35_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~27_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~34_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan8~0_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[6]~8_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[6]~9_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[6]~39_combout\ : std_logic;
SIGNAL \b2v_inst|indice[8]~5_combout\ : std_logic;
SIGNAL \b2v_inst|indice[8]~6_combout\ : std_logic;
SIGNAL \b2v_inst|indice~24_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[6]~10_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~11_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~26_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~22_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \b2v_inst|indice[9]~9_combout\ : std_logic;
SIGNAL \b2v_inst|indice[9]~10_combout\ : std_logic;
SIGNAL \b2v_inst|indice~27_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan6~6_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[0]~40_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[6]~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~5_combout\ : std_logic;
SIGNAL \b2v_inst|indice~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~27_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~1_cout\ : std_logic;
SIGNAL \b2v_inst|Add1~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~25_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[6]~41_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[6]~14_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~15_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~16_combout\ : std_logic;
SIGNAL \b2v_inst|salida[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~1_cout\ : std_logic;
SIGNAL \b2v_inst|Add2~3\ : std_logic;
SIGNAL \b2v_inst|Add2~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~25_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~17_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~18_combout\ : std_logic;
SIGNAL \b2v_inst|salida[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~28_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~22_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~3\ : std_logic;
SIGNAL \b2v_inst|Add1~5\ : std_logic;
SIGNAL \b2v_inst|Add1~6_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~5\ : std_logic;
SIGNAL \b2v_inst|Add2~6_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~19_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~23_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~21_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~7\ : std_logic;
SIGNAL \b2v_inst|Add2~8_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~22_combout\ : std_logic;
SIGNAL \b2v_inst|salida[4]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~26_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~25_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~27_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~28_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~7\ : std_logic;
SIGNAL \b2v_inst|Add1~9\ : std_logic;
SIGNAL \b2v_inst|Add1~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~20_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~9\ : std_logic;
SIGNAL \b2v_inst|Add2~10_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~23_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~17_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~11\ : std_logic;
SIGNAL \b2v_inst|Add2~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~14_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~25_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~26_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~13_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~11\ : std_logic;
SIGNAL \b2v_inst|Add1~13\ : std_logic;
SIGNAL \b2v_inst|Add1~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~27_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~15_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~13\ : std_logic;
SIGNAL \b2v_inst|Add2~14_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~27_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~28_combout\ : std_logic;
SIGNAL \b2v_inst|salida[7]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~9_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~15\ : std_logic;
SIGNAL \b2v_inst|Add1~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~11_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~29_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~15\ : std_logic;
SIGNAL \b2v_inst|Add2~16_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~30_combout\ : std_logic;
SIGNAL \b2v_inst|salida[8]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Mux12~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux1~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux1~3_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~17\ : std_logic;
SIGNAL \b2v_inst|Add1~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux12~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux1~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux12~3_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~17\ : std_logic;
SIGNAL \b2v_inst|Add2~18_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~31_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~32_combout\ : std_logic;
SIGNAL \b2v_inst|Mux11~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~19\ : std_logic;
SIGNAL \b2v_inst|Add2~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux0~1_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~19\ : std_logic;
SIGNAL \b2v_inst|Add1~20_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~34_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~42_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~21\ : std_logic;
SIGNAL \b2v_inst|Add1~22_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~21\ : std_logic;
SIGNAL \b2v_inst|Add2~22_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~37_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~38_combout\ : std_logic;
SIGNAL \b2v_inst|salida[11]~0_combout\ : std_logic;
SIGNAL \b2v_inst|indice\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst|dato_o\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst|cuenta_o\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst8|pseudo_regMSB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst1|cnt\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \b2v_inst|indice_o\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \b2v_inst|salida\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst6|cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|salida1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst|cuenta\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst1|MAX_cont\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \b2v_inst8|pseudo_regLSB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst11|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\ : std_logic;
SIGNAL \b2v_inst12|ALT_INV_SALIDA_PB~q\ : std_logic;

BEGIN

ww_entrada <= entrada;
ww_reset <= reset;
ww_PB_N <= PB_N;
ww_fase <= fase;
ww_data1_in <= data1_in;
ww_F_in <= F_in;
ww_periodos <= periodos;
locked <= ww_locked;
c0 <= ww_c0;
q <= ww_q;
\GND\ <= \ww_GND\;
rlj <= ww_rlj;
LED <= ww_LED;
LED_SEL <= ww_LED_SEL;
cuenta_o <= ww_cuenta_o;
dato_o <= ww_dato_o;
indice_o <= ww_indice_o;
sal <= ww_sal;
salida <= ww_salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b2v_inst5|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \entrada~input_o\);

\b2v_inst5|altpll_component|auto_generated|wire_pll1_clk\(0) <= \b2v_inst5|altpll_component|auto_generated|pll1_CLK_bus\(0);
\b2v_inst5|altpll_component|auto_generated|wire_pll1_clk\(1) <= \b2v_inst5|altpll_component|auto_generated|pll1_CLK_bus\(1);
\b2v_inst5|altpll_component|auto_generated|wire_pll1_clk\(2) <= \b2v_inst5|altpll_component|auto_generated|pll1_CLK_bus\(2);
\b2v_inst5|altpll_component|auto_generated|wire_pll1_clk\(3) <= \b2v_inst5|altpll_component|auto_generated|pll1_CLK_bus\(3);
\b2v_inst5|altpll_component|auto_generated|wire_pll1_clk\(4) <= \b2v_inst5|altpll_component|auto_generated|pll1_CLK_bus\(4);

\b2v_inst|rlj~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst|rlj~q\);

\b2v_inst1|q~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst1|q~2_combout\);

\b2v_inst5|altpll_component|auto_generated|locked~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst5|altpll_component|auto_generated|locked~combout\);

\b2v_inst6|reloj_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst6|reloj_out~q\);

\b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk\(0));

\b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk\(0));

\b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk\(1));
\b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\ <= NOT \b2v_inst5|altpll_component|auto_generated|locked~clkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\b2v_inst1|ALT_INV_q~0_combout\ <= NOT \b2v_inst1|q~0_combout\;
\b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\ <= NOT \b2v_inst5|altpll_component|auto_generated|locked~combout\;
\b2v_inst12|ALT_INV_SALIDA_PB~q\ <= NOT \b2v_inst12|SALIDA_PB~q\;

-- Location: PLL_3
\b2v_inst5|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 2,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "c1",
	clk1_divide_by => 100,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 1,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 8000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 28,
	m => 5,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3825,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 200,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \reset~input_o\,
	fbin => \b2v_inst5|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \b2v_inst5|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \b2v_inst5|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \b2v_inst5|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \b2v_inst5|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: LCCOMB_X61_Y63_N4
\b2v_inst|Add4~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~36_combout\ = (\b2v_inst|Add4~35\ & (\b2v_inst|cuenta\(18) & (!\b2v_inst|LessThan2~0_combout\ & VCC))) # (!\b2v_inst|Add4~35\ & ((((\b2v_inst|cuenta\(18) & !\b2v_inst|LessThan2~0_combout\)))))
-- \b2v_inst|Add4~37\ = CARRY((\b2v_inst|cuenta\(18) & (!\b2v_inst|LessThan2~0_combout\ & !\b2v_inst|Add4~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(18),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~35\,
	combout => \b2v_inst|Add4~36_combout\,
	cout => \b2v_inst|Add4~37\);

-- Location: LCCOMB_X61_Y63_N26
\b2v_inst|Add4~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~58_combout\ = (\b2v_inst|Add4~57\ & (((!\b2v_inst|cuenta\(31))) # (!\b2v_inst|cuenta\(29)))) # (!\b2v_inst|Add4~57\ & (((\b2v_inst|cuenta\(29) & \b2v_inst|cuenta\(31))) # (GND)))
-- \b2v_inst|Add4~59\ = CARRY(((!\b2v_inst|Add4~57\) # (!\b2v_inst|cuenta\(31))) # (!\b2v_inst|cuenta\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(29),
	datab => \b2v_inst|cuenta\(31),
	datad => VCC,
	cin => \b2v_inst|Add4~57\,
	combout => \b2v_inst|Add4~58_combout\,
	cout => \b2v_inst|Add4~59\);

-- Location: LCCOMB_X61_Y68_N30
\b2v_inst|Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~30_combout\ = (\b2v_inst|Add3~29\ & (((!\b2v_inst|indice~19_combout\)) # (!\b2v_inst|indice\(15)))) # (!\b2v_inst|Add3~29\ & (((\b2v_inst|indice\(15) & \b2v_inst|indice~19_combout\)) # (GND)))
-- \b2v_inst|Add3~31\ = CARRY(((!\b2v_inst|Add3~29\) # (!\b2v_inst|indice~19_combout\)) # (!\b2v_inst|indice\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(15),
	datab => \b2v_inst|indice~19_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~29\,
	combout => \b2v_inst|Add3~30_combout\,
	cout => \b2v_inst|Add3~31\);

-- Location: LCCOMB_X61_Y67_N16
\b2v_inst|Add3~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~48_combout\ = (\b2v_inst|Add3~47\ & (\b2v_inst|indice\(24) & (\b2v_inst|indice~19_combout\ & VCC))) # (!\b2v_inst|Add3~47\ & ((((\b2v_inst|indice\(24) & \b2v_inst|indice~19_combout\)))))
-- \b2v_inst|Add3~49\ = CARRY((\b2v_inst|indice\(24) & (\b2v_inst|indice~19_combout\ & !\b2v_inst|Add3~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(24),
	datab => \b2v_inst|indice~19_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~47\,
	combout => \b2v_inst|Add3~48_combout\,
	cout => \b2v_inst|Add3~49\);

-- Location: LCCOMB_X61_Y67_N20
\b2v_inst|Add3~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~52_combout\ = (\b2v_inst|Add3~51\ & (\b2v_inst|indice\(26) & (\b2v_inst|indice~19_combout\ & VCC))) # (!\b2v_inst|Add3~51\ & ((((\b2v_inst|indice\(26) & \b2v_inst|indice~19_combout\)))))
-- \b2v_inst|Add3~53\ = CARRY((\b2v_inst|indice\(26) & (\b2v_inst|indice~19_combout\ & !\b2v_inst|Add3~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(26),
	datab => \b2v_inst|indice~19_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~51\,
	combout => \b2v_inst|Add3~52_combout\,
	cout => \b2v_inst|Add3~53\);

-- Location: LCCOMB_X61_Y67_N22
\b2v_inst|Add3~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~54_combout\ = (\b2v_inst|Add3~53\ & (((!\b2v_inst|indice~19_combout\)) # (!\b2v_inst|indice\(27)))) # (!\b2v_inst|Add3~53\ & (((\b2v_inst|indice\(27) & \b2v_inst|indice~19_combout\)) # (GND)))
-- \b2v_inst|Add3~55\ = CARRY(((!\b2v_inst|Add3~53\) # (!\b2v_inst|indice~19_combout\)) # (!\b2v_inst|indice\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(27),
	datab => \b2v_inst|indice~19_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~53\,
	combout => \b2v_inst|Add3~54_combout\,
	cout => \b2v_inst|Add3~55\);

-- Location: LCCOMB_X61_Y67_N24
\b2v_inst|Add3~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~56_combout\ = (\b2v_inst|Add3~55\ & (\b2v_inst|indice\(28) & (\b2v_inst|indice~19_combout\ & VCC))) # (!\b2v_inst|Add3~55\ & ((((\b2v_inst|indice\(28) & \b2v_inst|indice~19_combout\)))))
-- \b2v_inst|Add3~57\ = CARRY((\b2v_inst|indice\(28) & (\b2v_inst|indice~19_combout\ & !\b2v_inst|Add3~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(28),
	datab => \b2v_inst|indice~19_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~55\,
	combout => \b2v_inst|Add3~56_combout\,
	cout => \b2v_inst|Add3~57\);

-- Location: LCCOMB_X61_Y67_N26
\b2v_inst|Add3~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~58_combout\ = (\b2v_inst|Add3~57\ & (((!\b2v_inst|indice~19_combout\)) # (!\b2v_inst|indice\(29)))) # (!\b2v_inst|Add3~57\ & (((\b2v_inst|indice\(29) & \b2v_inst|indice~19_combout\)) # (GND)))
-- \b2v_inst|Add3~59\ = CARRY(((!\b2v_inst|Add3~57\) # (!\b2v_inst|indice~19_combout\)) # (!\b2v_inst|indice\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(29),
	datab => \b2v_inst|indice~19_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~57\,
	combout => \b2v_inst|Add3~58_combout\,
	cout => \b2v_inst|Add3~59\);

-- Location: LCCOMB_X59_Y66_N8
\b2v_inst|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~2_combout\ = (\b2v_inst|Mux20~25_combout\ & ((\b2v_inst|Add2~1_cout\) # (GND))) # (!\b2v_inst|Mux20~25_combout\ & (!\b2v_inst|Add2~1_cout\))
-- \b2v_inst|Add2~3\ = CARRY((\b2v_inst|Mux20~25_combout\) # (!\b2v_inst|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux20~25_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~1_cout\,
	combout => \b2v_inst|Add2~2_combout\,
	cout => \b2v_inst|Add2~3\);

-- Location: LCCOMB_X59_Y67_N8
\b2v_inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~4_combout\ = (\b2v_inst|Mux8~25_combout\ & (!\b2v_inst|Add1~3\ & VCC)) # (!\b2v_inst|Mux8~25_combout\ & (\b2v_inst|Add1~3\ $ (GND)))
-- \b2v_inst|Add1~5\ = CARRY((!\b2v_inst|Mux8~25_combout\ & !\b2v_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux8~25_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~3\,
	combout => \b2v_inst|Add1~4_combout\,
	cout => \b2v_inst|Add1~5\);

-- Location: LCCOMB_X59_Y67_N12
\b2v_inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~8_combout\ = (\b2v_inst|Mux6~19_combout\ & (!\b2v_inst|Add1~7\ & VCC)) # (!\b2v_inst|Mux6~19_combout\ & (\b2v_inst|Add1~7\ $ (GND)))
-- \b2v_inst|Add1~9\ = CARRY((!\b2v_inst|Mux6~19_combout\ & !\b2v_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux6~19_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~7\,
	combout => \b2v_inst|Add1~8_combout\,
	cout => \b2v_inst|Add1~9\);

-- Location: LCCOMB_X59_Y67_N16
\b2v_inst|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~12_combout\ = (\b2v_inst|Mux4~14_combout\ & (!\b2v_inst|Add1~11\ & VCC)) # (!\b2v_inst|Mux4~14_combout\ & (\b2v_inst|Add1~11\ $ (GND)))
-- \b2v_inst|Add1~13\ = CARRY((!\b2v_inst|Mux4~14_combout\ & !\b2v_inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux4~14_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~11\,
	combout => \b2v_inst|Add1~12_combout\,
	cout => \b2v_inst|Add1~13\);

-- Location: FF_X61_Y63_N27
\b2v_inst|cuenta[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~58_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(29));

-- Location: LCCOMB_X62_Y63_N12
\b2v_inst|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~0_combout\ = (!\b2v_inst|cuenta\(27) & (!\b2v_inst|cuenta\(30) & (!\b2v_inst|cuenta\(29) & !\b2v_inst|cuenta\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(27),
	datab => \b2v_inst|cuenta\(30),
	datac => \b2v_inst|cuenta\(29),
	datad => \b2v_inst|cuenta\(28),
	combout => \b2v_inst|LessThan1~0_combout\);

-- Location: FF_X61_Y63_N5
\b2v_inst|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~36_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(18));

-- Location: FF_X60_Y64_N27
\b2v_inst|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|cuenta[1]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(1));

-- Location: FF_X62_Y64_N27
\b2v_inst|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(0));

-- Location: LCCOMB_X62_Y64_N26
\b2v_inst|cuenta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta~0_combout\ = (\b2v_inst|cuenta\(0) & ((\b2v_inst|cuenta\(31)) # (!\b2v_inst|cuenta\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(10),
	datac => \b2v_inst|cuenta\(0),
	datad => \b2v_inst|cuenta\(31),
	combout => \b2v_inst|cuenta~0_combout\);

-- Location: LCCOMB_X60_Y64_N0
\b2v_inst|cuenta~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta~2_combout\ = (\b2v_inst|cuenta\(1) & !\b2v_inst|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|cuenta\(1),
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|cuenta~2_combout\);

-- Location: LCCOMB_X60_Y64_N2
\b2v_inst|cuenta~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta~3_combout\ = (\b2v_inst|cuenta\(2) & !\b2v_inst|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cuenta\(2),
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|cuenta~3_combout\);

-- Location: LCCOMB_X60_Y64_N30
\b2v_inst|cuenta~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta~5_combout\ = (\b2v_inst|cuenta\(4) & !\b2v_inst|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cuenta\(4),
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|cuenta~5_combout\);

-- Location: LCCOMB_X61_Y62_N2
\b2v_inst|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~5_combout\ = (\F_in[4]~input_o\ & \b2v_inst|Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F_in[4]~input_o\,
	datad => \b2v_inst|Add0~3_combout\,
	combout => \b2v_inst|Add0~5_combout\);

-- Location: FF_X61_Y67_N27
\b2v_inst|indice[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~58_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(29));

-- Location: FF_X61_Y67_N25
\b2v_inst|indice[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~56_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(28));

-- Location: FF_X61_Y67_N23
\b2v_inst|indice[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~54_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(27));

-- Location: FF_X61_Y67_N21
\b2v_inst|indice[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~52_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(26));

-- Location: LCCOMB_X62_Y67_N30
\b2v_inst|LessThan6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan6~2_combout\ = (!\b2v_inst|indice\(29) & (!\b2v_inst|indice\(26) & (!\b2v_inst|indice\(28) & !\b2v_inst|indice\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(29),
	datab => \b2v_inst|indice\(26),
	datac => \b2v_inst|indice\(28),
	datad => \b2v_inst|indice\(27),
	combout => \b2v_inst|LessThan6~2_combout\);

-- Location: FF_X61_Y67_N17
\b2v_inst|indice[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~48_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(24));

-- Location: FF_X61_Y68_N31
\b2v_inst|indice[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~30_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(15));

-- Location: LCCOMB_X66_Y40_N4
\b2v_inst1|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux3~1_combout\ = (\b2v_inst1|cnt\(1) & (\periodos[1]~input_o\)) # (!\b2v_inst1|cnt\(1) & (\periodos[0]~input_o\ & ((\periodos[1]~input_o\) # (\b2v_inst1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \periodos[1]~input_o\,
	datab => \periodos[0]~input_o\,
	datac => \b2v_inst1|cnt\(0),
	datad => \b2v_inst1|cnt\(1),
	combout => \b2v_inst1|Mux3~1_combout\);

-- Location: FF_X63_Y40_N23
\b2v_inst1|MAX_cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|rlj~q\,
	d => \b2v_inst1|Mux1~1_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MAX_cont\(2));

-- Location: FF_X57_Y69_N13
\b2v_inst6|reloj_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst6|reloj_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|reloj_out~q\);

-- Location: FF_X61_Y65_N27
\b2v_inst|indice[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|indice[7]~3_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice[7]~_emulated_q\);

-- Location: FF_X63_Y68_N5
\b2v_inst|indice[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|indice[8]~7_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice[8]~_emulated_q\);

-- Location: FF_X62_Y67_N15
\b2v_inst|indice[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|indice[9]~11_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice[9]~_emulated_q\);

-- Location: LCCOMB_X60_Y63_N12
\b2v_inst|Mux10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~12_combout\ = (\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~29_combout\)))) # (!\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~29_combout\ & ((!\b2v_inst|indice~18_combout\))) # 
-- (!\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux10~12_combout\);

-- Location: LCCOMB_X62_Y63_N16
\b2v_inst|Mux10~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~21_combout\ = (!\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~17_combout\)) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~17_combout\ & \b2v_inst|indice~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux10~21_combout\);

-- Location: LCCOMB_X62_Y63_N22
\b2v_inst|Mux10~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~22_combout\ = (\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~16_combout\ $ (\b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~16_combout\ & 
-- (!\b2v_inst|indice~17_combout\)) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux10~22_combout\);

-- Location: LCCOMB_X62_Y63_N24
\b2v_inst|Mux10~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~23_combout\ = (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~17_combout\ $ (((!\b2v_inst|indice~29_combout\ & !\b2v_inst|indice~21_combout\))))) # (!\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~21_combout\ & 
-- ((\b2v_inst|indice~17_combout\) # (\b2v_inst|indice~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux10~23_combout\);

-- Location: LCCOMB_X62_Y63_N18
\b2v_inst|Mux10~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~24_combout\ = (\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~15_combout\)) # (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~15_combout\ & (!\b2v_inst|Mux10~22_combout\)) # (!\b2v_inst|indice~15_combout\ & 
-- ((!\b2v_inst|Mux10~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|Mux10~22_combout\,
	datad => \b2v_inst|Mux10~23_combout\,
	combout => \b2v_inst|Mux10~24_combout\);

-- Location: LCCOMB_X62_Y63_N20
\b2v_inst|Mux10~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~25_combout\ = (\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~16_combout\ $ (((!\b2v_inst|indice~17_combout\ & \b2v_inst|indice~21_combout\))))) # (!\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~16_combout\ & 
-- (\b2v_inst|indice~17_combout\ $ (!\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux10~25_combout\);

-- Location: LCCOMB_X62_Y63_N26
\b2v_inst|Mux10~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~26_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|Mux10~24_combout\ & ((!\b2v_inst|Mux10~25_combout\))) # (!\b2v_inst|Mux10~24_combout\ & (\b2v_inst|Mux10~21_combout\)))) # (!\b2v_inst|indice~18_combout\ & 
-- (((\b2v_inst|Mux10~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|Mux10~21_combout\,
	datac => \b2v_inst|Mux10~25_combout\,
	datad => \b2v_inst|Mux10~24_combout\,
	combout => \b2v_inst|Mux10~26_combout\);

-- Location: LCCOMB_X58_Y67_N14
\b2v_inst|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~0_combout\ = (\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~17_combout\ $ (((\b2v_inst|indice~16_combout\) # (\b2v_inst|indice~14_combout\))))) # (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~16_combout\ & 
-- ((\b2v_inst|indice~14_combout\))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~17_combout\ & !\b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux9~0_combout\);

-- Location: LCCOMB_X58_Y67_N18
\b2v_inst|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~1_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~14_combout\ $ (((\b2v_inst|indice~16_combout\))))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~18_combout\) # ((\b2v_inst|indice~14_combout\ & 
-- \b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux9~1_combout\);

-- Location: LCCOMB_X58_Y67_N4
\b2v_inst|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~2_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~14_combout\))) # (!\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~16_combout\ & !\b2v_inst|indice~14_combout\)))) # 
-- (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~14_combout\ & (\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux9~2_combout\);

-- Location: LCCOMB_X58_Y67_N20
\b2v_inst|Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~3_combout\ = (\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~15_combout\)) # (!\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~15_combout\ & ((\b2v_inst|Mux9~1_combout\))) # (!\b2v_inst|indice~15_combout\ & 
-- (!\b2v_inst|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|Mux9~2_combout\,
	datad => \b2v_inst|Mux9~1_combout\,
	combout => \b2v_inst|Mux9~3_combout\);

-- Location: LCCOMB_X58_Y67_N2
\b2v_inst|Mux9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~4_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\ $ (!\b2v_inst|indice~14_combout\)))) # (!\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\ $ 
-- (\b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux9~4_combout\);

-- Location: LCCOMB_X58_Y67_N0
\b2v_inst|Mux9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~5_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|Mux9~3_combout\ & (\b2v_inst|Mux9~4_combout\)) # (!\b2v_inst|Mux9~3_combout\ & ((!\b2v_inst|Mux9~0_combout\))))) # (!\b2v_inst|indice~13_combout\ & (((\b2v_inst|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|Mux9~4_combout\,
	datac => \b2v_inst|Mux9~0_combout\,
	datad => \b2v_inst|Mux9~3_combout\,
	combout => \b2v_inst|Mux9~5_combout\);

-- Location: LCCOMB_X57_Y67_N8
\b2v_inst|Mux9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~6_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~15_combout\))) # (!\b2v_inst|indice~14_combout\ & (!\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~13_combout\ & 
-- ((\b2v_inst|indice~15_combout\ & ((!\b2v_inst|indice~14_combout\))) # (!\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux9~6_combout\);

-- Location: LCCOMB_X57_Y67_N26
\b2v_inst|Mux9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~7_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~14_combout\) # ((\b2v_inst|indice~13_combout\ & !\b2v_inst|indice~15_combout\)))) # (!\b2v_inst|indice~17_combout\ & (((\b2v_inst|indice~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux9~7_combout\);

-- Location: LCCOMB_X57_Y67_N12
\b2v_inst|Mux9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~8_combout\ = (\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~13_combout\) # (\b2v_inst|indice~15_combout\ $ (!\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~15_combout\ & 
-- (\b2v_inst|indice~17_combout\)) # (!\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~17_combout\ & \b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~13_combout\,
	combout => \b2v_inst|Mux9~8_combout\);

-- Location: LCCOMB_X57_Y67_N6
\b2v_inst|Mux9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~9_combout\ = (\b2v_inst|indice~18_combout\ & (((\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~16_combout\ & (\b2v_inst|Mux9~7_combout\)) # (!\b2v_inst|indice~16_combout\ & 
-- ((!\b2v_inst|Mux9~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux9~7_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|Mux9~8_combout\,
	combout => \b2v_inst|Mux9~9_combout\);

-- Location: LCCOMB_X57_Y67_N20
\b2v_inst|Mux9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~10_combout\ = (\b2v_inst|indice~14_combout\ & (((!\b2v_inst|indice~13_combout\)))) # (!\b2v_inst|indice~14_combout\ & (\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~17_combout\ $ (!\b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux9~10_combout\);

-- Location: LCCOMB_X57_Y67_N22
\b2v_inst|Mux9~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~11_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|Mux9~9_combout\ & (!\b2v_inst|Mux9~10_combout\)) # (!\b2v_inst|Mux9~9_combout\ & ((!\b2v_inst|Mux9~6_combout\))))) # (!\b2v_inst|indice~18_combout\ & (((\b2v_inst|Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|Mux9~10_combout\,
	datac => \b2v_inst|Mux9~6_combout\,
	datad => \b2v_inst|Mux9~9_combout\,
	combout => \b2v_inst|Mux9~11_combout\);

-- Location: LCCOMB_X58_Y67_N10
\b2v_inst|Mux9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~12_combout\ = ((\b2v_inst|indice~17_combout\ & !\b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux9~12_combout\);

-- Location: LCCOMB_X57_Y67_N28
\b2v_inst|Mux9~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~13_combout\ = (\b2v_inst|indice~14_combout\ & (\b2v_inst|indice~13_combout\ & (!\b2v_inst|indice~17_combout\ & !\b2v_inst|indice~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~18_combout\,
	combout => \b2v_inst|Mux9~13_combout\);

-- Location: LCCOMB_X57_Y67_N30
\b2v_inst|Mux9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~14_combout\ = (\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~17_combout\)) # (!\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~18_combout\))))) # (!\b2v_inst|indice~14_combout\ & 
-- (((\b2v_inst|indice~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~18_combout\,
	combout => \b2v_inst|Mux9~14_combout\);

-- Location: LCCOMB_X57_Y67_N0
\b2v_inst|Mux9~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~15_combout\ = (\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~16_combout\ & ((\b2v_inst|Mux9~13_combout\))) # (!\b2v_inst|indice~16_combout\ & 
-- (\b2v_inst|Mux9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|Mux9~14_combout\,
	datad => \b2v_inst|Mux9~13_combout\,
	combout => \b2v_inst|Mux9~15_combout\);

-- Location: LCCOMB_X57_Y67_N14
\b2v_inst|Mux9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~16_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~14_combout\ & (\b2v_inst|indice~18_combout\ & !\b2v_inst|indice~13_combout\)) # (!\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~18_combout\) # 
-- (!\b2v_inst|indice~13_combout\))))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~14_combout\ & (!\b2v_inst|indice~18_combout\ & \b2v_inst|indice~13_combout\)) # (!\b2v_inst|indice~14_combout\ & (\b2v_inst|indice~18_combout\ & 
-- !\b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~13_combout\,
	combout => \b2v_inst|Mux9~16_combout\);

-- Location: LCCOMB_X57_Y67_N24
\b2v_inst|Mux9~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~17_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|Mux9~15_combout\ & (!\b2v_inst|Mux9~16_combout\)) # (!\b2v_inst|Mux9~15_combout\ & ((\b2v_inst|Mux9~12_combout\))))) # (!\b2v_inst|indice~15_combout\ & 
-- (((\b2v_inst|Mux9~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|Mux9~16_combout\,
	datac => \b2v_inst|Mux9~12_combout\,
	datad => \b2v_inst|Mux9~15_combout\,
	combout => \b2v_inst|Mux9~17_combout\);

-- Location: LCCOMB_X57_Y67_N2
\b2v_inst|Mux9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~18_combout\ = (\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~21_combout\)) # (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~21_combout\ & (\b2v_inst|Mux9~11_combout\)) # (!\b2v_inst|indice~21_combout\ & 
-- ((\b2v_inst|Mux9~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|Mux9~11_combout\,
	datad => \b2v_inst|Mux9~17_combout\,
	combout => \b2v_inst|Mux9~18_combout\);

-- Location: LCCOMB_X57_Y67_N4
\b2v_inst|Mux9~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~19_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~15_combout\)) # (!\b2v_inst|indice~16_combout\ & ((!\b2v_inst|indice~14_combout\))))) # (!\b2v_inst|indice~18_combout\ & 
-- (!\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~15_combout\) # (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux9~19_combout\);

-- Location: LCCOMB_X58_Y67_N24
\b2v_inst|Mux9~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~20_combout\ = (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~18_combout\ & (!\b2v_inst|indice~15_combout\))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~18_combout\) # 
-- (!\b2v_inst|indice~14_combout\))) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux9~20_combout\);

-- Location: LCCOMB_X57_Y67_N10
\b2v_inst|Mux9~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~21_combout\ = (\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~17_combout\)) # (!\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~17_combout\ & (!\b2v_inst|Mux9~19_combout\)) # (!\b2v_inst|indice~17_combout\ & 
-- ((!\b2v_inst|Mux9~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux9~19_combout\,
	datad => \b2v_inst|Mux9~20_combout\,
	combout => \b2v_inst|Mux9~21_combout\);

-- Location: LCCOMB_X58_Y67_N12
\b2v_inst|Mux9~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~22_combout\ = (\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\ $ (!\b2v_inst|indice~14_combout\)))) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~16_combout\ $ 
-- (\b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux9~22_combout\);

-- Location: LCCOMB_X57_Y67_N16
\b2v_inst|Mux9~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~23_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|Mux9~21_combout\ & ((!\b2v_inst|Mux9~22_combout\))) # (!\b2v_inst|Mux9~21_combout\ & (!\b2v_inst|Mux20~0_combout\)))) # (!\b2v_inst|indice~13_combout\ & 
-- (((\b2v_inst|Mux9~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux20~0_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|Mux9~22_combout\,
	datad => \b2v_inst|Mux9~21_combout\,
	combout => \b2v_inst|Mux9~23_combout\);

-- Location: LCCOMB_X57_Y67_N18
\b2v_inst|Mux9~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~24_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|Mux9~18_combout\ & (\b2v_inst|Mux9~23_combout\)) # (!\b2v_inst|Mux9~18_combout\ & ((\b2v_inst|Mux9~5_combout\))))) # (!\b2v_inst|indice~29_combout\ & 
-- (((\b2v_inst|Mux9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|Mux9~23_combout\,
	datac => \b2v_inst|Mux9~5_combout\,
	datad => \b2v_inst|Mux9~18_combout\,
	combout => \b2v_inst|Mux9~24_combout\);

-- Location: LCCOMB_X62_Y66_N4
\b2v_inst|Mux20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~1_combout\ = (\b2v_inst|indice~17_combout\ & (((\b2v_inst|indice~15_combout\)))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~13_combout\) # (!\b2v_inst|indice~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux20~1_combout\);

-- Location: LCCOMB_X62_Y66_N2
\b2v_inst|Mux20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~2_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~17_combout\)) # (!\b2v_inst|indice~15_combout\ & ((!\b2v_inst|indice~14_combout\))))) # (!\b2v_inst|indice~13_combout\ & 
-- ((\b2v_inst|indice~14_combout\ & ((!\b2v_inst|indice~17_combout\))) # (!\b2v_inst|indice~14_combout\ & (\b2v_inst|indice~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux20~2_combout\);

-- Location: LCCOMB_X62_Y66_N12
\b2v_inst|Mux20~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~3_combout\ = (\b2v_inst|indice~14_combout\ & (!\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~13_combout\ $ (!\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~14_combout\ & (\b2v_inst|indice~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux20~3_combout\);

-- Location: LCCOMB_X62_Y66_N10
\b2v_inst|Mux20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~4_combout\ = (\b2v_inst|indice~18_combout\ & (((\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~16_combout\ & ((\b2v_inst|Mux20~2_combout\))) # (!\b2v_inst|indice~16_combout\ & 
-- (!\b2v_inst|Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux20~3_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|Mux20~2_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux20~4_combout\);

-- Location: LCCOMB_X62_Y66_N24
\b2v_inst|Mux20~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~5_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~14_combout\) # (!\b2v_inst|indice~15_combout\))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~15_combout\)))) # 
-- (!\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~14_combout\ & (\b2v_inst|indice~17_combout\ $ (\b2v_inst|indice~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux20~5_combout\);

-- Location: LCCOMB_X62_Y66_N22
\b2v_inst|Mux20~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~6_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|Mux20~4_combout\ & (\b2v_inst|Mux20~5_combout\)) # (!\b2v_inst|Mux20~4_combout\ & ((!\b2v_inst|Mux20~1_combout\))))) # (!\b2v_inst|indice~18_combout\ & 
-- (((\b2v_inst|Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|Mux20~5_combout\,
	datac => \b2v_inst|Mux20~1_combout\,
	datad => \b2v_inst|Mux20~4_combout\,
	combout => \b2v_inst|Mux20~6_combout\);

-- Location: LCCOMB_X58_Y65_N10
\b2v_inst|Mux20~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~11_combout\ = (\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~18_combout\) # (!\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~18_combout\)))) # 
-- (!\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux20~11_combout\);

-- Location: LCCOMB_X60_Y66_N10
\b2v_inst|Mux19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~4_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~18_combout\ & ((!\b2v_inst|indice~21_combout\) # (!\b2v_inst|indice~16_combout\))))) # 
-- (!\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~18_combout\ & (!\b2v_inst|indice~16_combout\ & \b2v_inst|indice~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux19~4_combout\);

-- Location: LCCOMB_X62_Y69_N20
\b2v_inst|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~0_combout\ = (\b2v_inst|indice~13_combout\ & (!\b2v_inst|indice~29_combout\ & ((!\b2v_inst|indice~21_combout\) # (!\b2v_inst|indice~18_combout\)))) # (!\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~21_combout\ & 
-- ((!\b2v_inst|indice~29_combout\) # (!\b2v_inst|indice~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux8~0_combout\);

-- Location: LCCOMB_X62_Y69_N22
\b2v_inst|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~1_combout\ = (\b2v_inst|indice~29_combout\ & (!\b2v_inst|indice~13_combout\ & (!\b2v_inst|indice~18_combout\ & \b2v_inst|indice~21_combout\))) # (!\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~13_combout\ $ 
-- ((\b2v_inst|indice~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux8~1_combout\);

-- Location: LCCOMB_X62_Y69_N12
\b2v_inst|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~2_combout\ = (\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~18_combout\ $ (!\b2v_inst|indice~29_combout\)) # (!\b2v_inst|indice~13_combout\))) # (!\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~13_combout\ $ 
-- (((!\b2v_inst|indice~18_combout\ & \b2v_inst|indice~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux8~2_combout\);

-- Location: LCCOMB_X62_Y69_N30
\b2v_inst|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~3_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~15_combout\) # ((!\b2v_inst|Mux8~1_combout\)))) # (!\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|Mux8~1_combout\,
	datad => \b2v_inst|Mux8~2_combout\,
	combout => \b2v_inst|Mux8~3_combout\);

-- Location: LCCOMB_X62_Y67_N10
\b2v_inst|Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~4_combout\ = (\b2v_inst|indice~21_combout\ & (!\b2v_inst|indice~18_combout\ & ((!\b2v_inst|indice~29_combout\)))) # (!\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~18_combout\ $ ((\b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux8~4_combout\);

-- Location: LCCOMB_X63_Y67_N20
\b2v_inst|Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~5_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|Mux8~3_combout\ & (!\b2v_inst|Mux8~4_combout\)) # (!\b2v_inst|Mux8~3_combout\ & ((\b2v_inst|Mux8~0_combout\))))) # (!\b2v_inst|indice~15_combout\ & (((\b2v_inst|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux8~4_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|Mux8~0_combout\,
	datad => \b2v_inst|Mux8~3_combout\,
	combout => \b2v_inst|Mux8~5_combout\);

-- Location: LCCOMB_X62_Y67_N16
\b2v_inst|Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~6_combout\ = (\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~29_combout\ & (!\b2v_inst|indice~18_combout\)) # (!\b2v_inst|indice~29_combout\ & ((!\b2v_inst|indice~16_combout\))))) # (!\b2v_inst|indice~21_combout\ & 
-- (\b2v_inst|indice~29_combout\ $ (((!\b2v_inst|indice~18_combout\ & \b2v_inst|indice~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux8~6_combout\);

-- Location: LCCOMB_X63_Y67_N14
\b2v_inst|Mux8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~7_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~21_combout\ & ((!\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~29_combout\)))) # (!\b2v_inst|indice~18_combout\ & 
-- ((\b2v_inst|indice~29_combout\) # ((\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux8~7_combout\);

-- Location: LCCOMB_X63_Y67_N16
\b2v_inst|Mux8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~8_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~29_combout\) # ((!\b2v_inst|indice~16_combout\ & !\b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~29_combout\ & 
-- ((\b2v_inst|indice~21_combout\) # (!\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux8~8_combout\);

-- Location: LCCOMB_X63_Y67_N18
\b2v_inst|Mux8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~9_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~13_combout\) # ((\b2v_inst|Mux8~7_combout\)))) # (!\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~13_combout\ & ((\b2v_inst|Mux8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|Mux8~7_combout\,
	datad => \b2v_inst|Mux8~8_combout\,
	combout => \b2v_inst|Mux8~9_combout\);

-- Location: LCCOMB_X63_Y65_N16
\b2v_inst|Mux8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~10_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~16_combout\) # (\b2v_inst|indice~21_combout\ $ (\b2v_inst|indice~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~18_combout\,
	combout => \b2v_inst|Mux8~10_combout\);

-- Location: LCCOMB_X63_Y67_N4
\b2v_inst|Mux8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~11_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|Mux8~9_combout\ & ((!\b2v_inst|Mux8~10_combout\))) # (!\b2v_inst|Mux8~9_combout\ & (!\b2v_inst|Mux8~6_combout\)))) # (!\b2v_inst|indice~13_combout\ & (((\b2v_inst|Mux8~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux8~6_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|Mux8~10_combout\,
	datad => \b2v_inst|Mux8~9_combout\,
	combout => \b2v_inst|Mux8~11_combout\);

-- Location: LCCOMB_X63_Y67_N2
\b2v_inst|Mux8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~12_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~13_combout\) # ((\b2v_inst|indice~16_combout\ & !\b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~13_combout\ $ 
-- (\b2v_inst|indice~16_combout\ $ (\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux8~12_combout\);

-- Location: LCCOMB_X63_Y67_N12
\b2v_inst|Mux8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~13_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~21_combout\))) # (!\b2v_inst|indice~13_combout\ & ((!\b2v_inst|indice~21_combout\) # (!\b2v_inst|indice~16_combout\))))) # 
-- (!\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~16_combout\ $ (((\b2v_inst|indice~13_combout\ & !\b2v_inst|indice~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux8~13_combout\);

-- Location: LCCOMB_X63_Y67_N22
\b2v_inst|Mux8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~14_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~16_combout\ $ (!\b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~16_combout\) # ((!\b2v_inst|indice~15_combout\ & 
-- \b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux8~14_combout\);

-- Location: LCCOMB_X63_Y67_N28
\b2v_inst|Mux8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~15_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~29_combout\) # ((!\b2v_inst|Mux8~13_combout\)))) # (!\b2v_inst|indice~18_combout\ & (!\b2v_inst|indice~29_combout\ & (\b2v_inst|Mux8~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|Mux8~14_combout\,
	datad => \b2v_inst|Mux8~13_combout\,
	combout => \b2v_inst|Mux8~15_combout\);

-- Location: LCCOMB_X62_Y67_N26
\b2v_inst|Mux8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~16_combout\ = (\b2v_inst|indice~13_combout\ & (!\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~16_combout\) # (\b2v_inst|indice~15_combout\)))) # (!\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~21_combout\ & 
-- (\b2v_inst|indice~16_combout\ $ (!\b2v_inst|indice~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux8~16_combout\);

-- Location: LCCOMB_X63_Y67_N10
\b2v_inst|Mux8~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~17_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|Mux8~15_combout\ & ((\b2v_inst|Mux8~16_combout\))) # (!\b2v_inst|Mux8~15_combout\ & (!\b2v_inst|Mux8~12_combout\)))) # (!\b2v_inst|indice~29_combout\ & 
-- (((\b2v_inst|Mux8~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|Mux8~12_combout\,
	datac => \b2v_inst|Mux8~16_combout\,
	datad => \b2v_inst|Mux8~15_combout\,
	combout => \b2v_inst|Mux8~17_combout\);

-- Location: LCCOMB_X63_Y67_N0
\b2v_inst|Mux8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~18_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~14_combout\ & (\b2v_inst|Mux8~11_combout\)) # (!\b2v_inst|indice~14_combout\ & 
-- ((\b2v_inst|Mux8~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|Mux8~11_combout\,
	datad => \b2v_inst|Mux8~17_combout\,
	combout => \b2v_inst|Mux8~18_combout\);

-- Location: LCCOMB_X63_Y65_N30
\b2v_inst|Mux8~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~19_combout\ = (\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~21_combout\ $ (((\b2v_inst|indice~16_combout\ & \b2v_inst|indice~18_combout\))))) # (!\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~16_combout\ & 
-- ((\b2v_inst|indice~21_combout\) # (!\b2v_inst|indice~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~18_combout\,
	combout => \b2v_inst|Mux8~19_combout\);

-- Location: LCCOMB_X63_Y67_N30
\b2v_inst|Mux8~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~20_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~18_combout\ & ((!\b2v_inst|indice~21_combout\))))) # (!\b2v_inst|indice~29_combout\ & 
-- ((\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~18_combout\)) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux8~20_combout\);

-- Location: LCCOMB_X63_Y67_N24
\b2v_inst|Mux8~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~21_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~21_combout\))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~29_combout\)))) # (!\b2v_inst|indice~18_combout\ & 
-- (\b2v_inst|indice~21_combout\ $ (((!\b2v_inst|indice~29_combout\ & \b2v_inst|indice~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux8~21_combout\);

-- Location: LCCOMB_X63_Y67_N26
\b2v_inst|Mux8~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~22_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~13_combout\) # ((\b2v_inst|Mux8~20_combout\)))) # (!\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~13_combout\ & ((\b2v_inst|Mux8~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|Mux8~20_combout\,
	datad => \b2v_inst|Mux8~21_combout\,
	combout => \b2v_inst|Mux8~22_combout\);

-- Location: LCCOMB_X63_Y65_N24
\b2v_inst|Mux8~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~23_combout\ = (\b2v_inst|indice~29_combout\ & (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~21_combout\ $ (!\b2v_inst|indice~18_combout\)))) # (!\b2v_inst|indice~29_combout\ & (!\b2v_inst|indice~21_combout\ & 
-- (\b2v_inst|indice~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~18_combout\,
	combout => \b2v_inst|Mux8~23_combout\);

-- Location: LCCOMB_X63_Y67_N8
\b2v_inst|Mux8~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~24_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|Mux8~22_combout\ & (!\b2v_inst|Mux8~23_combout\)) # (!\b2v_inst|Mux8~22_combout\ & ((!\b2v_inst|Mux8~19_combout\))))) # (!\b2v_inst|indice~13_combout\ & 
-- (((\b2v_inst|Mux8~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux8~23_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|Mux8~22_combout\,
	datad => \b2v_inst|Mux8~19_combout\,
	combout => \b2v_inst|Mux8~24_combout\);

-- Location: LCCOMB_X63_Y67_N6
\b2v_inst|Mux8~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~25_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux8~18_combout\ & ((\b2v_inst|Mux8~24_combout\))) # (!\b2v_inst|Mux8~18_combout\ & (\b2v_inst|Mux8~5_combout\)))) # (!\b2v_inst|indice~17_combout\ & 
-- (((\b2v_inst|Mux8~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux8~5_combout\,
	datac => \b2v_inst|Mux8~24_combout\,
	datad => \b2v_inst|Mux8~18_combout\,
	combout => \b2v_inst|Mux8~25_combout\);

-- Location: LCCOMB_X60_Y64_N20
\b2v_inst|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~0_combout\ = (\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~17_combout\)) # (!\b2v_inst|indice~15_combout\ & ((!\b2v_inst|indice~16_combout\))))) # (!\b2v_inst|indice~14_combout\ & 
-- ((\b2v_inst|indice~16_combout\) # ((\b2v_inst|indice~17_combout\ & !\b2v_inst|indice~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux7~0_combout\);

-- Location: LCCOMB_X60_Y64_N10
\b2v_inst|Mux18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~3_combout\ = (\b2v_inst|indice~15_combout\ & (((!\b2v_inst|indice~16_combout\) # (!\b2v_inst|indice~17_combout\)) # (!\b2v_inst|indice~14_combout\))) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~14_combout\) # 
-- ((\b2v_inst|indice~17_combout\) # (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux18~3_combout\);

-- Location: LCCOMB_X60_Y64_N22
\b2v_inst|Mux7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~13_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~14_combout\ & (!\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~14_combout\ & (\b2v_inst|indice~16_combout\ & \b2v_inst|indice~15_combout\)))) # 
-- (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux7~13_combout\);

-- Location: LCCOMB_X60_Y64_N6
\b2v_inst|Mux7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~16_combout\ = (\b2v_inst|indice~21_combout\) # ((\b2v_inst|indice\(6) & \b2v_inst|indice~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice\(6),
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux7~16_combout\);

-- Location: LCCOMB_X63_Y65_N26
\b2v_inst|Mux18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~4_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~29_combout\ & (!\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~29_combout\ & ((!\b2v_inst|indice~21_combout\))))) # (!\b2v_inst|indice~15_combout\ & 
-- ((\b2v_inst|indice~21_combout\) # ((\b2v_inst|indice~16_combout\ & \b2v_inst|indice~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux18~4_combout\);

-- Location: LCCOMB_X63_Y65_N4
\b2v_inst|Mux18~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~5_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~21_combout\)) # (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~16_combout\))))) # (!\b2v_inst|indice~15_combout\ & 
-- ((\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~29_combout\)) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux18~5_combout\);

-- Location: LCCOMB_X63_Y65_N18
\b2v_inst|Mux18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~6_combout\ = (\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~29_combout\ $ (((\b2v_inst|indice~21_combout\) # (\b2v_inst|indice~16_combout\))))) # (!\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~29_combout\ & 
-- (\b2v_inst|indice~21_combout\ & !\b2v_inst|indice~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux18~6_combout\);

-- Location: LCCOMB_X63_Y65_N28
\b2v_inst|Mux18~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~7_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~14_combout\ & (!\b2v_inst|Mux18~5_combout\)) # (!\b2v_inst|indice~14_combout\ & 
-- ((!\b2v_inst|Mux18~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|Mux18~5_combout\,
	datad => \b2v_inst|Mux18~6_combout\,
	combout => \b2v_inst|Mux18~7_combout\);

-- Location: LCCOMB_X63_Y65_N14
\b2v_inst|Mux18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~8_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~15_combout\ $ (\b2v_inst|indice~29_combout\)) # (!\b2v_inst|indice~21_combout\))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~15_combout\ & 
-- ((\b2v_inst|indice~21_combout\))) # (!\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux18~8_combout\);

-- Location: LCCOMB_X63_Y65_N0
\b2v_inst|Mux18~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~9_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux18~7_combout\ & (!\b2v_inst|Mux18~8_combout\)) # (!\b2v_inst|Mux18~7_combout\ & ((\b2v_inst|Mux18~4_combout\))))) # (!\b2v_inst|indice~17_combout\ & 
-- (((\b2v_inst|Mux18~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux18~8_combout\,
	datac => \b2v_inst|Mux18~4_combout\,
	datad => \b2v_inst|Mux18~7_combout\,
	combout => \b2v_inst|Mux18~9_combout\);

-- Location: LCCOMB_X63_Y66_N20
\b2v_inst|Mux18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~10_combout\ = (\b2v_inst|indice~14_combout\ & (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~17_combout\) # (!\b2v_inst|indice~15_combout\)))) # (!\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~15_combout\ & 
-- (!\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux18~10_combout\);

-- Location: LCCOMB_X63_Y66_N14
\b2v_inst|Mux18~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~11_combout\ = (!\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~17_combout\ & !\b2v_inst|indice~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux18~11_combout\);

-- Location: LCCOMB_X63_Y66_N16
\b2v_inst|Mux18~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~12_combout\ = (\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~17_combout\ $ (\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~15_combout\))) # (!\b2v_inst|indice~14_combout\ & (!\b2v_inst|indice~17_combout\ & 
-- (\b2v_inst|indice~15_combout\ $ (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux18~12_combout\);

-- Location: LCCOMB_X63_Y66_N22
\b2v_inst|Mux18~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~13_combout\ = (\b2v_inst|indice~29_combout\ & (((\b2v_inst|Mux18~11_combout\) # (\b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~29_combout\ & (\b2v_inst|Mux18~12_combout\ & ((!\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|Mux18~12_combout\,
	datac => \b2v_inst|Mux18~11_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux18~13_combout\);

-- Location: LCCOMB_X63_Y66_N8
\b2v_inst|Mux18~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~14_combout\ = (\b2v_inst|indice~21_combout\ & ((\b2v_inst|Mux18~13_combout\ & ((\b2v_inst|Mux18~28_combout\))) # (!\b2v_inst|Mux18~13_combout\ & (\b2v_inst|Mux18~10_combout\)))) # (!\b2v_inst|indice~21_combout\ & 
-- (((\b2v_inst|Mux18~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datab => \b2v_inst|Mux18~10_combout\,
	datac => \b2v_inst|Mux18~13_combout\,
	datad => \b2v_inst|Mux18~28_combout\,
	combout => \b2v_inst|Mux18~14_combout\);

-- Location: LCCOMB_X63_Y66_N30
\b2v_inst|Mux18~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~15_combout\ = (\b2v_inst|indice~17_combout\ & (((!\b2v_inst|indice~29_combout\)))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~29_combout\ & \b2v_inst|indice~21_combout\)) # 
-- (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~29_combout\ & !\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux18~15_combout\);

-- Location: LCCOMB_X62_Y65_N8
\b2v_inst|Mux18~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~16_combout\ = (((!\b2v_inst|indice\(4) & !\b2v_inst|indice\(6))) # (!\b2v_inst|indice~21_combout\)) # (!\b2v_inst|indice~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|indice\(4),
	datac => \b2v_inst|indice\(6),
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux18~16_combout\);

-- Location: LCCOMB_X63_Y66_N0
\b2v_inst|Mux18~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~17_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~29_combout\) # (\b2v_inst|indice~17_combout\ $ (\b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~21_combout\ & 
-- (\b2v_inst|indice~29_combout\)) # (!\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux18~17_combout\);

-- Location: LCCOMB_X63_Y66_N2
\b2v_inst|Mux18~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~18_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~14_combout\) # ((\b2v_inst|Mux18~16_combout\)))) # (!\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~14_combout\ & ((!\b2v_inst|Mux18~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|Mux18~16_combout\,
	datad => \b2v_inst|Mux18~17_combout\,
	combout => \b2v_inst|Mux18~18_combout\);

-- Location: LCCOMB_X63_Y66_N24
\b2v_inst|Mux18~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~19_combout\ = (\b2v_inst|indice~29_combout\ & (!\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~16_combout\ $ (\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~29_combout\ & (!\b2v_inst|indice~17_combout\ & 
-- (\b2v_inst|indice~16_combout\ $ (\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux18~19_combout\);

-- Location: LCCOMB_X63_Y66_N10
\b2v_inst|Mux18~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~20_combout\ = (\b2v_inst|indice~14_combout\ & ((\b2v_inst|Mux18~18_combout\ & (!\b2v_inst|Mux18~19_combout\)) # (!\b2v_inst|Mux18~18_combout\ & ((!\b2v_inst|Mux18~15_combout\))))) # (!\b2v_inst|indice~14_combout\ & 
-- (((\b2v_inst|Mux18~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|Mux18~19_combout\,
	datac => \b2v_inst|Mux18~15_combout\,
	datad => \b2v_inst|Mux18~18_combout\,
	combout => \b2v_inst|Mux18~20_combout\);

-- Location: LCCOMB_X63_Y66_N12
\b2v_inst|Mux18~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~21_combout\ = (\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~18_combout\)) # (!\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~18_combout\ & (\b2v_inst|Mux18~14_combout\)) # (!\b2v_inst|indice~18_combout\ & 
-- ((\b2v_inst|Mux18~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|Mux18~14_combout\,
	datad => \b2v_inst|Mux18~20_combout\,
	combout => \b2v_inst|Mux18~21_combout\);

-- Location: LCCOMB_X63_Y66_N18
\b2v_inst|Mux18~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~22_combout\ = (\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~14_combout\ $ (((\b2v_inst|indice~17_combout\) # (!\b2v_inst|indice~16_combout\))))) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~14_combout\ & 
-- (!\b2v_inst|indice~17_combout\)) # (!\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux18~22_combout\);

-- Location: LCCOMB_X63_Y66_N28
\b2v_inst|Mux18~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~23_combout\ = (\b2v_inst|indice~16_combout\ & (((!\b2v_inst|indice~14_combout\)))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~17_combout\ & ((!\b2v_inst|indice~14_combout\))) # (!\b2v_inst|indice~17_combout\ & 
-- (!\b2v_inst|indice~15_combout\ & \b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux18~23_combout\);

-- Location: LCCOMB_X63_Y66_N6
\b2v_inst|Mux18~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~24_combout\ = (\b2v_inst|indice~29_combout\ & (((\b2v_inst|indice~21_combout\) # (\b2v_inst|Mux18~3_combout\)))) # (!\b2v_inst|indice~29_combout\ & (\b2v_inst|Mux18~23_combout\ & (!\b2v_inst|indice~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|Mux18~23_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|Mux18~3_combout\,
	combout => \b2v_inst|Mux18~24_combout\);

-- Location: LCCOMB_X63_Y66_N4
\b2v_inst|Mux18~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~25_combout\ = (\b2v_inst|indice~21_combout\ & ((\b2v_inst|Mux18~24_combout\ & ((\b2v_inst|Mux18~2_combout\))) # (!\b2v_inst|Mux18~24_combout\ & (!\b2v_inst|Mux18~22_combout\)))) # (!\b2v_inst|indice~21_combout\ & 
-- (((\b2v_inst|Mux18~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datab => \b2v_inst|Mux18~22_combout\,
	datac => \b2v_inst|Mux18~2_combout\,
	datad => \b2v_inst|Mux18~24_combout\,
	combout => \b2v_inst|Mux18~25_combout\);

-- Location: LCCOMB_X63_Y66_N26
\b2v_inst|Mux18~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~26_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|Mux18~21_combout\ & ((\b2v_inst|Mux18~25_combout\))) # (!\b2v_inst|Mux18~21_combout\ & (\b2v_inst|Mux18~9_combout\)))) # (!\b2v_inst|indice~13_combout\ & 
-- (((\b2v_inst|Mux18~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|Mux18~9_combout\,
	datac => \b2v_inst|Mux18~25_combout\,
	datad => \b2v_inst|Mux18~21_combout\,
	combout => \b2v_inst|Mux18~26_combout\);

-- Location: LCCOMB_X58_Y66_N12
\b2v_inst|Mux17~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~9_combout\ = \b2v_inst|indice~15_combout\ $ (((\b2v_inst|indice~18_combout\) # (!\b2v_inst|indice~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux17~9_combout\);

-- Location: LCCOMB_X57_Y65_N22
\b2v_inst|Mux17~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~11_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~13_combout\ & ((!\b2v_inst|indice~16_combout\) # (!\b2v_inst|indice~14_combout\))) # (!\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~14_combout\ $ 
-- (!\b2v_inst|indice~16_combout\))))) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~14_combout\ $ (!\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~14_combout\) # 
-- (\b2v_inst|indice~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux17~11_combout\);

-- Location: LCCOMB_X57_Y65_N12
\b2v_inst|Mux17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~14_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~13_combout\) # ((\b2v_inst|indice~14_combout\) # (!\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~15_combout\ & (((\b2v_inst|indice~14_combout\ & 
-- !\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux17~14_combout\);

-- Location: LCCOMB_X59_Y65_N4
\b2v_inst|Mux17~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~18_combout\ = (\b2v_inst|LessThan0~2_combout\ & (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|indice\(0) $ (\b2v_inst|indice\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~2_combout\,
	datab => \b2v_inst|indice\(0),
	datac => \b2v_inst|indice\(1),
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|Mux17~18_combout\);

-- Location: LCCOMB_X59_Y65_N22
\b2v_inst|Mux17~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~21_combout\ = \b2v_inst|indice~15_combout\ $ (((\b2v_inst|indice~14_combout\ & (!\b2v_inst|indice~16_combout\ & !\b2v_inst|indice~13_combout\)) # (!\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~13_combout\,
	combout => \b2v_inst|Mux17~21_combout\);

-- Location: LCCOMB_X59_Y68_N30
\b2v_inst|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~0_combout\ = (\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~16_combout\) # (!\b2v_inst|indice~18_combout\)))) # (!\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~14_combout\ $ 
-- (((\b2v_inst|indice~16_combout\ & \b2v_inst|indice~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~18_combout\,
	combout => \b2v_inst|Mux6~0_combout\);

-- Location: LCCOMB_X58_Y68_N8
\b2v_inst|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~1_combout\ = (\b2v_inst|indice~13_combout\ & (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~14_combout\ & !\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~18_combout\ & 
-- (!\b2v_inst|indice~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux6~1_combout\);

-- Location: LCCOMB_X58_Y68_N14
\b2v_inst|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~2_combout\ = \b2v_inst|indice~13_combout\ $ (((!\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~15_combout\ $ (\b2v_inst|Mux6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|Mux6~1_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux6~2_combout\);

-- Location: LCCOMB_X59_Y68_N28
\b2v_inst|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~3_combout\ = (\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~14_combout\ $ (\b2v_inst|indice~18_combout\)))) # (!\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~14_combout\ & 
-- ((\b2v_inst|indice~16_combout\) # (!\b2v_inst|indice~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~18_combout\,
	combout => \b2v_inst|Mux6~3_combout\);

-- Location: LCCOMB_X58_Y68_N4
\b2v_inst|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~4_combout\ = (\b2v_inst|Mux6~2_combout\ & (((!\b2v_inst|indice~21_combout\) # (!\b2v_inst|Mux6~3_combout\)))) # (!\b2v_inst|Mux6~2_combout\ & (\b2v_inst|Mux6~0_combout\ & ((\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux6~0_combout\,
	datab => \b2v_inst|Mux6~3_combout\,
	datac => \b2v_inst|Mux6~2_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux6~4_combout\);

-- Location: LCCOMB_X58_Y68_N22
\b2v_inst|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~5_combout\ = (\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~21_combout\))) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~13_combout\)))) # (!\b2v_inst|indice~14_combout\ & 
-- ((\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~18_combout\)) # (!\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux6~5_combout\);

-- Location: LCCOMB_X58_Y68_N20
\b2v_inst|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~6_combout\ = (\b2v_inst|indice~18_combout\ & (!\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~14_combout\ $ (\b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~18_combout\ & (((\b2v_inst|indice~14_combout\ & 
-- !\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux6~6_combout\);

-- Location: LCCOMB_X58_Y68_N26
\b2v_inst|Mux6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~7_combout\ = (\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\ $ (((\b2v_inst|Mux6~5_combout\) # (!\b2v_inst|Mux6~6_combout\))))) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|Mux6~5_combout\ & ((!\b2v_inst|Mux6~6_combout\) # 
-- (!\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|Mux6~5_combout\,
	datad => \b2v_inst|Mux6~6_combout\,
	combout => \b2v_inst|Mux6~7_combout\);

-- Location: LCCOMB_X58_Y68_N16
\b2v_inst|Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~8_combout\ = (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~18_combout\ $ (\b2v_inst|Mux6~5_combout\ $ (\b2v_inst|Mux6~6_combout\)))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|Mux6~6_combout\ & (\b2v_inst|indice~18_combout\)) # 
-- (!\b2v_inst|Mux6~6_combout\ & ((\b2v_inst|Mux6~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|Mux6~5_combout\,
	datad => \b2v_inst|Mux6~6_combout\,
	combout => \b2v_inst|Mux6~8_combout\);

-- Location: LCCOMB_X58_Y68_N10
\b2v_inst|Mux6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~9_combout\ = (\b2v_inst|indice~15_combout\ & ((!\b2v_inst|Mux6~8_combout\))) # (!\b2v_inst|indice~15_combout\ & (\b2v_inst|Mux6~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|Mux6~7_combout\,
	datad => \b2v_inst|Mux6~8_combout\,
	combout => \b2v_inst|Mux6~9_combout\);

-- Location: LCCOMB_X58_Y68_N24
\b2v_inst|Mux6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~10_combout\ = (\b2v_inst|indice~13_combout\ & (!\b2v_inst|indice~15_combout\)) # (!\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice~15_combout\ & 
-- (!\b2v_inst|indice~14_combout\ & \b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux6~10_combout\);

-- Location: LCCOMB_X58_Y68_N30
\b2v_inst|Mux6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~11_combout\ = \b2v_inst|indice~15_combout\ $ (((\b2v_inst|indice~13_combout\ & (!\b2v_inst|indice~14_combout\ & \b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux6~11_combout\);

-- Location: LCCOMB_X58_Y68_N0
\b2v_inst|Mux6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~12_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|Mux6~10_combout\) # ((\b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~18_combout\ & (((\b2v_inst|Mux6~11_combout\ & !\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|Mux6~10_combout\,
	datac => \b2v_inst|Mux6~11_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux6~12_combout\);

-- Location: LCCOMB_X58_Y68_N18
\b2v_inst|Mux6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~13_combout\ = (\b2v_inst|indice~21_combout\ & ((\b2v_inst|Mux6~12_combout\ & ((\b2v_inst|Mux17~19_combout\))) # (!\b2v_inst|Mux6~12_combout\ & (\b2v_inst|Mux17~18_combout\)))) # (!\b2v_inst|indice~21_combout\ & 
-- (((\b2v_inst|Mux6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux17~18_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|Mux17~19_combout\,
	datad => \b2v_inst|Mux6~12_combout\,
	combout => \b2v_inst|Mux6~13_combout\);

-- Location: LCCOMB_X58_Y68_N28
\b2v_inst|Mux6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~14_combout\ = (\b2v_inst|indice~29_combout\ & (((\b2v_inst|indice~17_combout\) # (\b2v_inst|Mux6~9_combout\)))) # (!\b2v_inst|indice~29_combout\ & (\b2v_inst|Mux6~13_combout\ & (!\b2v_inst|indice~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|Mux6~13_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|Mux6~9_combout\,
	combout => \b2v_inst|Mux6~14_combout\);

-- Location: LCCOMB_X59_Y68_N18
\b2v_inst|Mux6~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~15_combout\ = (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~15_combout\)))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~15_combout\) # ((\b2v_inst|indice~14_combout\ & 
-- \b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux6~15_combout\);

-- Location: LCCOMB_X59_Y68_N20
\b2v_inst|Mux6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~16_combout\ = (\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~15_combout\) # (\b2v_inst|indice~13_combout\)))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~14_combout\ $ 
-- (((\b2v_inst|indice~15_combout\ & \b2v_inst|indice~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux6~16_combout\);

-- Location: LCCOMB_X58_Y68_N6
\b2v_inst|Mux6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~17_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~21_combout\) # ((!\b2v_inst|Mux6~16_combout\)))) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~21_combout\ & ((\b2v_inst|Mux6~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|Mux6~16_combout\,
	datad => \b2v_inst|Mux6~15_combout\,
	combout => \b2v_inst|Mux6~17_combout\);

-- Location: LCCOMB_X58_Y68_N12
\b2v_inst|Mux6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~18_combout\ = (\b2v_inst|Mux6~17_combout\) # ((!\b2v_inst|indice~18_combout\ & (!\b2v_inst|indice~21_combout\ & \b2v_inst|Mux17~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|Mux17~11_combout\,
	datad => \b2v_inst|Mux6~17_combout\,
	combout => \b2v_inst|Mux6~18_combout\);

-- Location: LCCOMB_X58_Y68_N2
\b2v_inst|Mux6~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~19_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux6~14_combout\ & (\b2v_inst|Mux6~18_combout\)) # (!\b2v_inst|Mux6~14_combout\ & ((\b2v_inst|Mux6~4_combout\))))) # (!\b2v_inst|indice~17_combout\ & 
-- (((\b2v_inst|Mux6~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux6~18_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux6~4_combout\,
	datad => \b2v_inst|Mux6~14_combout\,
	combout => \b2v_inst|Mux6~19_combout\);

-- Location: LCCOMB_X57_Y66_N30
\b2v_inst|Mux16~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~17_combout\ = (\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~17_combout\ $ (((\b2v_inst|indice~16_combout\ & !\b2v_inst|indice~13_combout\))))) # (!\b2v_inst|indice~18_combout\ & (((\b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~13_combout\,
	combout => \b2v_inst|Mux16~17_combout\);

-- Location: LCCOMB_X57_Y66_N0
\b2v_inst|Mux16~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~18_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~13_combout\) # ((\b2v_inst|indice~16_combout\ & \b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~13_combout\,
	combout => \b2v_inst|Mux16~18_combout\);

-- Location: LCCOMB_X57_Y66_N6
\b2v_inst|Mux16~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~19_combout\ = (\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~15_combout\) # ((!\b2v_inst|Mux16~18_combout\)))) # (!\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~15_combout\ & (\b2v_inst|Mux16~17_combout\ & 
-- \b2v_inst|Mux16~18_combout\)) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|Mux16~17_combout\) # (\b2v_inst|Mux16~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|Mux16~17_combout\,
	datad => \b2v_inst|Mux16~18_combout\,
	combout => \b2v_inst|Mux16~19_combout\);

-- Location: LCCOMB_X58_Y63_N10
\b2v_inst|Mux15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~12_combout\ = (\b2v_inst|indice~15_combout\) # ((\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~13_combout\) # (!\b2v_inst|indice~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux15~12_combout\);

-- Location: LCCOMB_X58_Y63_N4
\b2v_inst|Mux15~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~13_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~14_combout\ & !\b2v_inst|indice~13_combout\)))) # 
-- (!\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~13_combout\,
	combout => \b2v_inst|Mux15~13_combout\);

-- Location: LCCOMB_X58_Y63_N18
\b2v_inst|Mux15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~14_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~17_combout\) # ((\b2v_inst|Mux15~12_combout\)))) # (!\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~17_combout\ & (!\b2v_inst|Mux15~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux15~13_combout\,
	datad => \b2v_inst|Mux15~12_combout\,
	combout => \b2v_inst|Mux15~14_combout\);

-- Location: LCCOMB_X58_Y63_N26
\b2v_inst|Mux15~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~16_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux15~14_combout\ & (!\b2v_inst|Mux15~15_combout\)) # (!\b2v_inst|Mux15~14_combout\ & ((\b2v_inst|Mux15~11_combout\))))) # (!\b2v_inst|indice~17_combout\ & 
-- (((\b2v_inst|Mux15~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux15~15_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux15~11_combout\,
	datad => \b2v_inst|Mux15~14_combout\,
	combout => \b2v_inst|Mux15~16_combout\);

-- Location: LCCOMB_X59_Y63_N12
\b2v_inst|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~2_combout\ = (\b2v_inst|indice~29_combout\ & (((!\b2v_inst|indice~14_combout\ & !\b2v_inst|indice~13_combout\)) # (!\b2v_inst|indice~17_combout\))) # (!\b2v_inst|indice~29_combout\ & (((\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux4~2_combout\);

-- Location: LCCOMB_X60_Y69_N22
\b2v_inst|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~2_combout\ = (((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|indice\(2))) # (!\b2v_inst|LessThan0~2_combout\)) # (!\b2v_inst|indice\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(3),
	datab => \b2v_inst|LessThan0~2_combout\,
	datac => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|indice\(2),
	combout => \b2v_inst|Mux3~2_combout\);

-- Location: LCCOMB_X60_Y69_N26
\b2v_inst|Mux3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~11_combout\ = (\b2v_inst|indice~16_combout\) # ((\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~15_combout\ & \b2v_inst|indice~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux3~11_combout\);

-- Location: LCCOMB_X60_Y66_N26
\b2v_inst|Mux14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~4_combout\ = (\b2v_inst|indice~15_combout\ & (((!\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~14_combout\))) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~14_combout\) # ((\b2v_inst|indice~16_combout\) # 
-- (\b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~13_combout\,
	combout => \b2v_inst|Mux14~4_combout\);

-- Location: LCCOMB_X60_Y65_N26
\b2v_inst|Mux16~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~21_combout\ = (!\b2v_inst|indice\(5) & (\b2v_inst|indice\(3) & (\b2v_inst|LessThan0~2_combout\ & !\b2v_inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(5),
	datab => \b2v_inst|indice\(3),
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|Mux16~21_combout\);

-- Location: LCCOMB_X60_Y65_N12
\b2v_inst|Mux13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~2_combout\ = (\b2v_inst|indice\(5) & (!\b2v_inst|indice\(3) & (\b2v_inst|LessThan0~2_combout\ & !\b2v_inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(5),
	datab => \b2v_inst|indice\(3),
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|Mux13~2_combout\);

-- Location: LCCOMB_X62_Y65_N26
\b2v_inst|Mux13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~8_combout\ = (((!\b2v_inst|indice\(4) & !\b2v_inst|indice\(5))) # (!\b2v_inst|indice~29_combout\)) # (!\b2v_inst|indice~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|indice\(4),
	datac => \b2v_inst|indice\(5),
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux13~8_combout\);

-- Location: LCCOMB_X62_Y65_N6
\b2v_inst|Mux12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux12~2_combout\ = (((!\b2v_inst|indice~18_combout\) # (!\b2v_inst|Mux14~2_combout\)) # (!\b2v_inst|indice~17_combout\)) # (!\b2v_inst|indice~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux14~2_combout\,
	datad => \b2v_inst|indice~18_combout\,
	combout => \b2v_inst|Mux12~2_combout\);

-- Location: LCCOMB_X61_Y69_N2
\b2v_inst|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux0~0_combout\ = (\b2v_inst|indice~21_combout\) # ((\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~18_combout\) # (\b2v_inst|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|Mux12~0_combout\,
	combout => \b2v_inst|Mux0~0_combout\);

-- Location: LCCOMB_X61_Y69_N16
\b2v_inst|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux11~1_combout\ = ((!\b2v_inst|indice~29_combout\ & ((!\b2v_inst|Mux12~1_combout\) # (!\b2v_inst|indice~18_combout\)))) # (!\b2v_inst|indice~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|Mux12~1_combout\,
	combout => \b2v_inst|Mux11~1_combout\);

-- Location: LCCOMB_X59_Y69_N22
\b2v_inst|salida1~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~33_combout\ = (\b2v_inst|salida1[6]~14_combout\ & (((\b2v_inst|salida1[6]~13_combout\)))) # (!\b2v_inst|salida1[6]~14_combout\ & ((\b2v_inst|salida1[6]~13_combout\ & ((\b2v_inst|Mux0~0_combout\))) # (!\b2v_inst|salida1[6]~13_combout\ & 
-- (\b2v_inst|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux11~1_combout\,
	datab => \b2v_inst|Mux0~0_combout\,
	datac => \b2v_inst|salida1[6]~14_combout\,
	datad => \b2v_inst|salida1[6]~13_combout\,
	combout => \b2v_inst|salida1~33_combout\);

-- Location: LCCOMB_X62_Y67_N18
\b2v_inst|LessThan8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan8~1_combout\ = (\b2v_inst|LessThan8~0_combout\) # (((\b2v_inst|indice~24_combout\ & \b2v_inst|indice~27_combout\)) # (!\b2v_inst|salida1[6]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~0_combout\,
	datab => \b2v_inst|salida1[6]~9_combout\,
	datac => \b2v_inst|indice~24_combout\,
	datad => \b2v_inst|indice~27_combout\,
	combout => \b2v_inst|LessThan8~1_combout\);

-- Location: LCCOMB_X62_Y67_N24
\b2v_inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~3_combout\ = (\b2v_inst|LessThan6~2_combout\ & (\b2v_inst|LessThan6~5_combout\ & (!\b2v_inst|LessThan0~0_combout\ & \b2v_inst|LessThan6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan6~2_combout\,
	datab => \b2v_inst|LessThan6~5_combout\,
	datac => \b2v_inst|LessThan0~0_combout\,
	datad => \b2v_inst|LessThan6~3_combout\,
	combout => \b2v_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X62_Y67_N22
\b2v_inst|salida1~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~35_combout\ = (\b2v_inst|LessThan6~4_combout\ & \b2v_inst|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|LessThan6~4_combout\,
	datad => \b2v_inst|LessThan0~3_combout\,
	combout => \b2v_inst|salida1~35_combout\);

-- Location: LCCOMB_X62_Y67_N20
\b2v_inst|salida1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~36_combout\ = (\b2v_inst|indice~19_combout\ & ((\b2v_inst|indice\(30)) # ((!\b2v_inst|salida1~35_combout\ & \b2v_inst|LessThan8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|indice\(30),
	datac => \b2v_inst|salida1~35_combout\,
	datad => \b2v_inst|LessThan8~1_combout\,
	combout => \b2v_inst|salida1~36_combout\);

-- Location: LCCOMB_X63_Y40_N22
\b2v_inst1|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux1~1_combout\ = (\periodos[1]~input_o\ & !\periodos[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \periodos[1]~input_o\,
	datad => \periodos[0]~input_o\,
	combout => \b2v_inst1|Mux1~1_combout\);

-- Location: FF_X57_Y69_N23
\b2v_inst6|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst6|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|cnt\(0));

-- Location: FF_X57_Y69_N29
\b2v_inst6|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst6|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|cnt\(3));

-- Location: FF_X57_Y69_N31
\b2v_inst6|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst6|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|cnt\(2));

-- Location: FF_X57_Y69_N15
\b2v_inst6|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst6|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|cnt\(1));

-- Location: LCCOMB_X57_Y69_N26
\b2v_inst6|reloj_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|reloj_out~0_combout\ = (!\b2v_inst6|cnt\(2) & (\b2v_inst6|cnt\(3) & (!\b2v_inst6|cnt\(1) & \b2v_inst6|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|cnt\(2),
	datab => \b2v_inst6|cnt\(3),
	datac => \b2v_inst6|cnt\(1),
	datad => \b2v_inst6|cnt\(0),
	combout => \b2v_inst6|reloj_out~0_combout\);

-- Location: LCCOMB_X57_Y69_N12
\b2v_inst6|reloj_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|reloj_out~1_combout\ = \b2v_inst6|reloj_out~q\ $ (((\b2v_inst6|reloj_out~0_combout\ & !\b2v_inst5|altpll_component|auto_generated|locked~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|reloj_out~0_combout\,
	datac => \b2v_inst6|reloj_out~q\,
	datad => \b2v_inst5|altpll_component|auto_generated|locked~combout\,
	combout => \b2v_inst6|reloj_out~1_combout\);

-- Location: LCCOMB_X62_Y65_N20
\b2v_inst|indice[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice[7]~3_combout\ = \b2v_inst|Add3~14_combout\ $ (\b2v_inst|indice[7]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add3~14_combout\,
	datab => \b2v_inst|indice[7]~1_combout\,
	combout => \b2v_inst|indice[7]~3_combout\);

-- Location: LCCOMB_X63_Y68_N4
\b2v_inst|indice[8]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice[8]~7_combout\ = \b2v_inst|indice[8]~5_combout\ $ (\b2v_inst|Add3~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|indice[8]~5_combout\,
	datad => \b2v_inst|Add3~16_combout\,
	combout => \b2v_inst|indice[8]~7_combout\);

-- Location: LCCOMB_X62_Y67_N14
\b2v_inst|indice[9]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice[9]~11_combout\ = \b2v_inst|indice[9]~9_combout\ $ (\b2v_inst|Add3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|indice[9]~9_combout\,
	datad => \b2v_inst|Add3~18_combout\,
	combout => \b2v_inst|indice[9]~11_combout\);

-- Location: LCCOMB_X57_Y69_N22
\b2v_inst6|cnt~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|cnt~0_combout\ = (!\b2v_inst6|cnt\(0) & !\b2v_inst5|altpll_component|auto_generated|locked~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst6|cnt\(0),
	datad => \b2v_inst5|altpll_component|auto_generated|locked~combout\,
	combout => \b2v_inst6|cnt~0_combout\);

-- Location: LCCOMB_X57_Y69_N24
\b2v_inst6|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Add0~0_combout\ = \b2v_inst6|cnt\(3) $ (((\b2v_inst6|cnt\(2) & (\b2v_inst6|cnt\(1) & \b2v_inst6|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|cnt\(2),
	datab => \b2v_inst6|cnt\(3),
	datac => \b2v_inst6|cnt\(1),
	datad => \b2v_inst6|cnt\(0),
	combout => \b2v_inst6|Add0~0_combout\);

-- Location: LCCOMB_X57_Y69_N28
\b2v_inst6|cnt~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|cnt~1_combout\ = (\b2v_inst6|Add0~0_combout\ & (!\b2v_inst6|reloj_out~0_combout\ & !\b2v_inst5|altpll_component|auto_generated|locked~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|Add0~0_combout\,
	datac => \b2v_inst6|reloj_out~0_combout\,
	datad => \b2v_inst5|altpll_component|auto_generated|locked~combout\,
	combout => \b2v_inst6|cnt~1_combout\);

-- Location: LCCOMB_X57_Y69_N8
\b2v_inst6|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|Add0~1_combout\ = \b2v_inst6|cnt\(2) $ (((\b2v_inst6|cnt\(1) & \b2v_inst6|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|cnt\(1),
	datac => \b2v_inst6|cnt\(2),
	datad => \b2v_inst6|cnt\(0),
	combout => \b2v_inst6|Add0~1_combout\);

-- Location: LCCOMB_X57_Y69_N30
\b2v_inst6|cnt~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|cnt~2_combout\ = (!\b2v_inst6|reloj_out~0_combout\ & (\b2v_inst6|Add0~1_combout\ & !\b2v_inst5|altpll_component|auto_generated|locked~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|reloj_out~0_combout\,
	datac => \b2v_inst6|Add0~1_combout\,
	datad => \b2v_inst5|altpll_component|auto_generated|locked~combout\,
	combout => \b2v_inst6|cnt~2_combout\);

-- Location: LCCOMB_X57_Y69_N14
\b2v_inst6|cnt~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst6|cnt~3_combout\ = (!\b2v_inst6|reloj_out~0_combout\ & (!\b2v_inst5|altpll_component|auto_generated|locked~combout\ & (\b2v_inst6|cnt\(0) $ (\b2v_inst6|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|reloj_out~0_combout\,
	datab => \b2v_inst6|cnt\(0),
	datac => \b2v_inst6|cnt\(1),
	datad => \b2v_inst5|altpll_component|auto_generated|locked~combout\,
	combout => \b2v_inst6|cnt~3_combout\);

-- Location: LCCOMB_X57_Y66_N10
\b2v_inst|Mux16~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~22_combout\ = \b2v_inst|Mux16~19_combout\ $ (((\b2v_inst|indice\(3) & (\b2v_inst|LessThan0~2_combout\ & !\b2v_inst|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(3),
	datab => \b2v_inst|LessThan0~2_combout\,
	datac => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|Mux16~19_combout\,
	combout => \b2v_inst|Mux16~22_combout\);

-- Location: LCCOMB_X62_Y64_N12
\b2v_inst|Mux5~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~29_combout\ = (\b2v_inst|indice\(2) & (!\b2v_inst|indice\(5) & (\b2v_inst|LessThan0~2_combout\ & !\b2v_inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(2),
	datab => \b2v_inst|indice\(5),
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|Mux5~29_combout\);

-- Location: IOIBUF_X74_Y73_N15
\F_in[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_in(2),
	o => \F_in[2]~input_o\);

-- Location: IOIBUF_X115_Y37_N8
\data1_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data1_in(0),
	o => \data1_in[0]~input_o\);

-- Location: CLKCTRL_G2
\b2v_inst|rlj~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst|rlj~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst|rlj~clkctrl_outclk\);

-- Location: CLKCTRL_G7
\b2v_inst1|q~2clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst1|q~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst1|q~2clkctrl_outclk\);

-- Location: CLKCTRL_G10
\b2v_inst6|reloj_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst6|reloj_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst6|reloj_out~clkctrl_outclk\);

-- Location: CLKCTRL_G14
\b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\);

-- Location: LCCOMB_X60_Y64_N26
\b2v_inst|cuenta[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta[1]~feeder_combout\ = \b2v_inst|Add4~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add4~2_combout\,
	combout => \b2v_inst|cuenta[1]~feeder_combout\);

-- Location: IOOBUF_X100_Y73_N23
\locked~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|altpll_component|auto_generated|locked~combout\,
	devoe => ww_devoe,
	o => ww_locked);

-- Location: IOOBUF_X3_Y73_N2
\c0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_outclk\,
	devoe => ww_devoe,
	o => ww_c0);

-- Location: IOOBUF_X115_Y66_N16
\q~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|q~2_combout\,
	devoe => ww_devoe,
	o => ww_q);

-- Location: IOOBUF_X115_Y45_N16
\GND~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_GND\);

-- Location: IOOBUF_X0_Y35_N9
\rlj~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|rlj~q\,
	devoe => ww_devoe,
	o => ww_rlj);

-- Location: IOOBUF_X115_Y46_N9
\LED~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devoe => ww_devoe,
	o => ww_LED);

-- Location: IOOBUF_X60_Y0_N16
\LED_SEL~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst12|ALT_INV_SALIDA_PB~q\,
	devoe => ww_devoe,
	o => ww_LED_SEL);

-- Location: IOOBUF_X54_Y73_N9
\cuenta_o[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|cuenta_o\(0),
	devoe => ww_devoe,
	o => ww_cuenta_o(0));

-- Location: IOOBUF_X62_Y73_N16
\cuenta_o[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|cuenta_o\(1),
	devoe => ww_devoe,
	o => ww_cuenta_o(1));

-- Location: IOOBUF_X60_Y73_N23
\cuenta_o[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|cuenta_o\(2),
	devoe => ww_devoe,
	o => ww_cuenta_o(2));

-- Location: IOOBUF_X65_Y73_N23
\cuenta_o[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|cuenta_o\(3),
	devoe => ww_devoe,
	o => ww_cuenta_o(3));

-- Location: IOOBUF_X69_Y73_N16
\cuenta_o[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|cuenta_o\(4),
	devoe => ww_devoe,
	o => ww_cuenta_o(4));

-- Location: IOOBUF_X49_Y73_N16
\cuenta_o[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|cuenta_o\(5),
	devoe => ww_devoe,
	o => ww_cuenta_o(5));

-- Location: IOOBUF_X58_Y73_N2
\cuenta_o[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|cuenta_o\(6),
	devoe => ww_devoe,
	o => ww_cuenta_o(6));

-- Location: IOOBUF_X65_Y73_N9
\cuenta_o[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|cuenta_o\(7),
	devoe => ww_devoe,
	o => ww_cuenta_o(7));

-- Location: IOOBUF_X65_Y73_N16
\cuenta_o[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|cuenta_o\(8),
	devoe => ww_devoe,
	o => ww_cuenta_o(8));

-- Location: IOOBUF_X60_Y0_N9
\cuenta_o[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|cuenta_o\(9),
	devoe => ww_devoe,
	o => ww_cuenta_o(9));

-- Location: IOOBUF_X60_Y0_N23
\cuenta_o[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|cuenta_o\(10),
	devoe => ww_devoe,
	o => ww_cuenta_o(10));

-- Location: IOOBUF_X67_Y73_N23
\dato_o[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|dato_o\(0),
	devoe => ww_devoe,
	o => ww_dato_o(0));

-- Location: IOOBUF_X52_Y73_N16
\dato_o[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|dato_o\(1),
	devoe => ww_devoe,
	o => ww_dato_o(1));

-- Location: IOOBUF_X52_Y73_N23
\indice_o[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|indice_o\(0),
	devoe => ww_devoe,
	o => ww_indice_o(0));

-- Location: IOOBUF_X62_Y73_N23
\indice_o[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|indice_o\(1),
	devoe => ww_devoe,
	o => ww_indice_o(1));

-- Location: IOOBUF_X60_Y73_N2
\indice_o[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|indice_o\(2),
	devoe => ww_devoe,
	o => ww_indice_o(2));

-- Location: IOOBUF_X54_Y73_N2
\indice_o[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|indice_o\(3),
	devoe => ww_devoe,
	o => ww_indice_o(3));

-- Location: IOOBUF_X60_Y73_N16
\indice_o[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|indice_o\(4),
	devoe => ww_devoe,
	o => ww_indice_o(4));

-- Location: IOOBUF_X58_Y73_N23
\indice_o[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|indice_o\(5),
	devoe => ww_devoe,
	o => ww_indice_o(5));

-- Location: IOOBUF_X67_Y73_N9
\indice_o[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|indice_o\(6),
	devoe => ww_devoe,
	o => ww_indice_o(6));

-- Location: IOOBUF_X52_Y73_N9
\indice_o[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|indice_o\(7),
	devoe => ww_devoe,
	o => ww_indice_o(7));

-- Location: IOOBUF_X52_Y73_N2
\indice_o[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|indice_o\(8),
	devoe => ww_devoe,
	o => ww_indice_o(8));

-- Location: IOOBUF_X60_Y73_N9
\indice_o[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|indice_o\(9),
	devoe => ww_devoe,
	o => ww_indice_o(9));

-- Location: IOOBUF_X67_Y73_N2
\indice_o[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|indice_o\(10),
	devoe => ww_devoe,
	o => ww_indice_o(10));

-- Location: IOOBUF_X67_Y73_N16
\sal[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst8|pseudo_regLSB\(7),
	devoe => ww_devoe,
	o => ww_sal(0));

-- Location: IOOBUF_X58_Y73_N9
\sal[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst8|pseudo_regMSB\(7),
	devoe => ww_devoe,
	o => ww_sal(1));

-- Location: IOOBUF_X115_Y47_N16
\salida[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|salida\(0),
	devoe => ww_devoe,
	o => ww_salida(0));

-- Location: IOOBUF_X115_Y48_N9
\salida[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|salida\(1),
	devoe => ww_devoe,
	o => ww_salida(1));

-- Location: IOOBUF_X115_Y49_N2
\salida[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|salida\(2),
	devoe => ww_devoe,
	o => ww_salida(2));

-- Location: IOOBUF_X115_Y50_N9
\salida[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|salida\(3),
	devoe => ww_devoe,
	o => ww_salida(3));

-- Location: IOOBUF_X115_Y55_N23
\salida[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|salida\(4),
	devoe => ww_devoe,
	o => ww_salida(4));

-- Location: IOOBUF_X115_Y55_N16
\salida[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|salida\(5),
	devoe => ww_devoe,
	o => ww_salida(5));

-- Location: IOOBUF_X115_Y52_N9
\salida[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|salida\(6),
	devoe => ww_devoe,
	o => ww_salida(6));

-- Location: IOOBUF_X115_Y52_N2
\salida[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|salida\(7),
	devoe => ww_devoe,
	o => ww_salida(7));

-- Location: IOOBUF_X115_Y56_N23
\salida[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|salida\(8),
	devoe => ww_devoe,
	o => ww_salida(8));

-- Location: IOOBUF_X115_Y56_N16
\salida[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|salida\(9),
	devoe => ww_devoe,
	o => ww_salida(9));

-- Location: IOOBUF_X115_Y65_N23
\salida[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|salida\(10),
	devoe => ww_devoe,
	o => ww_salida(10));

-- Location: IOOBUF_X115_Y65_N16
\salida[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|salida\(11),
	devoe => ww_devoe,
	o => ww_salida(11));

-- Location: IOIBUF_X56_Y73_N15
\entrada~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada,
	o => \entrada~input_o\);

-- Location: LCCOMB_X57_Y69_N18
\b2v_inst5|altpll_component|auto_generated|pll_lock_sync~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \b2v_inst5|altpll_component|auto_generated|pll_lock_sync~feeder_combout\);

-- Location: IOIBUF_X56_Y0_N22
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X57_Y69_N19
\b2v_inst5|altpll_component|auto_generated|pll_lock_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_locked\,
	d => \b2v_inst5|altpll_component|auto_generated|pll_lock_sync~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|altpll_component|auto_generated|pll_lock_sync~q\);

-- Location: LCCOMB_X57_Y69_N16
\b2v_inst5|altpll_component|auto_generated|locked\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|altpll_component|auto_generated|locked~combout\ = (!\b2v_inst5|altpll_component|auto_generated|pll_lock_sync~q\) # (!\b2v_inst5|altpll_component|auto_generated|wire_pll1_locked\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|altpll_component|auto_generated|wire_pll1_locked\,
	datad => \b2v_inst5|altpll_component|auto_generated|pll_lock_sync~q\,
	combout => \b2v_inst5|altpll_component|auto_generated|locked~combout\);

-- Location: CLKCTRL_PLL3E0
\b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "external clock output",
	ena_register_mode => "double register")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_outclk\);

-- Location: IOIBUF_X56_Y0_N15
\F_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_in(1),
	o => \F_in[1]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\F_in[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_in(0),
	o => \F_in[0]~input_o\);

-- Location: LCCOMB_X61_Y62_N22
\b2v_inst|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~1_combout\ = \F_in[2]~input_o\ $ (((\F_in[1]~input_o\ & \F_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_in[2]~input_o\,
	datac => \F_in[1]~input_o\,
	datad => \F_in[0]~input_o\,
	combout => \b2v_inst|Add0~1_combout\);

-- Location: LCCOMB_X61_Y62_N0
\b2v_inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~0_combout\ = \F_in[1]~input_o\ $ (\F_in[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F_in[1]~input_o\,
	datad => \F_in[0]~input_o\,
	combout => \b2v_inst|Add0~0_combout\);

-- Location: IOIBUF_X83_Y0_N1
\F_in[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_in(4),
	o => \F_in[4]~input_o\);

-- Location: IOIBUF_X67_Y0_N15
\F_in[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_in(3),
	o => \F_in[3]~input_o\);

-- Location: LCCOMB_X61_Y62_N10
\b2v_inst|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~3_combout\ = (\F_in[2]~input_o\ & (\F_in[3]~input_o\ & (\F_in[1]~input_o\ & \F_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_in[2]~input_o\,
	datab => \F_in[3]~input_o\,
	datac => \F_in[1]~input_o\,
	datad => \F_in[0]~input_o\,
	combout => \b2v_inst|Add0~3_combout\);

-- Location: LCCOMB_X61_Y62_N12
\b2v_inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~4_combout\ = \F_in[4]~input_o\ $ (\b2v_inst|Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F_in[4]~input_o\,
	datad => \b2v_inst|Add0~3_combout\,
	combout => \b2v_inst|Add0~4_combout\);

-- Location: LCCOMB_X61_Y64_N4
\b2v_inst|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~4_combout\ = ((\b2v_inst|cuenta~3_combout\ $ (\b2v_inst|Add0~1_combout\ $ (!\b2v_inst|Add4~3\)))) # (GND)
-- \b2v_inst|Add4~5\ = CARRY((\b2v_inst|cuenta~3_combout\ & ((\b2v_inst|Add0~1_combout\) # (!\b2v_inst|Add4~3\))) # (!\b2v_inst|cuenta~3_combout\ & (\b2v_inst|Add0~1_combout\ & !\b2v_inst|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta~3_combout\,
	datab => \b2v_inst|Add0~1_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~3\,
	combout => \b2v_inst|Add4~4_combout\,
	cout => \b2v_inst|Add4~5\);

-- Location: LCCOMB_X61_Y64_N6
\b2v_inst|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~6_combout\ = (\b2v_inst|Add0~2_combout\ & ((\b2v_inst|cuenta~4_combout\ & (\b2v_inst|Add4~5\ & VCC)) # (!\b2v_inst|cuenta~4_combout\ & (!\b2v_inst|Add4~5\)))) # (!\b2v_inst|Add0~2_combout\ & ((\b2v_inst|cuenta~4_combout\ & 
-- (!\b2v_inst|Add4~5\)) # (!\b2v_inst|cuenta~4_combout\ & ((\b2v_inst|Add4~5\) # (GND)))))
-- \b2v_inst|Add4~7\ = CARRY((\b2v_inst|Add0~2_combout\ & (!\b2v_inst|cuenta~4_combout\ & !\b2v_inst|Add4~5\)) # (!\b2v_inst|Add0~2_combout\ & ((!\b2v_inst|Add4~5\) # (!\b2v_inst|cuenta~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~2_combout\,
	datab => \b2v_inst|cuenta~4_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~5\,
	combout => \b2v_inst|Add4~6_combout\,
	cout => \b2v_inst|Add4~7\);

-- Location: LCCOMB_X60_Y64_N8
\b2v_inst|cuenta[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta[3]~feeder_combout\ = \b2v_inst|Add4~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add4~6_combout\,
	combout => \b2v_inst|cuenta[3]~feeder_combout\);

-- Location: CLKCTRL_G11
\b2v_inst5|altpll_component|auto_generated|locked~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst5|altpll_component|auto_generated|locked~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst5|altpll_component|auto_generated|locked~clkctrl_outclk\);

-- Location: FF_X60_Y64_N9
\b2v_inst|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|cuenta[3]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(3));

-- Location: LCCOMB_X60_Y64_N24
\b2v_inst|cuenta~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta~4_combout\ = (\b2v_inst|cuenta\(3) & !\b2v_inst|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|cuenta\(3),
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|cuenta~4_combout\);

-- Location: LCCOMB_X61_Y64_N8
\b2v_inst|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~8_combout\ = ((\b2v_inst|cuenta~5_combout\ $ (\b2v_inst|Add0~4_combout\ $ (!\b2v_inst|Add4~7\)))) # (GND)
-- \b2v_inst|Add4~9\ = CARRY((\b2v_inst|cuenta~5_combout\ & ((\b2v_inst|Add0~4_combout\) # (!\b2v_inst|Add4~7\))) # (!\b2v_inst|cuenta~5_combout\ & (\b2v_inst|Add0~4_combout\ & !\b2v_inst|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta~5_combout\,
	datab => \b2v_inst|Add0~4_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~7\,
	combout => \b2v_inst|Add4~8_combout\,
	cout => \b2v_inst|Add4~9\);

-- Location: LCCOMB_X61_Y64_N10
\b2v_inst|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~10_combout\ = (\b2v_inst|Add0~5_combout\ & ((\b2v_inst|cuenta~6_combout\ & (\b2v_inst|Add4~9\ & VCC)) # (!\b2v_inst|cuenta~6_combout\ & (!\b2v_inst|Add4~9\)))) # (!\b2v_inst|Add0~5_combout\ & ((\b2v_inst|cuenta~6_combout\ & 
-- (!\b2v_inst|Add4~9\)) # (!\b2v_inst|cuenta~6_combout\ & ((\b2v_inst|Add4~9\) # (GND)))))
-- \b2v_inst|Add4~11\ = CARRY((\b2v_inst|Add0~5_combout\ & (!\b2v_inst|cuenta~6_combout\ & !\b2v_inst|Add4~9\)) # (!\b2v_inst|Add0~5_combout\ & ((!\b2v_inst|Add4~9\) # (!\b2v_inst|cuenta~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~5_combout\,
	datab => \b2v_inst|cuenta~6_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~9\,
	combout => \b2v_inst|Add4~10_combout\,
	cout => \b2v_inst|Add4~11\);

-- Location: LCCOMB_X62_Y64_N16
\b2v_inst|cuenta[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta[5]~feeder_combout\ = \b2v_inst|Add4~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add4~10_combout\,
	combout => \b2v_inst|cuenta[5]~feeder_combout\);

-- Location: FF_X62_Y64_N17
\b2v_inst|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|cuenta[5]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(5));

-- Location: LCCOMB_X62_Y64_N10
\b2v_inst|cuenta~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta~6_combout\ = (\b2v_inst|cuenta\(5) & !\b2v_inst|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|cuenta\(5),
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|cuenta~6_combout\);

-- Location: LCCOMB_X61_Y64_N12
\b2v_inst|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~12_combout\ = (\b2v_inst|Add4~11\ & (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(6) & VCC))) # (!\b2v_inst|Add4~11\ & ((((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(6))))))
-- \b2v_inst|Add4~13\ = CARRY((!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(6) & !\b2v_inst|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(6),
	datad => VCC,
	cin => \b2v_inst|Add4~11\,
	combout => \b2v_inst|Add4~12_combout\,
	cout => \b2v_inst|Add4~13\);

-- Location: FF_X61_Y64_N13
\b2v_inst|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~12_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(6));

-- Location: LCCOMB_X61_Y64_N14
\b2v_inst|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~14_combout\ = (\b2v_inst|Add4~13\ & ((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|cuenta\(7))))) # (!\b2v_inst|Add4~13\ & (((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(7))) # (GND)))
-- \b2v_inst|Add4~15\ = CARRY((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|Add4~13\) # (!\b2v_inst|cuenta\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(7),
	datad => VCC,
	cin => \b2v_inst|Add4~13\,
	combout => \b2v_inst|Add4~14_combout\,
	cout => \b2v_inst|Add4~15\);

-- Location: FF_X61_Y64_N15
\b2v_inst|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~14_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(7));

-- Location: LCCOMB_X61_Y64_N16
\b2v_inst|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~16_combout\ = (\b2v_inst|Add4~15\ & (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(8) & VCC))) # (!\b2v_inst|Add4~15\ & ((((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(8))))))
-- \b2v_inst|Add4~17\ = CARRY((!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(8) & !\b2v_inst|Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(8),
	datad => VCC,
	cin => \b2v_inst|Add4~15\,
	combout => \b2v_inst|Add4~16_combout\,
	cout => \b2v_inst|Add4~17\);

-- Location: FF_X61_Y64_N31
\b2v_inst|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~16_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(8));

-- Location: LCCOMB_X61_Y64_N18
\b2v_inst|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~18_combout\ = (\b2v_inst|Add4~17\ & ((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|cuenta\(9))))) # (!\b2v_inst|Add4~17\ & (((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(9))) # (GND)))
-- \b2v_inst|Add4~19\ = CARRY((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|Add4~17\) # (!\b2v_inst|cuenta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(9),
	datad => VCC,
	cin => \b2v_inst|Add4~17\,
	combout => \b2v_inst|Add4~18_combout\,
	cout => \b2v_inst|Add4~19\);

-- Location: FF_X61_Y64_N19
\b2v_inst|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~18_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(9));

-- Location: LCCOMB_X61_Y64_N20
\b2v_inst|Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~20_combout\ = (\b2v_inst|Add4~19\ & (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(10) & VCC))) # (!\b2v_inst|Add4~19\ & ((((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(10))))))
-- \b2v_inst|Add4~21\ = CARRY((!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(10) & !\b2v_inst|Add4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(10),
	datad => VCC,
	cin => \b2v_inst|Add4~19\,
	combout => \b2v_inst|Add4~20_combout\,
	cout => \b2v_inst|Add4~21\);

-- Location: FF_X61_Y65_N7
\b2v_inst|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~20_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(10));

-- Location: LCCOMB_X61_Y64_N22
\b2v_inst|Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~22_combout\ = (\b2v_inst|Add4~21\ & ((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|cuenta\(11))))) # (!\b2v_inst|Add4~21\ & (((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(11))) # (GND)))
-- \b2v_inst|Add4~23\ = CARRY((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|Add4~21\) # (!\b2v_inst|cuenta\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(11),
	datad => VCC,
	cin => \b2v_inst|Add4~21\,
	combout => \b2v_inst|Add4~22_combout\,
	cout => \b2v_inst|Add4~23\);

-- Location: FF_X61_Y64_N23
\b2v_inst|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~22_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(11));

-- Location: LCCOMB_X61_Y64_N24
\b2v_inst|Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~24_combout\ = (\b2v_inst|Add4~23\ & (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(12) & VCC))) # (!\b2v_inst|Add4~23\ & ((((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(12))))))
-- \b2v_inst|Add4~25\ = CARRY((!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(12) & !\b2v_inst|Add4~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(12),
	datad => VCC,
	cin => \b2v_inst|Add4~23\,
	combout => \b2v_inst|Add4~24_combout\,
	cout => \b2v_inst|Add4~25\);

-- Location: FF_X61_Y64_N25
\b2v_inst|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~24_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(12));

-- Location: LCCOMB_X61_Y64_N26
\b2v_inst|Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~26_combout\ = (\b2v_inst|Add4~25\ & (((\b2v_inst|LessThan2~0_combout\)) # (!\b2v_inst|cuenta\(13)))) # (!\b2v_inst|Add4~25\ & (((\b2v_inst|cuenta\(13) & !\b2v_inst|LessThan2~0_combout\)) # (GND)))
-- \b2v_inst|Add4~27\ = CARRY(((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|Add4~25\)) # (!\b2v_inst|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(13),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~25\,
	combout => \b2v_inst|Add4~26_combout\,
	cout => \b2v_inst|Add4~27\);

-- Location: FF_X61_Y64_N27
\b2v_inst|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~26_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(13));

-- Location: LCCOMB_X61_Y64_N28
\b2v_inst|Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~28_combout\ = (\b2v_inst|Add4~27\ & (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(14) & VCC))) # (!\b2v_inst|Add4~27\ & ((((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(14))))))
-- \b2v_inst|Add4~29\ = CARRY((!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(14) & !\b2v_inst|Add4~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(14),
	datad => VCC,
	cin => \b2v_inst|Add4~27\,
	combout => \b2v_inst|Add4~28_combout\,
	cout => \b2v_inst|Add4~29\);

-- Location: FF_X61_Y65_N25
\b2v_inst|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~28_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(14));

-- Location: LCCOMB_X61_Y65_N24
\b2v_inst|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~7_combout\ = (!\b2v_inst|cuenta\(11) & (!\b2v_inst|cuenta\(13) & (!\b2v_inst|cuenta\(14) & !\b2v_inst|cuenta\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(11),
	datab => \b2v_inst|cuenta\(13),
	datac => \b2v_inst|cuenta\(14),
	datad => \b2v_inst|cuenta\(12),
	combout => \b2v_inst|LessThan1~7_combout\);

-- Location: LCCOMB_X61_Y64_N30
\b2v_inst|Add4~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~30_combout\ = (\b2v_inst|Add4~29\ & (((\b2v_inst|LessThan2~0_combout\)) # (!\b2v_inst|cuenta\(15)))) # (!\b2v_inst|Add4~29\ & (((\b2v_inst|cuenta\(15) & !\b2v_inst|LessThan2~0_combout\)) # (GND)))
-- \b2v_inst|Add4~31\ = CARRY(((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|Add4~29\)) # (!\b2v_inst|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(15),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~29\,
	combout => \b2v_inst|Add4~30_combout\,
	cout => \b2v_inst|Add4~31\);

-- Location: LCCOMB_X61_Y63_N0
\b2v_inst|Add4~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~32_combout\ = (\b2v_inst|Add4~31\ & (\b2v_inst|cuenta\(16) & (!\b2v_inst|LessThan2~0_combout\ & VCC))) # (!\b2v_inst|Add4~31\ & ((((\b2v_inst|cuenta\(16) & !\b2v_inst|LessThan2~0_combout\)))))
-- \b2v_inst|Add4~33\ = CARRY((\b2v_inst|cuenta\(16) & (!\b2v_inst|LessThan2~0_combout\ & !\b2v_inst|Add4~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(16),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~31\,
	combout => \b2v_inst|Add4~32_combout\,
	cout => \b2v_inst|Add4~33\);

-- Location: LCCOMB_X61_Y63_N2
\b2v_inst|Add4~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~34_combout\ = (\b2v_inst|Add4~33\ & (((\b2v_inst|LessThan2~0_combout\)) # (!\b2v_inst|cuenta\(17)))) # (!\b2v_inst|Add4~33\ & (((\b2v_inst|cuenta\(17) & !\b2v_inst|LessThan2~0_combout\)) # (GND)))
-- \b2v_inst|Add4~35\ = CARRY(((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|Add4~33\)) # (!\b2v_inst|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(17),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~33\,
	combout => \b2v_inst|Add4~34_combout\,
	cout => \b2v_inst|Add4~35\);

-- Location: LCCOMB_X61_Y63_N6
\b2v_inst|Add4~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~38_combout\ = (\b2v_inst|Add4~37\ & (((\b2v_inst|LessThan2~0_combout\)) # (!\b2v_inst|cuenta\(19)))) # (!\b2v_inst|Add4~37\ & (((\b2v_inst|cuenta\(19) & !\b2v_inst|LessThan2~0_combout\)) # (GND)))
-- \b2v_inst|Add4~39\ = CARRY(((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|Add4~37\)) # (!\b2v_inst|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(19),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~37\,
	combout => \b2v_inst|Add4~38_combout\,
	cout => \b2v_inst|Add4~39\);

-- Location: FF_X61_Y63_N7
\b2v_inst|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~38_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(19));

-- Location: LCCOMB_X61_Y63_N8
\b2v_inst|Add4~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~40_combout\ = (\b2v_inst|Add4~39\ & (\b2v_inst|cuenta\(20) & (!\b2v_inst|LessThan2~0_combout\ & VCC))) # (!\b2v_inst|Add4~39\ & ((((\b2v_inst|cuenta\(20) & !\b2v_inst|LessThan2~0_combout\)))))
-- \b2v_inst|Add4~41\ = CARRY((\b2v_inst|cuenta\(20) & (!\b2v_inst|LessThan2~0_combout\ & !\b2v_inst|Add4~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(20),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~39\,
	combout => \b2v_inst|Add4~40_combout\,
	cout => \b2v_inst|Add4~41\);

-- Location: FF_X61_Y63_N9
\b2v_inst|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~40_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(20));

-- Location: LCCOMB_X61_Y63_N10
\b2v_inst|Add4~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~42_combout\ = (\b2v_inst|Add4~41\ & (((\b2v_inst|LessThan2~0_combout\)) # (!\b2v_inst|cuenta\(21)))) # (!\b2v_inst|Add4~41\ & (((\b2v_inst|cuenta\(21) & !\b2v_inst|LessThan2~0_combout\)) # (GND)))
-- \b2v_inst|Add4~43\ = CARRY(((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|Add4~41\)) # (!\b2v_inst|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(21),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~41\,
	combout => \b2v_inst|Add4~42_combout\,
	cout => \b2v_inst|Add4~43\);

-- Location: FF_X61_Y63_N11
\b2v_inst|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~42_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(21));

-- Location: LCCOMB_X60_Y65_N6
\b2v_inst|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~2_combout\ = (!\b2v_inst|cuenta\(22) & (!\b2v_inst|cuenta\(19) & (!\b2v_inst|cuenta\(20) & !\b2v_inst|cuenta\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(22),
	datab => \b2v_inst|cuenta\(19),
	datac => \b2v_inst|cuenta\(20),
	datad => \b2v_inst|cuenta\(21),
	combout => \b2v_inst|LessThan1~2_combout\);

-- Location: FF_X62_Y65_N21
\b2v_inst|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~34_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(17));

-- Location: FF_X62_Y65_N23
\b2v_inst|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~30_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(15));

-- Location: FF_X61_Y63_N1
\b2v_inst|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~32_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(16));

-- Location: LCCOMB_X62_Y65_N12
\b2v_inst|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~3_combout\ = (!\b2v_inst|cuenta\(18) & (!\b2v_inst|cuenta\(17) & (!\b2v_inst|cuenta\(15) & !\b2v_inst|cuenta\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(18),
	datab => \b2v_inst|cuenta\(17),
	datac => \b2v_inst|cuenta\(15),
	datad => \b2v_inst|cuenta\(16),
	combout => \b2v_inst|LessThan1~3_combout\);

-- Location: LCCOMB_X62_Y63_N10
\b2v_inst|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~1_combout\ = (!\b2v_inst|cuenta\(24) & (!\b2v_inst|cuenta\(23) & (!\b2v_inst|cuenta\(25) & !\b2v_inst|cuenta\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(24),
	datab => \b2v_inst|cuenta\(23),
	datac => \b2v_inst|cuenta\(25),
	datad => \b2v_inst|cuenta\(26),
	combout => \b2v_inst|LessThan1~1_combout\);

-- Location: LCCOMB_X61_Y65_N16
\b2v_inst|LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~4_combout\ = (\b2v_inst|LessThan1~0_combout\ & (\b2v_inst|LessThan1~2_combout\ & (\b2v_inst|LessThan1~3_combout\ & \b2v_inst|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan1~0_combout\,
	datab => \b2v_inst|LessThan1~2_combout\,
	datac => \b2v_inst|LessThan1~3_combout\,
	datad => \b2v_inst|LessThan1~1_combout\,
	combout => \b2v_inst|LessThan1~4_combout\);

-- Location: LCCOMB_X61_Y65_N6
\b2v_inst|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan2~0_combout\ = (!\b2v_inst|cuenta\(31) & (((\b2v_inst|cuenta\(10)) # (!\b2v_inst|LessThan1~4_combout\)) # (!\b2v_inst|LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(31),
	datab => \b2v_inst|LessThan1~7_combout\,
	datac => \b2v_inst|cuenta\(10),
	datad => \b2v_inst|LessThan1~4_combout\,
	combout => \b2v_inst|LessThan2~0_combout\);

-- Location: LCCOMB_X61_Y63_N12
\b2v_inst|Add4~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~44_combout\ = (\b2v_inst|Add4~43\ & (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(22) & VCC))) # (!\b2v_inst|Add4~43\ & ((((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(22))))))
-- \b2v_inst|Add4~45\ = CARRY((!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(22) & !\b2v_inst|Add4~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(22),
	datad => VCC,
	cin => \b2v_inst|Add4~43\,
	combout => \b2v_inst|Add4~44_combout\,
	cout => \b2v_inst|Add4~45\);

-- Location: FF_X60_Y65_N21
\b2v_inst|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~44_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(22));

-- Location: LCCOMB_X61_Y63_N14
\b2v_inst|Add4~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~46_combout\ = (\b2v_inst|Add4~45\ & ((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|cuenta\(23))))) # (!\b2v_inst|Add4~45\ & (((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(23))) # (GND)))
-- \b2v_inst|Add4~47\ = CARRY((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|Add4~45\) # (!\b2v_inst|cuenta\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(23),
	datad => VCC,
	cin => \b2v_inst|Add4~45\,
	combout => \b2v_inst|Add4~46_combout\,
	cout => \b2v_inst|Add4~47\);

-- Location: FF_X61_Y63_N15
\b2v_inst|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~46_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(23));

-- Location: LCCOMB_X61_Y63_N16
\b2v_inst|Add4~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~48_combout\ = (\b2v_inst|Add4~47\ & (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(24) & VCC))) # (!\b2v_inst|Add4~47\ & ((((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(24))))))
-- \b2v_inst|Add4~49\ = CARRY((!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(24) & !\b2v_inst|Add4~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(24),
	datad => VCC,
	cin => \b2v_inst|Add4~47\,
	combout => \b2v_inst|Add4~48_combout\,
	cout => \b2v_inst|Add4~49\);

-- Location: FF_X61_Y63_N17
\b2v_inst|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~48_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(24));

-- Location: LCCOMB_X61_Y63_N18
\b2v_inst|Add4~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~50_combout\ = (\b2v_inst|Add4~49\ & ((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|cuenta\(25))))) # (!\b2v_inst|Add4~49\ & (((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(25))) # (GND)))
-- \b2v_inst|Add4~51\ = CARRY((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|Add4~49\) # (!\b2v_inst|cuenta\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(25),
	datad => VCC,
	cin => \b2v_inst|Add4~49\,
	combout => \b2v_inst|Add4~50_combout\,
	cout => \b2v_inst|Add4~51\);

-- Location: FF_X62_Y63_N11
\b2v_inst|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~50_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(25));

-- Location: LCCOMB_X61_Y63_N20
\b2v_inst|Add4~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~52_combout\ = (\b2v_inst|Add4~51\ & (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(26) & VCC))) # (!\b2v_inst|Add4~51\ & ((((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(26))))))
-- \b2v_inst|Add4~53\ = CARRY((!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(26) & !\b2v_inst|Add4~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(26),
	datad => VCC,
	cin => \b2v_inst|Add4~51\,
	combout => \b2v_inst|Add4~52_combout\,
	cout => \b2v_inst|Add4~53\);

-- Location: FF_X61_Y63_N21
\b2v_inst|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~52_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(26));

-- Location: LCCOMB_X61_Y63_N22
\b2v_inst|Add4~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~54_combout\ = (\b2v_inst|Add4~53\ & ((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|cuenta\(27))))) # (!\b2v_inst|Add4~53\ & (((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(27))) # (GND)))
-- \b2v_inst|Add4~55\ = CARRY((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|Add4~53\) # (!\b2v_inst|cuenta\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(27),
	datad => VCC,
	cin => \b2v_inst|Add4~53\,
	combout => \b2v_inst|Add4~54_combout\,
	cout => \b2v_inst|Add4~55\);

-- Location: LCCOMB_X62_Y63_N30
\b2v_inst|cuenta[27]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta[27]~feeder_combout\ = \b2v_inst|Add4~54_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add4~54_combout\,
	combout => \b2v_inst|cuenta[27]~feeder_combout\);

-- Location: FF_X62_Y63_N31
\b2v_inst|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|cuenta[27]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(27));

-- Location: LCCOMB_X61_Y63_N24
\b2v_inst|Add4~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~56_combout\ = (\b2v_inst|Add4~55\ & (\b2v_inst|cuenta\(31) & (\b2v_inst|cuenta\(28) & VCC))) # (!\b2v_inst|Add4~55\ & ((((\b2v_inst|cuenta\(31) & \b2v_inst|cuenta\(28))))))
-- \b2v_inst|Add4~57\ = CARRY((\b2v_inst|cuenta\(31) & (\b2v_inst|cuenta\(28) & !\b2v_inst|Add4~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(31),
	datab => \b2v_inst|cuenta\(28),
	datad => VCC,
	cin => \b2v_inst|Add4~55\,
	combout => \b2v_inst|Add4~56_combout\,
	cout => \b2v_inst|Add4~57\);

-- Location: FF_X61_Y63_N25
\b2v_inst|cuenta[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~56_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(28));

-- Location: LCCOMB_X61_Y63_N28
\b2v_inst|Add4~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~60_combout\ = (\b2v_inst|Add4~59\ & (\b2v_inst|cuenta\(31) & (\b2v_inst|cuenta\(30) & VCC))) # (!\b2v_inst|Add4~59\ & ((((\b2v_inst|cuenta\(31) & \b2v_inst|cuenta\(30))))))
-- \b2v_inst|Add4~61\ = CARRY((\b2v_inst|cuenta\(31) & (\b2v_inst|cuenta\(30) & !\b2v_inst|Add4~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(31),
	datab => \b2v_inst|cuenta\(30),
	datad => VCC,
	cin => \b2v_inst|Add4~59\,
	combout => \b2v_inst|Add4~60_combout\,
	cout => \b2v_inst|Add4~61\);

-- Location: LCCOMB_X62_Y63_N28
\b2v_inst|cuenta[30]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta[30]~feeder_combout\ = \b2v_inst|Add4~60_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add4~60_combout\,
	combout => \b2v_inst|cuenta[30]~feeder_combout\);

-- Location: FF_X62_Y63_N29
\b2v_inst|cuenta[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|cuenta[30]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(30));

-- Location: LCCOMB_X61_Y63_N30
\b2v_inst|Add4~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~62_combout\ = \b2v_inst|cuenta\(31) $ (\b2v_inst|Add4~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(31),
	cin => \b2v_inst|Add4~61\,
	combout => \b2v_inst|Add4~62_combout\);

-- Location: FF_X61_Y63_N31
\b2v_inst|cuenta[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~62_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(31));

-- Location: LCCOMB_X62_Y64_N28
\b2v_inst|cuenta~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta~1_combout\ = (\b2v_inst|cuenta~0_combout\ & ((\b2v_inst|cuenta\(31)) # ((\b2v_inst|LessThan1~4_combout\ & \b2v_inst|LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta~0_combout\,
	datab => \b2v_inst|cuenta\(31),
	datac => \b2v_inst|LessThan1~4_combout\,
	datad => \b2v_inst|LessThan1~7_combout\,
	combout => \b2v_inst|cuenta~1_combout\);

-- Location: LCCOMB_X61_Y64_N0
\b2v_inst|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~0_combout\ = (\F_in[0]~input_o\ & (\b2v_inst|cuenta~1_combout\ & VCC)) # (!\F_in[0]~input_o\ & (\b2v_inst|cuenta~1_combout\ $ (VCC)))
-- \b2v_inst|Add4~1\ = CARRY((!\F_in[0]~input_o\ & \b2v_inst|cuenta~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_in[0]~input_o\,
	datab => \b2v_inst|cuenta~1_combout\,
	datad => VCC,
	combout => \b2v_inst|Add4~0_combout\,
	cout => \b2v_inst|Add4~1\);

-- Location: LCCOMB_X61_Y64_N2
\b2v_inst|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~2_combout\ = (\b2v_inst|cuenta~2_combout\ & ((\b2v_inst|Add0~0_combout\ & (\b2v_inst|Add4~1\ & VCC)) # (!\b2v_inst|Add0~0_combout\ & (!\b2v_inst|Add4~1\)))) # (!\b2v_inst|cuenta~2_combout\ & ((\b2v_inst|Add0~0_combout\ & 
-- (!\b2v_inst|Add4~1\)) # (!\b2v_inst|Add0~0_combout\ & ((\b2v_inst|Add4~1\) # (GND)))))
-- \b2v_inst|Add4~3\ = CARRY((\b2v_inst|cuenta~2_combout\ & (!\b2v_inst|Add0~0_combout\ & !\b2v_inst|Add4~1\)) # (!\b2v_inst|cuenta~2_combout\ & ((!\b2v_inst|Add4~1\) # (!\b2v_inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta~2_combout\,
	datab => \b2v_inst|Add0~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~1\,
	combout => \b2v_inst|Add4~2_combout\,
	cout => \b2v_inst|Add4~3\);

-- Location: LCCOMB_X60_Y67_N24
\b2v_inst|cuenta[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta[2]~feeder_combout\ = \b2v_inst|Add4~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add4~4_combout\,
	combout => \b2v_inst|cuenta[2]~feeder_combout\);

-- Location: FF_X60_Y67_N25
\b2v_inst|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|cuenta[2]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(2));

-- Location: FF_X61_Y64_N29
\b2v_inst|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~8_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(4));

-- Location: LCCOMB_X59_Y69_N0
\b2v_inst|LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~6_combout\ = (((!\b2v_inst|cuenta\(3)) # (!\b2v_inst|cuenta\(4))) # (!\b2v_inst|cuenta\(2))) # (!\b2v_inst|cuenta\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(1),
	datab => \b2v_inst|cuenta\(2),
	datac => \b2v_inst|cuenta\(4),
	datad => \b2v_inst|cuenta\(3),
	combout => \b2v_inst|LessThan1~6_combout\);

-- Location: LCCOMB_X60_Y68_N12
\b2v_inst|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~5_combout\ = (((!\b2v_inst|cuenta\(9)) # (!\b2v_inst|cuenta\(8))) # (!\b2v_inst|cuenta\(6))) # (!\b2v_inst|cuenta\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(7),
	datab => \b2v_inst|cuenta\(6),
	datac => \b2v_inst|cuenta\(8),
	datad => \b2v_inst|cuenta\(9),
	combout => \b2v_inst|LessThan1~5_combout\);

-- Location: LCCOMB_X59_Y69_N26
\b2v_inst|LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~8_combout\ = (\b2v_inst|LessThan1~7_combout\ & ((\b2v_inst|LessThan1~5_combout\) # ((!\b2v_inst|cuenta\(5) & \b2v_inst|LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(5),
	datab => \b2v_inst|LessThan1~6_combout\,
	datac => \b2v_inst|LessThan1~5_combout\,
	datad => \b2v_inst|LessThan1~7_combout\,
	combout => \b2v_inst|LessThan1~8_combout\);

-- Location: LCCOMB_X63_Y40_N12
\b2v_inst|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~9_combout\ = (!\b2v_inst|cuenta\(31) & (((\b2v_inst|cuenta\(10)) # (!\b2v_inst|LessThan1~4_combout\)) # (!\b2v_inst|LessThan1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(31),
	datab => \b2v_inst|LessThan1~8_combout\,
	datac => \b2v_inst|LessThan1~4_combout\,
	datad => \b2v_inst|cuenta\(10),
	combout => \b2v_inst|LessThan1~9_combout\);

-- Location: FF_X63_Y40_N13
\b2v_inst|rlj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|LessThan1~9_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|rlj~q\);

-- Location: IOIBUF_X81_Y0_N22
\periodos[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_periodos(1),
	o => \periodos[1]~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\periodos[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_periodos(0),
	o => \periodos[0]~input_o\);

-- Location: LCCOMB_X63_Y40_N28
\b2v_inst1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux1~0_combout\ = (\periodos[1]~input_o\ & \periodos[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \periodos[1]~input_o\,
	datad => \periodos[0]~input_o\,
	combout => \b2v_inst1|Mux1~0_combout\);

-- Location: FF_X63_Y40_N29
\b2v_inst1|MAX_cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|rlj~q\,
	d => \b2v_inst1|Mux1~0_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MAX_cont\(3));

-- Location: LCCOMB_X65_Y40_N6
\b2v_inst1|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux1~2_combout\ = (!\periodos[1]~input_o\ & \periodos[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \periodos[1]~input_o\,
	datac => \periodos[0]~input_o\,
	combout => \b2v_inst1|Mux1~2_combout\);

-- Location: FF_X65_Y40_N7
\b2v_inst1|MAX_cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|rlj~clkctrl_outclk\,
	d => \b2v_inst1|Mux1~2_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|MAX_cont\(1));

-- Location: LCCOMB_X65_Y40_N16
\b2v_inst1|Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Equal9~0_combout\ = (!\b2v_inst1|MAX_cont\(2) & (!\b2v_inst1|MAX_cont\(3) & !\b2v_inst1|MAX_cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MAX_cont\(2),
	datac => \b2v_inst1|MAX_cont\(3),
	datad => \b2v_inst1|MAX_cont\(1),
	combout => \b2v_inst1|Equal9~0_combout\);

-- Location: LCCOMB_X65_Y40_N10
\b2v_inst1|q~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~8_combout\ = (\b2v_inst5|altpll_component|auto_generated|locked~combout\ & !\b2v_inst1|Equal9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|altpll_component|auto_generated|locked~combout\,
	datad => \b2v_inst1|Equal9~0_combout\,
	combout => \b2v_inst1|q~8_combout\);

-- Location: LCCOMB_X65_Y40_N28
\b2v_inst1|q~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~1_combout\ = (!\b2v_inst1|q~8_combout\ & ((\b2v_inst1|Equal9~0_combout\ & ((\b2v_inst|rlj~q\))) # (!\b2v_inst1|Equal9~0_combout\ & (\b2v_inst1|q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|q~1_combout\,
	datab => \b2v_inst1|Equal9~0_combout\,
	datac => \b2v_inst|rlj~q\,
	datad => \b2v_inst1|q~8_combout\,
	combout => \b2v_inst1|q~1_combout\);

-- Location: LCCOMB_X66_Y40_N26
\b2v_inst1|cnt[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|cnt[0]~0_combout\ = !\b2v_inst1|cnt\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|cnt\(0),
	combout => \b2v_inst1|cnt[0]~0_combout\);

-- Location: LCCOMB_X66_Y40_N28
\b2v_inst1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux4~0_combout\ = (\periodos[1]~input_o\) # (\periodos[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \periodos[1]~input_o\,
	datad => \periodos[0]~input_o\,
	combout => \b2v_inst1|Mux4~0_combout\);

-- Location: FF_X66_Y40_N27
\b2v_inst1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|rlj~clkctrl_outclk\,
	d => \b2v_inst1|cnt[0]~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \b2v_inst1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cnt\(0));

-- Location: LCCOMB_X66_Y40_N2
\b2v_inst1|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~3_combout\ = \b2v_inst1|cnt\(3) $ (((\b2v_inst1|cnt\(2) & (\b2v_inst1|cnt\(1) & \b2v_inst1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cnt\(2),
	datab => \b2v_inst1|cnt\(3),
	datac => \b2v_inst1|cnt\(1),
	datad => \b2v_inst1|cnt\(0),
	combout => \b2v_inst1|Add0~3_combout\);

-- Location: LCCOMB_X66_Y40_N6
\b2v_inst1|Equal8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Equal8~3_combout\ = (\b2v_inst1|Equal8~1_combout\ & (\b2v_inst1|Equal8~2_combout\ & (\b2v_inst1|Add0~3_combout\ $ (!\b2v_inst1|MAX_cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Equal8~1_combout\,
	datab => \b2v_inst1|Add0~3_combout\,
	datac => \b2v_inst1|MAX_cont\(3),
	datad => \b2v_inst1|Equal8~2_combout\,
	combout => \b2v_inst1|Equal8~3_combout\);

-- Location: LCCOMB_X66_Y40_N24
\b2v_inst1|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux8~0_combout\ = (!\b2v_inst1|Equal8~3_combout\ & (\b2v_inst1|cnt\(0) $ (\b2v_inst1|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|cnt\(0),
	datac => \b2v_inst1|cnt\(1),
	datad => \b2v_inst1|Equal8~3_combout\,
	combout => \b2v_inst1|Mux8~0_combout\);

-- Location: FF_X66_Y40_N25
\b2v_inst1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|rlj~clkctrl_outclk\,
	d => \b2v_inst1|Mux8~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \b2v_inst1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cnt\(1));

-- Location: LCCOMB_X66_Y40_N8
\b2v_inst1|Equal8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Equal8~2_combout\ = (\b2v_inst1|cnt\(0) & (\b2v_inst1|MAX_cont\(1) $ (\b2v_inst1|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MAX_cont\(1),
	datac => \b2v_inst1|cnt\(1),
	datad => \b2v_inst1|cnt\(0),
	combout => \b2v_inst1|Equal8~2_combout\);

-- Location: LCCOMB_X66_Y40_N30
\b2v_inst1|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux7~0_combout\ = (!\b2v_inst1|Equal8~3_combout\ & (\b2v_inst1|cnt\(2) $ (((\b2v_inst1|cnt\(1) & \b2v_inst1|cnt\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cnt\(1),
	datab => \b2v_inst1|cnt\(0),
	datac => \b2v_inst1|cnt\(2),
	datad => \b2v_inst1|Equal8~3_combout\,
	combout => \b2v_inst1|Mux7~0_combout\);

-- Location: FF_X66_Y40_N31
\b2v_inst1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|rlj~clkctrl_outclk\,
	d => \b2v_inst1|Mux7~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \b2v_inst1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cnt\(2));

-- Location: LCCOMB_X66_Y40_N16
\b2v_inst1|Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Equal8~0_combout\ = \b2v_inst1|MAX_cont\(2) $ (\b2v_inst1|cnt\(2) $ (((\b2v_inst1|cnt\(1) & \b2v_inst1|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MAX_cont\(2),
	datab => \b2v_inst1|cnt\(1),
	datac => \b2v_inst1|cnt\(2),
	datad => \b2v_inst1|cnt\(0),
	combout => \b2v_inst1|Equal8~0_combout\);

-- Location: LCCOMB_X66_Y40_N18
\b2v_inst1|Equal8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Equal8~1_combout\ = (!\b2v_inst1|Equal8~0_combout\ & ((\b2v_inst1|cnt\(4) & (\b2v_inst1|cnt\(5) & \b2v_inst1|Add0~0_combout\)) # (!\b2v_inst1|cnt\(4) & (!\b2v_inst1|cnt\(5) & !\b2v_inst1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cnt\(4),
	datab => \b2v_inst1|cnt\(5),
	datac => \b2v_inst1|Add0~0_combout\,
	datad => \b2v_inst1|Equal8~0_combout\,
	combout => \b2v_inst1|Equal8~1_combout\);

-- Location: LCCOMB_X66_Y40_N0
\b2v_inst1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux6~0_combout\ = (\b2v_inst1|Add0~3_combout\ & (((!\b2v_inst1|Equal8~1_combout\) # (!\b2v_inst1|Equal8~2_combout\)) # (!\b2v_inst1|MAX_cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MAX_cont\(3),
	datab => \b2v_inst1|Equal8~2_combout\,
	datac => \b2v_inst1|Equal8~1_combout\,
	datad => \b2v_inst1|Add0~3_combout\,
	combout => \b2v_inst1|Mux6~0_combout\);

-- Location: FF_X66_Y40_N1
\b2v_inst1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|rlj~clkctrl_outclk\,
	d => \b2v_inst1|Mux6~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \b2v_inst1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cnt\(3));

-- Location: LCCOMB_X66_Y40_N14
\b2v_inst1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~0_combout\ = (\b2v_inst1|cnt\(2) & (\b2v_inst1|cnt\(3) & (\b2v_inst1|cnt\(1) & \b2v_inst1|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cnt\(2),
	datab => \b2v_inst1|cnt\(3),
	datac => \b2v_inst1|cnt\(1),
	datad => \b2v_inst1|cnt\(0),
	combout => \b2v_inst1|Add0~0_combout\);

-- Location: LCCOMB_X66_Y40_N22
\b2v_inst1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~2_combout\ = \b2v_inst1|Add0~0_combout\ $ (\b2v_inst1|cnt\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Add0~0_combout\,
	datac => \b2v_inst1|cnt\(4),
	combout => \b2v_inst1|Add0~2_combout\);

-- Location: FF_X66_Y40_N23
\b2v_inst1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|rlj~clkctrl_outclk\,
	d => \b2v_inst1|Add0~2_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \b2v_inst1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cnt\(4));

-- Location: LCCOMB_X66_Y40_N20
\b2v_inst1|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~1_combout\ = \b2v_inst1|cnt\(5) $ (((\b2v_inst1|Add0~0_combout\ & \b2v_inst1|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Add0~0_combout\,
	datac => \b2v_inst1|cnt\(5),
	datad => \b2v_inst1|cnt\(4),
	combout => \b2v_inst1|Add0~1_combout\);

-- Location: FF_X66_Y40_N21
\b2v_inst1|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|rlj~clkctrl_outclk\,
	d => \b2v_inst1|Add0~1_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	ena => \b2v_inst1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cnt\(5));

-- Location: LCCOMB_X66_Y40_N10
\b2v_inst1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux3~0_combout\ = (\b2v_inst1|cnt\(5)) # ((\b2v_inst1|cnt\(4)) # (\b2v_inst1|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|cnt\(5),
	datac => \b2v_inst1|cnt\(4),
	datad => \b2v_inst1|cnt\(3),
	combout => \b2v_inst1|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y40_N12
\b2v_inst1|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux3~2_combout\ = (\periodos[1]~input_o\ & ((\periodos[0]~input_o\) # ((!\b2v_inst1|cnt\(1))))) # (!\periodos[1]~input_o\ & (\periodos[0]~input_o\ & (!\b2v_inst1|cnt\(0) & !\b2v_inst1|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \periodos[1]~input_o\,
	datab => \periodos[0]~input_o\,
	datac => \b2v_inst1|cnt\(0),
	datad => \b2v_inst1|cnt\(1),
	combout => \b2v_inst1|Mux3~2_combout\);

-- Location: LCCOMB_X65_Y40_N18
\b2v_inst1|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux3~3_combout\ = (\b2v_inst1|cnt\(2) & (!\b2v_inst1|Mux3~2_combout\ & \b2v_inst1|q~2_combout\)) # (!\b2v_inst1|cnt\(2) & (\b2v_inst1|Mux3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cnt\(2),
	datac => \b2v_inst1|Mux3~2_combout\,
	datad => \b2v_inst1|q~2_combout\,
	combout => \b2v_inst1|Mux3~3_combout\);

-- Location: LCCOMB_X65_Y40_N0
\b2v_inst1|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux3~4_combout\ = (\b2v_inst1|Mux3~0_combout\ & (((\b2v_inst1|q~2_combout\)))) # (!\b2v_inst1|Mux3~0_combout\ & ((\b2v_inst1|Mux3~3_combout\) # ((!\b2v_inst1|Mux3~1_combout\ & \b2v_inst1|q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Mux3~1_combout\,
	datab => \b2v_inst1|q~2_combout\,
	datac => \b2v_inst1|Mux3~0_combout\,
	datad => \b2v_inst1|Mux3~3_combout\,
	combout => \b2v_inst1|Mux3~4_combout\);

-- Location: LCCOMB_X65_Y40_N30
\b2v_inst1|q~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~4_combout\ = \b2v_inst1|q~1_combout\ $ (\b2v_inst1|Mux3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|q~1_combout\,
	datad => \b2v_inst1|Mux3~4_combout\,
	combout => \b2v_inst1|q~4_combout\);

-- Location: LCCOMB_X65_Y40_N8
\b2v_inst1|q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~0_combout\ = (\b2v_inst1|Equal9~0_combout\) # (\b2v_inst1|q~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|Equal9~0_combout\,
	datad => \b2v_inst1|q~8_combout\,
	combout => \b2v_inst1|q~0_combout\);

-- Location: FF_X65_Y40_N31
\b2v_inst1|q~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|rlj~q\,
	d => \b2v_inst1|q~4_combout\,
	clrn => \b2v_inst1|ALT_INV_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|q~_emulated_q\);

-- Location: LCCOMB_X65_Y40_N14
\b2v_inst1|q~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~3_combout\ = \b2v_inst1|q~_emulated_q\ $ (\b2v_inst1|q~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|q~_emulated_q\,
	datad => \b2v_inst1|q~1_combout\,
	combout => \b2v_inst1|q~3_combout\);

-- Location: LCCOMB_X65_Y40_N2
\b2v_inst1|q~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~2_combout\ = (!\b2v_inst1|q~8_combout\ & ((\b2v_inst1|Equal9~0_combout\ & (\b2v_inst|rlj~q\)) # (!\b2v_inst1|Equal9~0_combout\ & ((\b2v_inst1|q~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|rlj~q\,
	datab => \b2v_inst1|Equal9~0_combout\,
	datac => \b2v_inst1|q~3_combout\,
	datad => \b2v_inst1|q~8_combout\,
	combout => \b2v_inst1|q~2_combout\);

-- Location: IOIBUF_X52_Y0_N15
\PB_N~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PB_N,
	o => \PB_N~input_o\);

-- Location: LCCOMB_X59_Y62_N30
\b2v_inst11|SHIFT_PB[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst11|SHIFT_PB[3]~0_combout\ = !\PB_N~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PB_N~input_o\,
	combout => \b2v_inst11|SHIFT_PB[3]~0_combout\);

-- Location: FF_X59_Y62_N31
\b2v_inst11|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst6|reloj_out~clkctrl_outclk\,
	d => \b2v_inst11|SHIFT_PB[3]~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|SHIFT_PB\(3));

-- Location: LCCOMB_X59_Y62_N2
\b2v_inst11|SHIFT_PB[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst11|SHIFT_PB[2]~feeder_combout\ = \b2v_inst11|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst11|SHIFT_PB\(3),
	combout => \b2v_inst11|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X59_Y62_N3
\b2v_inst11|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst6|reloj_out~clkctrl_outclk\,
	d => \b2v_inst11|SHIFT_PB[2]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|SHIFT_PB\(2));

-- Location: LCCOMB_X59_Y62_N6
\b2v_inst11|SHIFT_PB[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst11|SHIFT_PB[1]~feeder_combout\ = \b2v_inst11|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|SHIFT_PB\(2),
	combout => \b2v_inst11|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X59_Y62_N7
\b2v_inst11|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst6|reloj_out~clkctrl_outclk\,
	d => \b2v_inst11|SHIFT_PB[1]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|SHIFT_PB\(1));

-- Location: LCCOMB_X59_Y62_N18
\b2v_inst11|SHIFT_PB[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst11|SHIFT_PB[0]~feeder_combout\ = \b2v_inst11|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|SHIFT_PB\(1),
	combout => \b2v_inst11|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X59_Y62_N19
\b2v_inst11|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst6|reloj_out~clkctrl_outclk\,
	d => \b2v_inst11|SHIFT_PB[0]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|SHIFT_PB\(0));

-- Location: LCCOMB_X59_Y62_N16
\b2v_inst11|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst11|Equal0~0_combout\ = (!\b2v_inst11|SHIFT_PB\(1) & (!\b2v_inst11|SHIFT_PB\(2) & (!\b2v_inst11|SHIFT_PB\(3) & !\b2v_inst11|SHIFT_PB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|SHIFT_PB\(1),
	datab => \b2v_inst11|SHIFT_PB\(2),
	datac => \b2v_inst11|SHIFT_PB\(3),
	datad => \b2v_inst11|SHIFT_PB\(0),
	combout => \b2v_inst11|Equal0~0_combout\);

-- Location: FF_X59_Y62_N17
\b2v_inst11|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst6|reloj_out~clkctrl_outclk\,
	d => \b2v_inst11|Equal0~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|PB_SIN_REBOTE~q\);

-- Location: LCCOMB_X60_Y68_N20
\b2v_inst12|SALIDA_PB~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst12|SALIDA_PB~0_combout\ = !\b2v_inst12|SALIDA_PB~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst12|SALIDA_PB~q\,
	combout => \b2v_inst12|SALIDA_PB~0_combout\);

-- Location: FF_X60_Y68_N21
\b2v_inst12|SALIDA_PB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst11|PB_SIN_REBOTE~q\,
	d => \b2v_inst12|SALIDA_PB~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|SALIDA_PB~q\);

-- Location: CLKCTRL_G13
\b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: FF_X59_Y67_N25
\b2v_inst|cuenta_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~0_combout\,
	sload => VCC,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(0));

-- Location: FF_X61_Y64_N3
\b2v_inst|cuenta_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~2_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(1));

-- Location: FF_X61_Y64_N5
\b2v_inst|cuenta_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~4_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(2));

-- Location: FF_X61_Y64_N7
\b2v_inst|cuenta_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~6_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(3));

-- Location: FF_X61_Y64_N9
\b2v_inst|cuenta_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~8_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(4));

-- Location: FF_X61_Y64_N11
\b2v_inst|cuenta_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~10_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(5));

-- Location: LCCOMB_X60_Y68_N14
\b2v_inst|cuenta_o[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta_o[6]~feeder_combout\ = \b2v_inst|Add4~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add4~12_combout\,
	combout => \b2v_inst|cuenta_o[6]~feeder_combout\);

-- Location: FF_X60_Y68_N15
\b2v_inst|cuenta_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|cuenta_o[6]~feeder_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(6));

-- Location: LCCOMB_X62_Y68_N16
\b2v_inst|cuenta_o[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta_o[7]~feeder_combout\ = \b2v_inst|Add4~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add4~14_combout\,
	combout => \b2v_inst|cuenta_o[7]~feeder_combout\);

-- Location: FF_X62_Y68_N17
\b2v_inst|cuenta_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|cuenta_o[7]~feeder_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(7));

-- Location: FF_X61_Y64_N17
\b2v_inst|cuenta_o[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~16_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(8));

-- Location: FF_X61_Y64_N1
\b2v_inst|cuenta_o[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~18_combout\,
	sload => VCC,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(9));

-- Location: FF_X61_Y64_N21
\b2v_inst|cuenta_o[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~20_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(10));

-- Location: LCCOMB_X62_Y68_N12
\b2v_inst8|pseudo_regLSB[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|pseudo_regLSB[0]~8_combout\ = !\b2v_inst8|pseudo_regLSB\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|pseudo_regLSB\(7),
	combout => \b2v_inst8|pseudo_regLSB[0]~8_combout\);

-- Location: FF_X62_Y68_N13
\b2v_inst8|pseudo_regLSB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst8|pseudo_regLSB[0]~8_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|pseudo_regLSB\(0));

-- Location: LCCOMB_X62_Y68_N14
\b2v_inst8|pseudo_regLSB[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|pseudo_regLSB[1]~7_combout\ = !\b2v_inst8|pseudo_regLSB\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|pseudo_regLSB\(0),
	combout => \b2v_inst8|pseudo_regLSB[1]~7_combout\);

-- Location: FF_X62_Y68_N15
\b2v_inst8|pseudo_regLSB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst8|pseudo_regLSB[1]~7_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|pseudo_regLSB\(1));

-- Location: LCCOMB_X62_Y68_N4
\b2v_inst8|pseudo_regLSB~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|pseudo_regLSB~2_combout\ = \b2v_inst8|pseudo_regLSB\(1) $ (\b2v_inst8|pseudo_regLSB\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|pseudo_regLSB\(1),
	datad => \b2v_inst8|pseudo_regLSB\(7),
	combout => \b2v_inst8|pseudo_regLSB~2_combout\);

-- Location: FF_X62_Y68_N5
\b2v_inst8|pseudo_regLSB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst8|pseudo_regLSB~2_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|pseudo_regLSB\(2));

-- Location: LCCOMB_X62_Y68_N22
\b2v_inst8|pseudo_regLSB~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|pseudo_regLSB~1_combout\ = \b2v_inst8|pseudo_regLSB\(2) $ (\b2v_inst8|pseudo_regLSB\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|pseudo_regLSB\(2),
	datad => \b2v_inst8|pseudo_regLSB\(7),
	combout => \b2v_inst8|pseudo_regLSB~1_combout\);

-- Location: FF_X62_Y68_N23
\b2v_inst8|pseudo_regLSB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst8|pseudo_regLSB~1_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|pseudo_regLSB\(3));

-- Location: LCCOMB_X62_Y68_N0
\b2v_inst8|pseudo_regLSB~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|pseudo_regLSB~0_combout\ = \b2v_inst8|pseudo_regLSB\(3) $ (\b2v_inst8|pseudo_regLSB\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|pseudo_regLSB\(3),
	datad => \b2v_inst8|pseudo_regLSB\(7),
	combout => \b2v_inst8|pseudo_regLSB~0_combout\);

-- Location: FF_X62_Y68_N1
\b2v_inst8|pseudo_regLSB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst8|pseudo_regLSB~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|pseudo_regLSB\(4));

-- Location: LCCOMB_X62_Y68_N2
\b2v_inst8|pseudo_regLSB[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|pseudo_regLSB[5]~5_combout\ = !\b2v_inst8|pseudo_regLSB\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|pseudo_regLSB\(4),
	combout => \b2v_inst8|pseudo_regLSB[5]~5_combout\);

-- Location: FF_X62_Y68_N3
\b2v_inst8|pseudo_regLSB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst8|pseudo_regLSB[5]~5_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|pseudo_regLSB\(5));

-- Location: LCCOMB_X62_Y68_N6
\b2v_inst8|pseudo_regLSB[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|pseudo_regLSB[6]~4_combout\ = !\b2v_inst8|pseudo_regLSB\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|pseudo_regLSB\(5),
	combout => \b2v_inst8|pseudo_regLSB[6]~4_combout\);

-- Location: FF_X62_Y68_N7
\b2v_inst8|pseudo_regLSB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst8|pseudo_regLSB[6]~4_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|pseudo_regLSB\(6));

-- Location: LCCOMB_X62_Y68_N10
\b2v_inst8|pseudo_regLSB[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|pseudo_regLSB[7]~3_combout\ = !\b2v_inst8|pseudo_regLSB\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|pseudo_regLSB\(6),
	combout => \b2v_inst8|pseudo_regLSB[7]~3_combout\);

-- Location: FF_X62_Y68_N11
\b2v_inst8|pseudo_regLSB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst8|pseudo_regLSB[7]~3_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|pseudo_regLSB\(7));

-- Location: LCCOMB_X62_Y68_N18
\b2v_inst4|data_out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|data_out[0]~0_combout\ = (\b2v_inst12|SALIDA_PB~q\ & (\data1_in[0]~input_o\)) # (!\b2v_inst12|SALIDA_PB~q\ & ((\b2v_inst8|pseudo_regLSB\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data1_in[0]~input_o\,
	datac => \b2v_inst12|SALIDA_PB~q\,
	datad => \b2v_inst8|pseudo_regLSB\(7),
	combout => \b2v_inst4|data_out[0]~0_combout\);

-- Location: FF_X62_Y68_N19
\b2v_inst|dato_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst4|data_out[0]~0_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dato_o\(0));

-- Location: IOIBUF_X115_Y37_N1
\data1_in[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data1_in(1),
	o => \data1_in[1]~input_o\);

-- Location: LCCOMB_X59_Y68_N10
\b2v_inst8|pseudo_regMSB[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|pseudo_regMSB[0]~4_combout\ = !\b2v_inst8|pseudo_regMSB\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|pseudo_regMSB\(7),
	combout => \b2v_inst8|pseudo_regMSB[0]~4_combout\);

-- Location: FF_X59_Y68_N11
\b2v_inst8|pseudo_regMSB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst8|pseudo_regMSB[0]~4_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|pseudo_regMSB\(0));

-- Location: LCCOMB_X59_Y68_N4
\b2v_inst8|pseudo_regMSB[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|pseudo_regMSB[1]~feeder_combout\ = \b2v_inst8|pseudo_regMSB\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|pseudo_regMSB\(0),
	combout => \b2v_inst8|pseudo_regMSB[1]~feeder_combout\);

-- Location: FF_X59_Y68_N5
\b2v_inst8|pseudo_regMSB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst8|pseudo_regMSB[1]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|pseudo_regMSB\(1));

-- Location: LCCOMB_X59_Y68_N26
\b2v_inst8|pseudo_regMSB~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|pseudo_regMSB~2_combout\ = \b2v_inst8|pseudo_regMSB\(1) $ (!\b2v_inst8|pseudo_regMSB\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|pseudo_regMSB\(1),
	datad => \b2v_inst8|pseudo_regMSB\(7),
	combout => \b2v_inst8|pseudo_regMSB~2_combout\);

-- Location: FF_X59_Y68_N27
\b2v_inst8|pseudo_regMSB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst8|pseudo_regMSB~2_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|pseudo_regMSB\(2));

-- Location: LCCOMB_X59_Y68_N24
\b2v_inst8|pseudo_regMSB~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|pseudo_regMSB~1_combout\ = \b2v_inst8|pseudo_regMSB\(2) $ (!\b2v_inst8|pseudo_regMSB\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|pseudo_regMSB\(2),
	datad => \b2v_inst8|pseudo_regMSB\(7),
	combout => \b2v_inst8|pseudo_regMSB~1_combout\);

-- Location: FF_X59_Y68_N25
\b2v_inst8|pseudo_regMSB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst8|pseudo_regMSB~1_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|pseudo_regMSB\(3));

-- Location: LCCOMB_X59_Y68_N6
\b2v_inst8|pseudo_regMSB~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|pseudo_regMSB~0_combout\ = \b2v_inst8|pseudo_regMSB\(7) $ (\b2v_inst8|pseudo_regMSB\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|pseudo_regMSB\(7),
	datad => \b2v_inst8|pseudo_regMSB\(3),
	combout => \b2v_inst8|pseudo_regMSB~0_combout\);

-- Location: FF_X59_Y68_N7
\b2v_inst8|pseudo_regMSB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst8|pseudo_regMSB~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|pseudo_regMSB\(4));

-- Location: LCCOMB_X59_Y68_N16
\b2v_inst8|pseudo_regMSB[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|pseudo_regMSB[5]~feeder_combout\ = \b2v_inst8|pseudo_regMSB\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|pseudo_regMSB\(4),
	combout => \b2v_inst8|pseudo_regMSB[5]~feeder_combout\);

-- Location: FF_X59_Y68_N17
\b2v_inst8|pseudo_regMSB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst8|pseudo_regMSB[5]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|pseudo_regMSB\(5));

-- Location: LCCOMB_X59_Y68_N2
\b2v_inst8|pseudo_regMSB[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|pseudo_regMSB[6]~feeder_combout\ = \b2v_inst8|pseudo_regMSB\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|pseudo_regMSB\(5),
	combout => \b2v_inst8|pseudo_regMSB[6]~feeder_combout\);

-- Location: FF_X59_Y68_N3
\b2v_inst8|pseudo_regMSB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst8|pseudo_regMSB[6]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|pseudo_regMSB\(6));

-- Location: LCCOMB_X59_Y68_N8
\b2v_inst8|pseudo_regMSB[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst8|pseudo_regMSB[7]~feeder_combout\ = \b2v_inst8|pseudo_regMSB\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|pseudo_regMSB\(6),
	combout => \b2v_inst8|pseudo_regMSB[7]~feeder_combout\);

-- Location: FF_X59_Y68_N9
\b2v_inst8|pseudo_regMSB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst8|pseudo_regMSB[7]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|pseudo_regMSB\(7));

-- Location: LCCOMB_X60_Y68_N16
\b2v_inst4|data_out[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|data_out[1]~1_combout\ = (\b2v_inst12|SALIDA_PB~q\ & (\data1_in[1]~input_o\)) # (!\b2v_inst12|SALIDA_PB~q\ & ((\b2v_inst8|pseudo_regMSB\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst12|SALIDA_PB~q\,
	datac => \data1_in[1]~input_o\,
	datad => \b2v_inst8|pseudo_regMSB\(7),
	combout => \b2v_inst4|data_out[1]~1_combout\);

-- Location: FF_X60_Y68_N17
\b2v_inst|dato_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst4|data_out[1]~1_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dato_o\(1));

-- Location: LCCOMB_X61_Y68_N0
\b2v_inst|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~0_combout\ = (\b2v_inst|indice~13_combout\ & (\F_in[0]~input_o\ $ (GND))) # (!\b2v_inst|indice~13_combout\ & (!\F_in[0]~input_o\ & VCC))
-- \b2v_inst|Add3~1\ = CARRY((\b2v_inst|indice~13_combout\ & !\F_in[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \F_in[0]~input_o\,
	datad => VCC,
	combout => \b2v_inst|Add3~0_combout\,
	cout => \b2v_inst|Add3~1\);

-- Location: LCCOMB_X60_Y68_N26
\b2v_inst|indice_o[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice_o[0]~feeder_combout\ = \b2v_inst|Add3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Add3~0_combout\,
	combout => \b2v_inst|indice_o[0]~feeder_combout\);

-- Location: FF_X60_Y68_N27
\b2v_inst|indice_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|indice_o[0]~feeder_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(0));

-- Location: LCCOMB_X61_Y68_N2
\b2v_inst|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~2_combout\ = (\b2v_inst|indice~14_combout\ & ((\b2v_inst|Add0~0_combout\ & (\b2v_inst|Add3~1\ & VCC)) # (!\b2v_inst|Add0~0_combout\ & (!\b2v_inst|Add3~1\)))) # (!\b2v_inst|indice~14_combout\ & ((\b2v_inst|Add0~0_combout\ & 
-- (!\b2v_inst|Add3~1\)) # (!\b2v_inst|Add0~0_combout\ & ((\b2v_inst|Add3~1\) # (GND)))))
-- \b2v_inst|Add3~3\ = CARRY((\b2v_inst|indice~14_combout\ & (!\b2v_inst|Add0~0_combout\ & !\b2v_inst|Add3~1\)) # (!\b2v_inst|indice~14_combout\ & ((!\b2v_inst|Add3~1\) # (!\b2v_inst|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|Add0~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~1\,
	combout => \b2v_inst|Add3~2_combout\,
	cout => \b2v_inst|Add3~3\);

-- Location: LCCOMB_X62_Y68_N8
\b2v_inst|indice_o[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice_o[1]~feeder_combout\ = \b2v_inst|Add3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|indice_o[1]~feeder_combout\);

-- Location: FF_X62_Y68_N9
\b2v_inst|indice_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|indice_o[1]~feeder_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(1));

-- Location: FF_X61_Y65_N19
\b2v_inst|indice[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~4_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(2));

-- Location: LCCOMB_X62_Y65_N10
\b2v_inst|indice~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~19_combout\ = (\b2v_inst|LessThan0~2_combout\ & !\b2v_inst|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|indice~19_combout\);

-- Location: LCCOMB_X61_Y62_N8
\b2v_inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~2_combout\ = \F_in[3]~input_o\ $ (((\F_in[2]~input_o\ & (\F_in[1]~input_o\ & \F_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_in[2]~input_o\,
	datab => \F_in[3]~input_o\,
	datac => \F_in[1]~input_o\,
	datad => \F_in[0]~input_o\,
	combout => \b2v_inst|Add0~2_combout\);

-- Location: LCCOMB_X61_Y68_N4
\b2v_inst|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~4_combout\ = ((\b2v_inst|Add0~1_combout\ $ (\b2v_inst|indice~15_combout\ $ (!\b2v_inst|Add3~3\)))) # (GND)
-- \b2v_inst|Add3~5\ = CARRY((\b2v_inst|Add0~1_combout\ & ((\b2v_inst|indice~15_combout\) # (!\b2v_inst|Add3~3\))) # (!\b2v_inst|Add0~1_combout\ & (\b2v_inst|indice~15_combout\ & !\b2v_inst|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~1_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~3\,
	combout => \b2v_inst|Add3~4_combout\,
	cout => \b2v_inst|Add3~5\);

-- Location: LCCOMB_X61_Y68_N6
\b2v_inst|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~6_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|Add0~2_combout\ & (\b2v_inst|Add3~5\ & VCC)) # (!\b2v_inst|Add0~2_combout\ & (!\b2v_inst|Add3~5\)))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|Add0~2_combout\ & 
-- (!\b2v_inst|Add3~5\)) # (!\b2v_inst|Add0~2_combout\ & ((\b2v_inst|Add3~5\) # (GND)))))
-- \b2v_inst|Add3~7\ = CARRY((\b2v_inst|indice~16_combout\ & (!\b2v_inst|Add0~2_combout\ & !\b2v_inst|Add3~5\)) # (!\b2v_inst|indice~16_combout\ & ((!\b2v_inst|Add3~5\) # (!\b2v_inst|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|Add0~2_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~5\,
	combout => \b2v_inst|Add3~6_combout\,
	cout => \b2v_inst|Add3~7\);

-- Location: LCCOMB_X61_Y68_N8
\b2v_inst|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~8_combout\ = ((\b2v_inst|Add0~4_combout\ $ (\b2v_inst|indice~17_combout\ $ (!\b2v_inst|Add3~7\)))) # (GND)
-- \b2v_inst|Add3~9\ = CARRY((\b2v_inst|Add0~4_combout\ & ((\b2v_inst|indice~17_combout\) # (!\b2v_inst|Add3~7\))) # (!\b2v_inst|Add0~4_combout\ & (\b2v_inst|indice~17_combout\ & !\b2v_inst|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~7\,
	combout => \b2v_inst|Add3~8_combout\,
	cout => \b2v_inst|Add3~9\);

-- Location: FF_X61_Y65_N5
\b2v_inst|indice[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~8_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(4));

-- Location: LCCOMB_X61_Y65_N4
\b2v_inst|indice~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~17_combout\ = (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|indice\(4) & \b2v_inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datac => \b2v_inst|indice\(4),
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|indice~17_combout\);

-- Location: LCCOMB_X61_Y68_N10
\b2v_inst|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~10_combout\ = (\b2v_inst|Add0~5_combout\ & ((\b2v_inst|indice~18_combout\ & (\b2v_inst|Add3~9\ & VCC)) # (!\b2v_inst|indice~18_combout\ & (!\b2v_inst|Add3~9\)))) # (!\b2v_inst|Add0~5_combout\ & ((\b2v_inst|indice~18_combout\ & 
-- (!\b2v_inst|Add3~9\)) # (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|Add3~9\) # (GND)))))
-- \b2v_inst|Add3~11\ = CARRY((\b2v_inst|Add0~5_combout\ & (!\b2v_inst|indice~18_combout\ & !\b2v_inst|Add3~9\)) # (!\b2v_inst|Add0~5_combout\ & ((!\b2v_inst|Add3~9\) # (!\b2v_inst|indice~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~5_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~9\,
	combout => \b2v_inst|Add3~10_combout\,
	cout => \b2v_inst|Add3~11\);

-- Location: FF_X61_Y65_N3
\b2v_inst|indice[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~10_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(5));

-- Location: LCCOMB_X61_Y65_N2
\b2v_inst|indice~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~18_combout\ = (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|indice\(5) & \b2v_inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datac => \b2v_inst|indice\(5),
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|indice~18_combout\);

-- Location: LCCOMB_X61_Y68_N12
\b2v_inst|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~12_combout\ = (\b2v_inst|Add3~11\ & (\b2v_inst|indice~19_combout\ & (\b2v_inst|indice\(6) & VCC))) # (!\b2v_inst|Add3~11\ & ((((\b2v_inst|indice~19_combout\ & \b2v_inst|indice\(6))))))
-- \b2v_inst|Add3~13\ = CARRY((\b2v_inst|indice~19_combout\ & (\b2v_inst|indice\(6) & !\b2v_inst|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|indice\(6),
	datad => VCC,
	cin => \b2v_inst|Add3~11\,
	combout => \b2v_inst|Add3~12_combout\,
	cout => \b2v_inst|Add3~13\);

-- Location: FF_X61_Y65_N1
\b2v_inst|indice[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~12_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(6));

-- Location: LCCOMB_X61_Y68_N14
\b2v_inst|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~14_combout\ = (\b2v_inst|indice~21_combout\ & (!\b2v_inst|Add3~13\)) # (!\b2v_inst|indice~21_combout\ & ((\b2v_inst|Add3~13\) # (GND)))
-- \b2v_inst|Add3~15\ = CARRY((!\b2v_inst|Add3~13\) # (!\b2v_inst|indice~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~13\,
	combout => \b2v_inst|Add3~14_combout\,
	cout => \b2v_inst|Add3~15\);

-- Location: LCCOMB_X61_Y68_N16
\b2v_inst|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~16_combout\ = (\b2v_inst|indice~24_combout\ & (\b2v_inst|Add3~15\ $ (GND))) # (!\b2v_inst|indice~24_combout\ & (!\b2v_inst|Add3~15\ & VCC))
-- \b2v_inst|Add3~17\ = CARRY((\b2v_inst|indice~24_combout\ & !\b2v_inst|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~24_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~15\,
	combout => \b2v_inst|Add3~16_combout\,
	cout => \b2v_inst|Add3~17\);

-- Location: LCCOMB_X61_Y68_N18
\b2v_inst|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~18_combout\ = (\b2v_inst|indice~27_combout\ & (!\b2v_inst|Add3~17\)) # (!\b2v_inst|indice~27_combout\ & ((\b2v_inst|Add3~17\) # (GND)))
-- \b2v_inst|Add3~19\ = CARRY((!\b2v_inst|Add3~17\) # (!\b2v_inst|indice~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~27_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~17\,
	combout => \b2v_inst|Add3~18_combout\,
	cout => \b2v_inst|Add3~19\);

-- Location: LCCOMB_X61_Y68_N20
\b2v_inst|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~20_combout\ = (\b2v_inst|Add3~19\ & (\b2v_inst|indice~19_combout\ & (\b2v_inst|indice\(10) & VCC))) # (!\b2v_inst|Add3~19\ & ((((\b2v_inst|indice~19_combout\ & \b2v_inst|indice\(10))))))
-- \b2v_inst|Add3~21\ = CARRY((\b2v_inst|indice~19_combout\ & (\b2v_inst|indice\(10) & !\b2v_inst|Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|indice\(10),
	datad => VCC,
	cin => \b2v_inst|Add3~19\,
	combout => \b2v_inst|Add3~20_combout\,
	cout => \b2v_inst|Add3~21\);

-- Location: FF_X61_Y68_N21
\b2v_inst|indice[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~20_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(10));

-- Location: LCCOMB_X61_Y68_N22
\b2v_inst|Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~22_combout\ = (\b2v_inst|Add3~21\ & (((!\b2v_inst|indice~19_combout\)) # (!\b2v_inst|indice\(11)))) # (!\b2v_inst|Add3~21\ & (((\b2v_inst|indice\(11) & \b2v_inst|indice~19_combout\)) # (GND)))
-- \b2v_inst|Add3~23\ = CARRY(((!\b2v_inst|Add3~21\) # (!\b2v_inst|indice~19_combout\)) # (!\b2v_inst|indice\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(11),
	datab => \b2v_inst|indice~19_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~21\,
	combout => \b2v_inst|Add3~22_combout\,
	cout => \b2v_inst|Add3~23\);

-- Location: LCCOMB_X61_Y68_N24
\b2v_inst|Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~24_combout\ = (\b2v_inst|Add3~23\ & (\b2v_inst|indice~19_combout\ & (\b2v_inst|indice\(12) & VCC))) # (!\b2v_inst|Add3~23\ & ((((\b2v_inst|indice~19_combout\ & \b2v_inst|indice\(12))))))
-- \b2v_inst|Add3~25\ = CARRY((\b2v_inst|indice~19_combout\ & (\b2v_inst|indice\(12) & !\b2v_inst|Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|indice\(12),
	datad => VCC,
	cin => \b2v_inst|Add3~23\,
	combout => \b2v_inst|Add3~24_combout\,
	cout => \b2v_inst|Add3~25\);

-- Location: FF_X61_Y68_N25
\b2v_inst|indice[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~24_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(12));

-- Location: LCCOMB_X61_Y68_N26
\b2v_inst|Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~26_combout\ = (\b2v_inst|Add3~25\ & (((!\b2v_inst|indice~19_combout\)) # (!\b2v_inst|indice\(13)))) # (!\b2v_inst|Add3~25\ & (((\b2v_inst|indice\(13) & \b2v_inst|indice~19_combout\)) # (GND)))
-- \b2v_inst|Add3~27\ = CARRY(((!\b2v_inst|Add3~25\) # (!\b2v_inst|indice~19_combout\)) # (!\b2v_inst|indice\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(13),
	datab => \b2v_inst|indice~19_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~25\,
	combout => \b2v_inst|Add3~26_combout\,
	cout => \b2v_inst|Add3~27\);

-- Location: LCCOMB_X61_Y68_N28
\b2v_inst|Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~28_combout\ = (\b2v_inst|Add3~27\ & (\b2v_inst|indice~19_combout\ & (\b2v_inst|indice\(14) & VCC))) # (!\b2v_inst|Add3~27\ & ((((\b2v_inst|indice~19_combout\ & \b2v_inst|indice\(14))))))
-- \b2v_inst|Add3~29\ = CARRY((\b2v_inst|indice~19_combout\ & (\b2v_inst|indice\(14) & !\b2v_inst|Add3~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|indice\(14),
	datad => VCC,
	cin => \b2v_inst|Add3~27\,
	combout => \b2v_inst|Add3~28_combout\,
	cout => \b2v_inst|Add3~29\);

-- Location: FF_X61_Y68_N29
\b2v_inst|indice[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~28_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(14));

-- Location: LCCOMB_X61_Y67_N0
\b2v_inst|Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~32_combout\ = (\b2v_inst|Add3~31\ & (\b2v_inst|indice~19_combout\ & (\b2v_inst|indice\(16) & VCC))) # (!\b2v_inst|Add3~31\ & ((((\b2v_inst|indice~19_combout\ & \b2v_inst|indice\(16))))))
-- \b2v_inst|Add3~33\ = CARRY((\b2v_inst|indice~19_combout\ & (\b2v_inst|indice\(16) & !\b2v_inst|Add3~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|indice\(16),
	datad => VCC,
	cin => \b2v_inst|Add3~31\,
	combout => \b2v_inst|Add3~32_combout\,
	cout => \b2v_inst|Add3~33\);

-- Location: FF_X61_Y67_N1
\b2v_inst|indice[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~32_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(16));

-- Location: LCCOMB_X61_Y67_N2
\b2v_inst|Add3~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~34_combout\ = (\b2v_inst|Add3~33\ & (((!\b2v_inst|indice\(17))) # (!\b2v_inst|indice~19_combout\))) # (!\b2v_inst|Add3~33\ & (((\b2v_inst|indice~19_combout\ & \b2v_inst|indice\(17))) # (GND)))
-- \b2v_inst|Add3~35\ = CARRY(((!\b2v_inst|Add3~33\) # (!\b2v_inst|indice\(17))) # (!\b2v_inst|indice~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|indice\(17),
	datad => VCC,
	cin => \b2v_inst|Add3~33\,
	combout => \b2v_inst|Add3~34_combout\,
	cout => \b2v_inst|Add3~35\);

-- Location: FF_X61_Y67_N3
\b2v_inst|indice[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~34_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(17));

-- Location: LCCOMB_X61_Y67_N4
\b2v_inst|Add3~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~36_combout\ = (\b2v_inst|Add3~35\ & (\b2v_inst|indice~19_combout\ & (\b2v_inst|indice\(18) & VCC))) # (!\b2v_inst|Add3~35\ & ((((\b2v_inst|indice~19_combout\ & \b2v_inst|indice\(18))))))
-- \b2v_inst|Add3~37\ = CARRY((\b2v_inst|indice~19_combout\ & (\b2v_inst|indice\(18) & !\b2v_inst|Add3~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|indice\(18),
	datad => VCC,
	cin => \b2v_inst|Add3~35\,
	combout => \b2v_inst|Add3~36_combout\,
	cout => \b2v_inst|Add3~37\);

-- Location: FF_X61_Y67_N5
\b2v_inst|indice[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~36_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(18));

-- Location: LCCOMB_X61_Y67_N6
\b2v_inst|Add3~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~38_combout\ = (\b2v_inst|Add3~37\ & (((!\b2v_inst|indice\(19))) # (!\b2v_inst|indice~19_combout\))) # (!\b2v_inst|Add3~37\ & (((\b2v_inst|indice~19_combout\ & \b2v_inst|indice\(19))) # (GND)))
-- \b2v_inst|Add3~39\ = CARRY(((!\b2v_inst|Add3~37\) # (!\b2v_inst|indice\(19))) # (!\b2v_inst|indice~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|indice\(19),
	datad => VCC,
	cin => \b2v_inst|Add3~37\,
	combout => \b2v_inst|Add3~38_combout\,
	cout => \b2v_inst|Add3~39\);

-- Location: FF_X61_Y67_N7
\b2v_inst|indice[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~38_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(19));

-- Location: LCCOMB_X61_Y67_N8
\b2v_inst|Add3~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~40_combout\ = (\b2v_inst|Add3~39\ & (\b2v_inst|indice~19_combout\ & (\b2v_inst|indice\(20) & VCC))) # (!\b2v_inst|Add3~39\ & ((((\b2v_inst|indice~19_combout\ & \b2v_inst|indice\(20))))))
-- \b2v_inst|Add3~41\ = CARRY((\b2v_inst|indice~19_combout\ & (\b2v_inst|indice\(20) & !\b2v_inst|Add3~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|indice\(20),
	datad => VCC,
	cin => \b2v_inst|Add3~39\,
	combout => \b2v_inst|Add3~40_combout\,
	cout => \b2v_inst|Add3~41\);

-- Location: FF_X61_Y67_N9
\b2v_inst|indice[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~40_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(20));

-- Location: LCCOMB_X61_Y67_N10
\b2v_inst|Add3~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~42_combout\ = (\b2v_inst|Add3~41\ & (((!\b2v_inst|indice\(21))) # (!\b2v_inst|indice~19_combout\))) # (!\b2v_inst|Add3~41\ & (((\b2v_inst|indice~19_combout\ & \b2v_inst|indice\(21))) # (GND)))
-- \b2v_inst|Add3~43\ = CARRY(((!\b2v_inst|Add3~41\) # (!\b2v_inst|indice\(21))) # (!\b2v_inst|indice~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|indice\(21),
	datad => VCC,
	cin => \b2v_inst|Add3~41\,
	combout => \b2v_inst|Add3~42_combout\,
	cout => \b2v_inst|Add3~43\);

-- Location: FF_X61_Y67_N11
\b2v_inst|indice[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~42_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(21));

-- Location: LCCOMB_X61_Y67_N12
\b2v_inst|Add3~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~44_combout\ = (\b2v_inst|Add3~43\ & (\b2v_inst|indice~19_combout\ & (\b2v_inst|indice\(22) & VCC))) # (!\b2v_inst|Add3~43\ & ((((\b2v_inst|indice~19_combout\ & \b2v_inst|indice\(22))))))
-- \b2v_inst|Add3~45\ = CARRY((\b2v_inst|indice~19_combout\ & (\b2v_inst|indice\(22) & !\b2v_inst|Add3~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|indice\(22),
	datad => VCC,
	cin => \b2v_inst|Add3~43\,
	combout => \b2v_inst|Add3~44_combout\,
	cout => \b2v_inst|Add3~45\);

-- Location: FF_X61_Y67_N13
\b2v_inst|indice[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~44_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(22));

-- Location: LCCOMB_X61_Y67_N14
\b2v_inst|Add3~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~46_combout\ = (\b2v_inst|Add3~45\ & (((!\b2v_inst|indice\(23))) # (!\b2v_inst|indice~19_combout\))) # (!\b2v_inst|Add3~45\ & (((\b2v_inst|indice~19_combout\ & \b2v_inst|indice\(23))) # (GND)))
-- \b2v_inst|Add3~47\ = CARRY(((!\b2v_inst|Add3~45\) # (!\b2v_inst|indice\(23))) # (!\b2v_inst|indice~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|indice\(23),
	datad => VCC,
	cin => \b2v_inst|Add3~45\,
	combout => \b2v_inst|Add3~46_combout\,
	cout => \b2v_inst|Add3~47\);

-- Location: FF_X61_Y67_N15
\b2v_inst|indice[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~46_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(23));

-- Location: LCCOMB_X61_Y67_N18
\b2v_inst|Add3~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~50_combout\ = (\b2v_inst|Add3~49\ & (((!\b2v_inst|indice~19_combout\)) # (!\b2v_inst|indice\(25)))) # (!\b2v_inst|Add3~49\ & (((\b2v_inst|indice\(25) & \b2v_inst|indice~19_combout\)) # (GND)))
-- \b2v_inst|Add3~51\ = CARRY(((!\b2v_inst|Add3~49\) # (!\b2v_inst|indice~19_combout\)) # (!\b2v_inst|indice\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(25),
	datab => \b2v_inst|indice~19_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~49\,
	combout => \b2v_inst|Add3~50_combout\,
	cout => \b2v_inst|Add3~51\);

-- Location: LCCOMB_X61_Y67_N28
\b2v_inst|Add3~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~60_combout\ = (\b2v_inst|Add3~59\ & (\b2v_inst|indice\(30) & (\b2v_inst|indice~19_combout\ & VCC))) # (!\b2v_inst|Add3~59\ & ((((\b2v_inst|indice\(30) & \b2v_inst|indice~19_combout\)))))
-- \b2v_inst|Add3~61\ = CARRY((\b2v_inst|indice\(30) & (\b2v_inst|indice~19_combout\ & !\b2v_inst|Add3~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(30),
	datab => \b2v_inst|indice~19_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~59\,
	combout => \b2v_inst|Add3~60_combout\,
	cout => \b2v_inst|Add3~61\);

-- Location: LCCOMB_X61_Y67_N30
\b2v_inst|Add3~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~62_combout\ = \b2v_inst|Add3~61\ $ (((\b2v_inst|indice\(31) & !\b2v_inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(31),
	datad => \b2v_inst|LessThan2~0_combout\,
	cin => \b2v_inst|Add3~61\,
	combout => \b2v_inst|Add3~62_combout\);

-- Location: FF_X61_Y67_N31
\b2v_inst|indice[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~62_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(31));

-- Location: FF_X61_Y67_N19
\b2v_inst|indice[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~50_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(25));

-- Location: LCCOMB_X61_Y65_N8
\b2v_inst|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan6~3_combout\ = (!\b2v_inst|indice\(24) & (!\b2v_inst|indice\(22) & (!\b2v_inst|indice\(23) & !\b2v_inst|indice\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(24),
	datab => \b2v_inst|indice\(22),
	datac => \b2v_inst|indice\(23),
	datad => \b2v_inst|indice\(25),
	combout => \b2v_inst|LessThan6~3_combout\);

-- Location: FF_X61_Y67_N29
\b2v_inst|indice[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~60_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(30));

-- Location: LCCOMB_X62_Y65_N14
\b2v_inst|LessThan6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan6~4_combout\ = (!\b2v_inst|indice\(15) & (!\b2v_inst|indice\(14) & (!\b2v_inst|indice\(16) & !\b2v_inst|indice\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(15),
	datab => \b2v_inst|indice\(14),
	datac => \b2v_inst|indice\(16),
	datad => \b2v_inst|indice\(17),
	combout => \b2v_inst|LessThan6~4_combout\);

-- Location: LCCOMB_X62_Y67_N8
\b2v_inst|LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan6~5_combout\ = (!\b2v_inst|indice\(21) & (!\b2v_inst|indice\(19) & (!\b2v_inst|indice\(18) & !\b2v_inst|indice\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(21),
	datab => \b2v_inst|indice\(19),
	datac => \b2v_inst|indice\(18),
	datad => \b2v_inst|indice\(20),
	combout => \b2v_inst|LessThan6~5_combout\);

-- Location: LCCOMB_X61_Y65_N10
\b2v_inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~1_combout\ = (!\b2v_inst|LessThan0~0_combout\ & (!\b2v_inst|indice\(30) & (\b2v_inst|LessThan6~4_combout\ & \b2v_inst|LessThan6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~0_combout\,
	datab => \b2v_inst|indice\(30),
	datac => \b2v_inst|LessThan6~4_combout\,
	datad => \b2v_inst|LessThan6~5_combout\,
	combout => \b2v_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X61_Y65_N20
\b2v_inst|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~2_combout\ = (\b2v_inst|indice\(31)) # ((\b2v_inst|LessThan6~2_combout\ & (\b2v_inst|LessThan6~3_combout\ & \b2v_inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan6~2_combout\,
	datab => \b2v_inst|indice\(31),
	datac => \b2v_inst|LessThan6~3_combout\,
	datad => \b2v_inst|LessThan0~1_combout\,
	combout => \b2v_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X61_Y65_N18
\b2v_inst|indice~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~15_combout\ = (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|indice\(2) & \b2v_inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datac => \b2v_inst|indice\(2),
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|indice~15_combout\);

-- Location: FF_X61_Y68_N5
\b2v_inst|indice_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~4_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(2));

-- Location: FF_X61_Y68_N7
\b2v_inst|indice_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~6_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(3));

-- Location: FF_X61_Y68_N9
\b2v_inst|indice_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~8_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(4));

-- Location: FF_X61_Y68_N11
\b2v_inst|indice_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~10_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(5));

-- Location: FF_X61_Y68_N13
\b2v_inst|indice_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~12_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(6));

-- Location: FF_X61_Y68_N15
\b2v_inst|indice_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~14_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(7));

-- Location: FF_X61_Y68_N17
\b2v_inst|indice_o[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~16_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(8));

-- Location: FF_X61_Y68_N19
\b2v_inst|indice_o[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~18_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(9));

-- Location: FF_X61_Y68_N1
\b2v_inst|indice_o[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~20_combout\,
	sload => VCC,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(10));

-- Location: LCCOMB_X62_Y67_N4
\b2v_inst|indice~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~28_combout\ = (!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|indice\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|indice\(31),
	combout => \b2v_inst|indice~28_combout\);

-- Location: FF_X61_Y65_N29
\b2v_inst|indice[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~6_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(3));

-- Location: LCCOMB_X61_Y65_N14
\b2v_inst|indice~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~16_combout\ = (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|indice\(3) & \b2v_inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|indice\(3),
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|indice~16_combout\);

-- Location: IOIBUF_X58_Y73_N15
\fase~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_fase,
	o => \fase~input_o\);

-- Location: LCCOMB_X62_Y65_N16
\b2v_inst|indice[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice[7]~1_combout\ = (GLOBAL(\b2v_inst5|altpll_component|auto_generated|locked~clkctrl_outclk\) & (\fase~input_o\)) # (!GLOBAL(\b2v_inst5|altpll_component|auto_generated|locked~clkctrl_outclk\) & ((\b2v_inst|indice[7]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fase~input_o\,
	datab => \b2v_inst|indice[7]~1_combout\,
	datad => \b2v_inst5|altpll_component|auto_generated|locked~clkctrl_outclk\,
	combout => \b2v_inst|indice[7]~1_combout\);

-- Location: LCCOMB_X61_Y65_N12
\b2v_inst|indice[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice[7]~2_combout\ = (\b2v_inst5|altpll_component|auto_generated|locked~combout\ & (((\fase~input_o\)))) # (!\b2v_inst5|altpll_component|auto_generated|locked~combout\ & (\b2v_inst|indice[7]~_emulated_q\ $ ((\b2v_inst|indice[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice[7]~_emulated_q\,
	datab => \b2v_inst|indice[7]~1_combout\,
	datac => \b2v_inst5|altpll_component|auto_generated|locked~combout\,
	datad => \fase~input_o\,
	combout => \b2v_inst|indice[7]~2_combout\);

-- Location: LCCOMB_X61_Y65_N30
\b2v_inst|indice~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~21_combout\ = (\b2v_inst|LessThan2~0_combout\ & (\fase~input_o\)) # (!\b2v_inst|LessThan2~0_combout\ & (((\b2v_inst|LessThan0~2_combout\ & \b2v_inst|indice[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \fase~input_o\,
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|indice[7]~2_combout\,
	combout => \b2v_inst|indice~21_combout\);

-- Location: LCCOMB_X60_Y65_N8
\b2v_inst|Mux21~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~28_combout\ = (\b2v_inst|indice~21_combout\ & (!\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~16_combout\ $ (\b2v_inst|indice~18_combout\)))) # (!\b2v_inst|indice~21_combout\ & (!\b2v_inst|indice~18_combout\ & 
-- (\b2v_inst|indice~15_combout\ $ (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux21~28_combout\);

-- Location: LCCOMB_X60_Y65_N4
\b2v_inst|Mux21~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~32_combout\ = (\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~18_combout\ $ (((\b2v_inst|indice~16_combout\ & !\b2v_inst|indice~21_combout\))))) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~18_combout\) # 
-- ((\b2v_inst|indice~16_combout\ & \b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux21~32_combout\);

-- Location: LCCOMB_X61_Y65_N0
\b2v_inst|indice~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~29_combout\ = (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|indice\(6) & \b2v_inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datac => \b2v_inst|indice\(6),
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|indice~29_combout\);

-- Location: LCCOMB_X60_Y65_N14
\b2v_inst|Mux21~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~29_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~21_combout\) # (\b2v_inst|indice~15_combout\ $ (!\b2v_inst|indice~18_combout\)))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~15_combout\ $ 
-- (((!\b2v_inst|indice~18_combout\ & \b2v_inst|indice~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux21~29_combout\);

-- Location: LCCOMB_X60_Y65_N16
\b2v_inst|Mux21~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~30_combout\ = (\b2v_inst|indice~21_combout\ & (!\b2v_inst|indice~15_combout\ & ((!\b2v_inst|indice~16_combout\) # (!\b2v_inst|indice~18_combout\)))) # (!\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~18_combout\ $ 
-- (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux21~30_combout\);

-- Location: LCCOMB_X60_Y65_N10
\b2v_inst|Mux21~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~31_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~29_combout\)) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~29_combout\ & (!\b2v_inst|Mux21~29_combout\)) # (!\b2v_inst|indice~29_combout\ & 
-- ((\b2v_inst|Mux21~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|Mux21~29_combout\,
	datad => \b2v_inst|Mux21~30_combout\,
	combout => \b2v_inst|Mux21~31_combout\);

-- Location: LCCOMB_X60_Y65_N2
\b2v_inst|Mux21~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~33_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux21~31_combout\ & ((!\b2v_inst|Mux21~32_combout\))) # (!\b2v_inst|Mux21~31_combout\ & (!\b2v_inst|Mux21~28_combout\)))) # (!\b2v_inst|indice~17_combout\ & 
-- (((\b2v_inst|Mux21~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux21~28_combout\,
	datac => \b2v_inst|Mux21~32_combout\,
	datad => \b2v_inst|Mux21~31_combout\,
	combout => \b2v_inst|Mux21~33_combout\);

-- Location: LCCOMB_X60_Y63_N28
\b2v_inst|Mux21~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~8_combout\ = \b2v_inst|indice~29_combout\ $ (\b2v_inst|indice~18_combout\ $ (((\b2v_inst|indice~16_combout\) # (\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~18_combout\,
	combout => \b2v_inst|Mux21~8_combout\);

-- Location: LCCOMB_X60_Y63_N20
\b2v_inst|Mux21~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~12_combout\ = (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~29_combout\)) # (!\b2v_inst|indice~16_combout\ & (((\b2v_inst|indice~21_combout\) # (\b2v_inst|indice~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~18_combout\,
	combout => \b2v_inst|Mux21~12_combout\);

-- Location: LCCOMB_X60_Y63_N22
\b2v_inst|Mux21~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~9_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~18_combout\ & ((!\b2v_inst|indice~21_combout\))) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~18_combout\,
	combout => \b2v_inst|Mux21~9_combout\);

-- Location: LCCOMB_X60_Y63_N16
\b2v_inst|Mux21~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~10_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~16_combout\) # ((!\b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~21_combout\ & ((!\b2v_inst|indice~18_combout\))) # 
-- (!\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~18_combout\,
	combout => \b2v_inst|Mux21~10_combout\);

-- Location: LCCOMB_X60_Y63_N6
\b2v_inst|Mux21~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~11_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~17_combout\) # ((!\b2v_inst|Mux21~9_combout\)))) # (!\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux21~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux21~9_combout\,
	datad => \b2v_inst|Mux21~10_combout\,
	combout => \b2v_inst|Mux21~11_combout\);

-- Location: LCCOMB_X60_Y63_N30
\b2v_inst|Mux21~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~13_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux21~11_combout\ & ((\b2v_inst|Mux21~12_combout\))) # (!\b2v_inst|Mux21~11_combout\ & (\b2v_inst|Mux21~8_combout\)))) # (!\b2v_inst|indice~17_combout\ & 
-- (((\b2v_inst|Mux21~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux21~8_combout\,
	datac => \b2v_inst|Mux21~12_combout\,
	datad => \b2v_inst|Mux21~11_combout\,
	combout => \b2v_inst|Mux21~13_combout\);

-- Location: FF_X61_Y65_N15
\b2v_inst|indice[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(0));

-- Location: LCCOMB_X61_Y65_N26
\b2v_inst|indice~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~13_combout\ = (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|indice\(0) & \b2v_inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|indice\(0),
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|indice~13_combout\);

-- Location: LCCOMB_X62_Y66_N28
\b2v_inst|Mux21~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~21_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~16_combout\ $ (((!\b2v_inst|indice~18_combout\) # (!\b2v_inst|indice~29_combout\))))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~29_combout\ & 
-- (\b2v_inst|indice~18_combout\ & !\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~29_combout\ & (!\b2v_inst|indice~18_combout\ & \b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux21~21_combout\);

-- Location: LCCOMB_X62_Y66_N26
\b2v_inst|Mux21~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~22_combout\ = (\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~29_combout\ & ((!\b2v_inst|Mux21~21_combout\))) # (!\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~21_combout\ & 
-- ((\b2v_inst|Mux21~21_combout\) # ((\b2v_inst|indice~16_combout\ & \b2v_inst|indice~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|Mux21~21_combout\,
	combout => \b2v_inst|Mux21~22_combout\);

-- Location: LCCOMB_X62_Y66_N30
\b2v_inst|Mux21~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~24_combout\ = (\b2v_inst|Mux21~21_combout\) # ((\b2v_inst|indice~16_combout\ & !\b2v_inst|indice~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|Mux21~21_combout\,
	combout => \b2v_inst|Mux21~24_combout\);

-- Location: LCCOMB_X62_Y66_N0
\b2v_inst|Mux21~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~23_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~15_combout\) # (\b2v_inst|indice~16_combout\ $ (\b2v_inst|Mux21~21_combout\)))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~16_combout\ $ 
-- ((!\b2v_inst|indice~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|Mux21~21_combout\,
	combout => \b2v_inst|Mux21~23_combout\);

-- Location: LCCOMB_X62_Y66_N20
\b2v_inst|Mux21~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~25_combout\ = (\b2v_inst|indice~21_combout\ & (((\b2v_inst|Mux21~24_combout\)))) # (!\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~18_combout\ & ((\b2v_inst|Mux21~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|Mux21~24_combout\,
	datad => \b2v_inst|Mux21~23_combout\,
	combout => \b2v_inst|Mux21~25_combout\);

-- Location: LCCOMB_X62_Y66_N18
\b2v_inst|Mux21~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~26_combout\ = (\b2v_inst|indice~18_combout\ & (((\b2v_inst|Mux21~25_combout\)))) # (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~15_combout\ & ((\b2v_inst|Mux21~25_combout\))) # (!\b2v_inst|indice~15_combout\ & 
-- (\b2v_inst|Mux21~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|Mux21~22_combout\,
	datad => \b2v_inst|Mux21~25_combout\,
	combout => \b2v_inst|Mux21~26_combout\);

-- Location: LCCOMB_X59_Y65_N24
\b2v_inst|Mux21~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~14_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|Mux21~35_combout\ $ (\b2v_inst|indice~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux21~35_combout\,
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux21~14_combout\);

-- Location: LCCOMB_X59_Y65_N2
\b2v_inst|Mux21~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~15_combout\ = (\b2v_inst|indice~18_combout\ & (((\b2v_inst|Mux21~35_combout\ & !\b2v_inst|Mux21~14_combout\)) # (!\b2v_inst|indice~15_combout\))) # (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~15_combout\) # 
-- ((\b2v_inst|Mux21~35_combout\ & \b2v_inst|Mux21~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux21~35_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|Mux21~14_combout\,
	combout => \b2v_inst|Mux21~15_combout\);

-- Location: LCCOMB_X61_Y65_N22
\b2v_inst|Mux21~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~35_combout\ = ((\b2v_inst|LessThan2~0_combout\) # (\b2v_inst|indice\(6) $ (!\b2v_inst|indice\(3)))) # (!\b2v_inst|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(6),
	datab => \b2v_inst|indice\(3),
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|Mux21~35_combout\);

-- Location: LCCOMB_X59_Y65_N8
\b2v_inst|Mux21~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~16_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~29_combout\ $ (\b2v_inst|Mux21~35_combout\)) # (!\b2v_inst|indice~18_combout\))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~18_combout\ & 
-- ((\b2v_inst|Mux21~35_combout\) # (!\b2v_inst|indice~29_combout\))) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~29_combout\ $ (\b2v_inst|Mux21~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|Mux21~35_combout\,
	combout => \b2v_inst|Mux21~16_combout\);

-- Location: LCCOMB_X59_Y65_N12
\b2v_inst|Mux21~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~18_combout\ = (\b2v_inst|indice~18_combout\ & (((\b2v_inst|Mux21~14_combout\) # (!\b2v_inst|indice~15_combout\)))) # (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~17_combout\)) # 
-- (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|Mux21~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|Mux21~14_combout\,
	combout => \b2v_inst|Mux21~18_combout\);

-- Location: LCCOMB_X59_Y65_N30
\b2v_inst|Mux21~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~19_combout\ = (\b2v_inst|indice~21_combout\ & (\b2v_inst|Mux21~16_combout\)) # (!\b2v_inst|indice~21_combout\ & ((\b2v_inst|Mux21~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|Mux21~16_combout\,
	datad => \b2v_inst|Mux21~18_combout\,
	combout => \b2v_inst|Mux21~19_combout\);

-- Location: LCCOMB_X59_Y65_N10
\b2v_inst|Mux21~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~17_combout\ = (\b2v_inst|Mux21~35_combout\) # ((\b2v_inst|indice~15_combout\ & (\b2v_inst|Mux21~16_combout\)) # (!\b2v_inst|indice~15_combout\ & ((!\b2v_inst|Mux21~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|Mux21~35_combout\,
	datac => \b2v_inst|Mux21~16_combout\,
	datad => \b2v_inst|Mux21~15_combout\,
	combout => \b2v_inst|Mux21~17_combout\);

-- Location: LCCOMB_X59_Y65_N0
\b2v_inst|Mux21~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~20_combout\ = (\b2v_inst|indice~21_combout\ & (\b2v_inst|Mux21~15_combout\ & (\b2v_inst|Mux21~19_combout\))) # (!\b2v_inst|indice~21_combout\ & ((\b2v_inst|Mux21~19_combout\ $ (!\b2v_inst|Mux21~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datab => \b2v_inst|Mux21~15_combout\,
	datac => \b2v_inst|Mux21~19_combout\,
	datad => \b2v_inst|Mux21~17_combout\,
	combout => \b2v_inst|Mux21~20_combout\);

-- Location: LCCOMB_X59_Y66_N0
\b2v_inst|Mux21~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~27_combout\ = (\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~13_combout\) # ((\b2v_inst|Mux21~20_combout\)))) # (!\b2v_inst|indice~14_combout\ & (!\b2v_inst|indice~13_combout\ & (\b2v_inst|Mux21~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|Mux21~26_combout\,
	datad => \b2v_inst|Mux21~20_combout\,
	combout => \b2v_inst|Mux21~27_combout\);

-- Location: LCCOMB_X59_Y66_N2
\b2v_inst|Mux21~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~34_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|Mux21~27_combout\ & (\b2v_inst|Mux21~33_combout\)) # (!\b2v_inst|Mux21~27_combout\ & ((\b2v_inst|Mux21~13_combout\))))) # (!\b2v_inst|indice~13_combout\ & 
-- (((\b2v_inst|Mux21~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|Mux21~33_combout\,
	datac => \b2v_inst|Mux21~13_combout\,
	datad => \b2v_inst|Mux21~27_combout\,
	combout => \b2v_inst|Mux21~34_combout\);

-- Location: LCCOMB_X60_Y68_N24
\b2v_inst|LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan8~0_combout\ = (\b2v_inst|LessThan0~0_combout\ & (\b2v_inst|LessThan0~2_combout\ & !\b2v_inst|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~0_combout\,
	datab => \b2v_inst|LessThan0~2_combout\,
	datac => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|LessThan8~0_combout\);

-- Location: LCCOMB_X62_Y67_N6
\b2v_inst|salida1[6]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[6]~8_combout\ = (\b2v_inst|LessThan2~0_combout\) # (((\b2v_inst|LessThan6~2_combout\ & \b2v_inst|LessThan6~3_combout\)) # (!\b2v_inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan6~2_combout\,
	datab => \b2v_inst|LessThan6~3_combout\,
	datac => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|salida1[6]~8_combout\);

-- Location: LCCOMB_X62_Y67_N0
\b2v_inst|salida1[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[6]~9_combout\ = (\b2v_inst|salida1[6]~8_combout\ & (((\b2v_inst|LessThan6~5_combout\ & \b2v_inst|LessThan6~4_combout\)) # (!\b2v_inst|indice~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|LessThan6~5_combout\,
	datac => \b2v_inst|LessThan6~4_combout\,
	datad => \b2v_inst|salida1[6]~8_combout\,
	combout => \b2v_inst|salida1[6]~9_combout\);

-- Location: LCCOMB_X62_Y67_N2
\b2v_inst|salida1[6]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[6]~39_combout\ = (\b2v_inst|salida1[6]~9_combout\ & ((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|indice\(30)) # (!\b2v_inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|LessThan0~2_combout\,
	datac => \b2v_inst|indice\(30),
	datad => \b2v_inst|salida1[6]~9_combout\,
	combout => \b2v_inst|salida1[6]~39_combout\);

-- Location: LCCOMB_X62_Y68_N26
\b2v_inst|indice[8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice[8]~5_combout\ = (GLOBAL(\b2v_inst5|altpll_component|auto_generated|locked~clkctrl_outclk\) & ((\b2v_inst4|data_out[0]~0_combout\))) # (!GLOBAL(\b2v_inst5|altpll_component|auto_generated|locked~clkctrl_outclk\) & 
-- (\b2v_inst|indice[8]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice[8]~5_combout\,
	datac => \b2v_inst4|data_out[0]~0_combout\,
	datad => \b2v_inst5|altpll_component|auto_generated|locked~clkctrl_outclk\,
	combout => \b2v_inst|indice[8]~5_combout\);

-- Location: LCCOMB_X62_Y68_N28
\b2v_inst|indice[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice[8]~6_combout\ = (\b2v_inst5|altpll_component|auto_generated|locked~combout\ & (((\b2v_inst4|data_out[0]~0_combout\)))) # (!\b2v_inst5|altpll_component|auto_generated|locked~combout\ & (\b2v_inst|indice[8]~_emulated_q\ $ 
-- ((\b2v_inst|indice[8]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice[8]~_emulated_q\,
	datab => \b2v_inst5|altpll_component|auto_generated|locked~combout\,
	datac => \b2v_inst|indice[8]~5_combout\,
	datad => \b2v_inst4|data_out[0]~0_combout\,
	combout => \b2v_inst|indice[8]~6_combout\);

-- Location: LCCOMB_X62_Y68_N20
\b2v_inst|indice~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~24_combout\ = (\b2v_inst|LessThan2~0_combout\ & (((\b2v_inst4|data_out[0]~0_combout\)))) # (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|LessThan0~2_combout\ & ((\b2v_inst|indice[8]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~2_combout\,
	datab => \b2v_inst4|data_out[0]~0_combout\,
	datac => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|indice[8]~6_combout\,
	combout => \b2v_inst|indice~24_combout\);

-- Location: LCCOMB_X62_Y68_N24
\b2v_inst|salida1[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[6]~10_combout\ = (!\b2v_inst|LessThan8~0_combout\ & (\b2v_inst|salida1[6]~39_combout\ & !\b2v_inst|indice~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|LessThan8~0_combout\,
	datac => \b2v_inst|salida1[6]~39_combout\,
	datad => \b2v_inst|indice~24_combout\,
	combout => \b2v_inst|salida1[6]~10_combout\);

-- Location: LCCOMB_X60_Y67_N14
\b2v_inst|salida1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~11_combout\ = (\b2v_inst|indice~28_combout\ & (\b2v_inst|Mux10~27_combout\)) # (!\b2v_inst|indice~28_combout\ & ((\b2v_inst|salida1[6]~10_combout\ & (\b2v_inst|Mux10~27_combout\)) # (!\b2v_inst|salida1[6]~10_combout\ & 
-- ((\b2v_inst|Mux21~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux10~27_combout\,
	datab => \b2v_inst|indice~28_combout\,
	datac => \b2v_inst|Mux21~34_combout\,
	datad => \b2v_inst|salida1[6]~10_combout\,
	combout => \b2v_inst|salida1~11_combout\);

-- Location: FF_X61_Y68_N27
\b2v_inst|indice[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~26_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(13));

-- Location: FF_X61_Y68_N23
\b2v_inst|indice[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~22_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(11));

-- Location: LCCOMB_X60_Y68_N22
\b2v_inst|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~0_combout\ = (\b2v_inst|indice\(10)) # ((\b2v_inst|indice\(12)) # ((\b2v_inst|indice\(13)) # (\b2v_inst|indice\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(10),
	datab => \b2v_inst|indice\(12),
	datac => \b2v_inst|indice\(13),
	datad => \b2v_inst|indice\(11),
	combout => \b2v_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X60_Y68_N30
\b2v_inst|indice[9]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice[9]~9_combout\ = (GLOBAL(\b2v_inst5|altpll_component|auto_generated|locked~clkctrl_outclk\) & ((\b2v_inst4|data_out[1]~1_combout\))) # (!GLOBAL(\b2v_inst5|altpll_component|auto_generated|locked~clkctrl_outclk\) & 
-- (\b2v_inst|indice[9]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice[9]~9_combout\,
	datac => \b2v_inst5|altpll_component|auto_generated|locked~clkctrl_outclk\,
	datad => \b2v_inst4|data_out[1]~1_combout\,
	combout => \b2v_inst|indice[9]~9_combout\);

-- Location: LCCOMB_X60_Y68_N18
\b2v_inst|indice[9]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice[9]~10_combout\ = (\b2v_inst5|altpll_component|auto_generated|locked~combout\ & (((\b2v_inst4|data_out[1]~1_combout\)))) # (!\b2v_inst5|altpll_component|auto_generated|locked~combout\ & (\b2v_inst|indice[9]~_emulated_q\ $ 
-- ((\b2v_inst|indice[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice[9]~_emulated_q\,
	datab => \b2v_inst5|altpll_component|auto_generated|locked~combout\,
	datac => \b2v_inst|indice[9]~9_combout\,
	datad => \b2v_inst4|data_out[1]~1_combout\,
	combout => \b2v_inst|indice[9]~10_combout\);

-- Location: LCCOMB_X60_Y68_N8
\b2v_inst|indice~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~27_combout\ = (\b2v_inst|LessThan2~0_combout\ & (\b2v_inst4|data_out[1]~1_combout\)) # (!\b2v_inst|LessThan2~0_combout\ & (((\b2v_inst|LessThan0~2_combout\ & \b2v_inst|indice[9]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst4|data_out[1]~1_combout\,
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|indice[9]~10_combout\,
	combout => \b2v_inst|indice~27_combout\);

-- Location: LCCOMB_X60_Y68_N6
\b2v_inst|LessThan6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan6~6_combout\ = (!\b2v_inst|indice~27_combout\ & ((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|LessThan0~2_combout\) # (!\b2v_inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|LessThan0~0_combout\,
	datac => \b2v_inst|indice~27_combout\,
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|LessThan6~6_combout\);

-- Location: LCCOMB_X60_Y68_N10
\b2v_inst|salida1[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[0]~12_combout\ = (\b2v_inst|salida1[6]~39_combout\ & ((\b2v_inst|LessThan6~6_combout\) # (!\b2v_inst|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|LessThan8~0_combout\,
	datac => \b2v_inst|salida1[6]~39_combout\,
	datad => \b2v_inst|LessThan6~6_combout\,
	combout => \b2v_inst|salida1[0]~12_combout\);

-- Location: LCCOMB_X60_Y68_N4
\b2v_inst|salida1[0]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[0]~40_combout\ = (!\b2v_inst5|altpll_component|auto_generated|locked~combout\ & ((\b2v_inst|salida1[0]~12_combout\) # ((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|indice\(31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst5|altpll_component|auto_generated|locked~combout\,
	datac => \b2v_inst|indice\(31),
	datad => \b2v_inst|salida1[0]~12_combout\,
	combout => \b2v_inst|salida1[0]~40_combout\);

-- Location: FF_X60_Y67_N15
\b2v_inst|salida1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~11_combout\,
	ena => \b2v_inst|salida1[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(0));

-- Location: FF_X60_Y67_N17
\b2v_inst|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida1\(0),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(0));

-- Location: LCCOMB_X62_Y68_N30
\b2v_inst|salida1[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[6]~13_combout\ = (\b2v_inst|salida1[6]~10_combout\) # ((\b2v_inst|indice\(31) & !\b2v_inst|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(31),
	datac => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|salida1[6]~10_combout\,
	combout => \b2v_inst|salida1[6]~13_combout\);

-- Location: LCCOMB_X63_Y65_N20
\b2v_inst|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~0_combout\ = (\b2v_inst|indice~15_combout\) # ((\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~29_combout\) # (!\b2v_inst|indice~21_combout\))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux10~0_combout\);

-- Location: LCCOMB_X63_Y65_N8
\b2v_inst|Mux10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~4_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~15_combout\)) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~29_combout\ & !\b2v_inst|indice~21_combout\)) # 
-- (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux10~4_combout\);

-- Location: LCCOMB_X63_Y65_N22
\b2v_inst|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~1_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~29_combout\) # ((!\b2v_inst|indice~17_combout\ & !\b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~21_combout\ $ 
-- (((\b2v_inst|indice~17_combout\ & \b2v_inst|indice~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux10~1_combout\);

-- Location: LCCOMB_X63_Y65_N12
\b2v_inst|Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~2_combout\ = (\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~29_combout\ & (!\b2v_inst|indice~17_combout\ & !\b2v_inst|indice~15_combout\)) # (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~15_combout\))))) # 
-- (!\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~15_combout\) # (!\b2v_inst|indice~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux10~2_combout\);

-- Location: LCCOMB_X63_Y65_N2
\b2v_inst|Mux10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~3_combout\ = (\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~16_combout\ & (\b2v_inst|Mux10~1_combout\)) # (!\b2v_inst|indice~16_combout\ & 
-- ((\b2v_inst|Mux10~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|Mux10~1_combout\,
	datad => \b2v_inst|Mux10~2_combout\,
	combout => \b2v_inst|Mux10~3_combout\);

-- Location: LCCOMB_X63_Y65_N6
\b2v_inst|Mux10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~5_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|Mux10~3_combout\ & ((!\b2v_inst|Mux10~4_combout\))) # (!\b2v_inst|Mux10~3_combout\ & (!\b2v_inst|Mux10~0_combout\)))) # (!\b2v_inst|indice~18_combout\ & 
-- (((\b2v_inst|Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|Mux10~0_combout\,
	datac => \b2v_inst|Mux10~4_combout\,
	datad => \b2v_inst|Mux10~3_combout\,
	combout => \b2v_inst|Mux10~5_combout\);

-- Location: LCCOMB_X61_Y65_N28
\b2v_inst|indice~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~14_combout\ = (\b2v_inst|indice\(1) & (\b2v_inst|LessThan0~2_combout\ & !\b2v_inst|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(1),
	datab => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|indice~14_combout\);

-- Location: LCCOMB_X60_Y63_N4
\b2v_inst|Mux10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~6_combout\ = (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~18_combout\ & ((!\b2v_inst|indice~29_combout\))) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux10~6_combout\);

-- Location: LCCOMB_X60_Y63_N10
\b2v_inst|Mux10~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~9_combout\ = (\b2v_inst|LessThan2~0_combout\ & (\fase~input_o\)) # (!\b2v_inst|LessThan2~0_combout\ & (((\b2v_inst|LessThan0~2_combout\ & \b2v_inst|indice[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fase~input_o\,
	datab => \b2v_inst|LessThan2~0_combout\,
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|indice[7]~2_combout\,
	combout => \b2v_inst|Mux10~9_combout\);

-- Location: LCCOMB_X60_Y63_N8
\b2v_inst|Mux10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~10_combout\ = (\b2v_inst|indice~16_combout\ & (((\b2v_inst|indice~18_combout\ & \b2v_inst|Mux10~9_combout\)))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|Mux10~9_combout\,
	combout => \b2v_inst|Mux10~10_combout\);

-- Location: LCCOMB_X60_Y63_N2
\b2v_inst|Mux10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~7_combout\ = (\b2v_inst|LessThan2~0_combout\ & (\fase~input_o\)) # (!\b2v_inst|LessThan2~0_combout\ & (((\b2v_inst|LessThan0~2_combout\ & \b2v_inst|indice[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fase~input_o\,
	datab => \b2v_inst|LessThan2~0_combout\,
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|indice[7]~2_combout\,
	combout => \b2v_inst|Mux10~7_combout\);

-- Location: LCCOMB_X60_Y63_N24
\b2v_inst|Mux10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~8_combout\ = \b2v_inst|indice~29_combout\ $ (\b2v_inst|indice~18_combout\ $ (((\b2v_inst|indice~16_combout\ & \b2v_inst|Mux10~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|Mux10~7_combout\,
	combout => \b2v_inst|Mux10~8_combout\);

-- Location: LCCOMB_X60_Y63_N18
\b2v_inst|Mux10~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~11_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~17_combout\) # ((!\b2v_inst|Mux10~8_combout\)))) # (!\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~17_combout\ & (!\b2v_inst|Mux10~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux10~10_combout\,
	datad => \b2v_inst|Mux10~8_combout\,
	combout => \b2v_inst|Mux10~11_combout\);

-- Location: LCCOMB_X60_Y63_N14
\b2v_inst|Mux10~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~13_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux10~11_combout\ & (!\b2v_inst|Mux10~12_combout\)) # (!\b2v_inst|Mux10~11_combout\ & ((!\b2v_inst|Mux10~6_combout\))))) # (!\b2v_inst|indice~17_combout\ & 
-- (((\b2v_inst|Mux10~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux10~12_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux10~6_combout\,
	datad => \b2v_inst|Mux10~11_combout\,
	combout => \b2v_inst|Mux10~13_combout\);

-- Location: LCCOMB_X62_Y63_N4
\b2v_inst|Mux10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~18_combout\ = (\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~16_combout\ $ ((\b2v_inst|indice~18_combout\)))) # (!\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~16_combout\) # 
-- (\b2v_inst|indice~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux10~18_combout\);

-- Location: LCCOMB_X62_Y63_N8
\b2v_inst|Mux10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~14_combout\ = (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~15_combout\ $ (((\b2v_inst|indice~18_combout\ & !\b2v_inst|indice~21_combout\))))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~21_combout\ & 
-- (\b2v_inst|indice~18_combout\ $ (\b2v_inst|indice~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux10~14_combout\);

-- Location: LCCOMB_X62_Y63_N14
\b2v_inst|Mux10~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~15_combout\ = (\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~15_combout\ $ (\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~15_combout\ & 
-- (\b2v_inst|indice~18_combout\ $ (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux10~15_combout\);

-- Location: LCCOMB_X62_Y63_N0
\b2v_inst|Mux10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~16_combout\ = (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~18_combout\)) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~15_combout\ $ (!\b2v_inst|indice~21_combout\))) # 
-- (!\b2v_inst|indice~18_combout\ & (!\b2v_inst|indice~15_combout\ & \b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux10~16_combout\);

-- Location: LCCOMB_X62_Y63_N6
\b2v_inst|Mux10~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~17_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~29_combout\)) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~29_combout\ & (!\b2v_inst|Mux10~15_combout\)) # (!\b2v_inst|indice~29_combout\ & 
-- ((\b2v_inst|Mux10~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|Mux10~15_combout\,
	datad => \b2v_inst|Mux10~16_combout\,
	combout => \b2v_inst|Mux10~17_combout\);

-- Location: LCCOMB_X62_Y63_N2
\b2v_inst|Mux10~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~19_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux10~17_combout\ & (\b2v_inst|Mux10~18_combout\)) # (!\b2v_inst|Mux10~17_combout\ & ((\b2v_inst|Mux10~14_combout\))))) # (!\b2v_inst|indice~17_combout\ & 
-- (((\b2v_inst|Mux10~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux10~18_combout\,
	datac => \b2v_inst|Mux10~14_combout\,
	datad => \b2v_inst|Mux10~17_combout\,
	combout => \b2v_inst|Mux10~19_combout\);

-- Location: LCCOMB_X59_Y67_N30
\b2v_inst|Mux10~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~20_combout\ = (\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~14_combout\ & (\b2v_inst|Mux10~13_combout\)) # (!\b2v_inst|indice~14_combout\ & 
-- ((\b2v_inst|Mux10~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|Mux10~13_combout\,
	datad => \b2v_inst|Mux10~19_combout\,
	combout => \b2v_inst|Mux10~20_combout\);

-- Location: LCCOMB_X59_Y67_N0
\b2v_inst|Mux10~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~27_combout\ = (\b2v_inst|Mux10~20_combout\ & ((\b2v_inst|Mux10~26_combout\) # ((!\b2v_inst|indice~13_combout\)))) # (!\b2v_inst|Mux10~20_combout\ & (((\b2v_inst|Mux10~5_combout\ & \b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux10~26_combout\,
	datab => \b2v_inst|Mux10~5_combout\,
	datac => \b2v_inst|Mux10~20_combout\,
	datad => \b2v_inst|indice~13_combout\,
	combout => \b2v_inst|Mux10~27_combout\);

-- Location: LCCOMB_X59_Y67_N4
\b2v_inst|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~1_cout\ = CARRY(!\b2v_inst|Mux10~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux10~27_combout\,
	datad => VCC,
	cout => \b2v_inst|Add1~1_cout\);

-- Location: LCCOMB_X59_Y67_N6
\b2v_inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~2_combout\ = (\b2v_inst|Mux9~24_combout\ & ((\b2v_inst|Add1~1_cout\) # (GND))) # (!\b2v_inst|Mux9~24_combout\ & (!\b2v_inst|Add1~1_cout\))
-- \b2v_inst|Add1~3\ = CARRY((\b2v_inst|Mux9~24_combout\) # (!\b2v_inst|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux9~24_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~1_cout\,
	combout => \b2v_inst|Add1~2_combout\,
	cout => \b2v_inst|Add1~3\);

-- Location: LCCOMB_X58_Y65_N28
\b2v_inst|Mux20~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~16_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice~16_combout\ & ((!\b2v_inst|indice~18_combout\))))) # (!\b2v_inst|indice~15_combout\ & 
-- (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~14_combout\) # (!\b2v_inst|indice~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux20~16_combout\);

-- Location: LCCOMB_X58_Y65_N22
\b2v_inst|Mux20~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~13_combout\ = (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~14_combout\ & ((!\b2v_inst|indice~15_combout\) # (!\b2v_inst|indice~18_combout\)))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~18_combout\ & 
-- (\b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux20~13_combout\);

-- Location: LCCOMB_X58_Y65_N8
\b2v_inst|Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~0_combout\ = (\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~18_combout\ & (!\b2v_inst|indice~14_combout\ & \b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~14_combout\ 
-- & !\b2v_inst|indice~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux20~0_combout\);

-- Location: LCCOMB_X58_Y65_N20
\b2v_inst|Mux20~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~14_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~14_combout\ $ (\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~14_combout\ $ 
-- (!\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux20~14_combout\);

-- Location: LCCOMB_X58_Y65_N18
\b2v_inst|Mux20~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~15_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~13_combout\) # ((!\b2v_inst|Mux20~0_combout\)))) # (!\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~13_combout\ & ((!\b2v_inst|Mux20~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|Mux20~0_combout\,
	datad => \b2v_inst|Mux20~14_combout\,
	combout => \b2v_inst|Mux20~15_combout\);

-- Location: LCCOMB_X58_Y65_N14
\b2v_inst|Mux20~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~17_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|Mux20~15_combout\ & (!\b2v_inst|Mux20~16_combout\)) # (!\b2v_inst|Mux20~15_combout\ & ((!\b2v_inst|Mux20~13_combout\))))) # (!\b2v_inst|indice~13_combout\ & 
-- (((\b2v_inst|Mux20~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|Mux20~16_combout\,
	datac => \b2v_inst|Mux20~13_combout\,
	datad => \b2v_inst|Mux20~15_combout\,
	combout => \b2v_inst|Mux20~17_combout\);

-- Location: LCCOMB_X58_Y65_N30
\b2v_inst|Mux20~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~7_combout\ = (\b2v_inst|indice~17_combout\ & (((!\b2v_inst|indice~14_combout\ & !\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~18_combout\))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~14_combout\ $ 
-- (((\b2v_inst|indice~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux20~7_combout\);

-- Location: LCCOMB_X58_Y65_N26
\b2v_inst|Mux20~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~9_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\ $ (!\b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice~18_combout\))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~16_combout\ $ 
-- (((\b2v_inst|indice~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux20~9_combout\);

-- Location: LCCOMB_X58_Y65_N0
\b2v_inst|Mux20~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~8_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~14_combout\ & ((!\b2v_inst|indice~17_combout\))) # (!\b2v_inst|indice~14_combout\ & (!\b2v_inst|indice~18_combout\ & \b2v_inst|indice~17_combout\)))) # 
-- (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~18_combout\ & (!\b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux20~8_combout\);

-- Location: LCCOMB_X58_Y65_N24
\b2v_inst|Mux20~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~10_combout\ = (\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~15_combout\)) # (!\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~15_combout\ & ((!\b2v_inst|Mux20~8_combout\))) # (!\b2v_inst|indice~15_combout\ & 
-- (!\b2v_inst|Mux20~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|Mux20~9_combout\,
	datad => \b2v_inst|Mux20~8_combout\,
	combout => \b2v_inst|Mux20~10_combout\);

-- Location: LCCOMB_X58_Y65_N12
\b2v_inst|Mux20~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~12_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|Mux20~10_combout\ & (\b2v_inst|Mux20~11_combout\)) # (!\b2v_inst|Mux20~10_combout\ & ((\b2v_inst|Mux20~7_combout\))))) # (!\b2v_inst|indice~13_combout\ & 
-- (((\b2v_inst|Mux20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux20~11_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|Mux20~7_combout\,
	datad => \b2v_inst|Mux20~10_combout\,
	combout => \b2v_inst|Mux20~12_combout\);

-- Location: LCCOMB_X58_Y65_N16
\b2v_inst|Mux20~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~18_combout\ = (\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~29_combout\) # ((\b2v_inst|Mux20~12_combout\)))) # (!\b2v_inst|indice~21_combout\ & (!\b2v_inst|indice~29_combout\ & (\b2v_inst|Mux20~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|Mux20~17_combout\,
	datad => \b2v_inst|Mux20~12_combout\,
	combout => \b2v_inst|Mux20~18_combout\);

-- Location: LCCOMB_X57_Y65_N28
\b2v_inst|Mux20~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~23_combout\ = (\b2v_inst|indice~14_combout\ & (\b2v_inst|indice~18_combout\)) # (!\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~18_combout\)) # (!\b2v_inst|indice~13_combout\ & 
-- ((\b2v_inst|indice~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~13_combout\,
	combout => \b2v_inst|Mux20~23_combout\);

-- Location: LCCOMB_X57_Y65_N26
\b2v_inst|Mux20~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~20_combout\ = (\b2v_inst|indice~18_combout\) # ((!\b2v_inst|indice~17_combout\ & \b2v_inst|indice~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~18_combout\,
	combout => \b2v_inst|Mux20~20_combout\);

-- Location: LCCOMB_X57_Y65_N24
\b2v_inst|Mux20~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~21_combout\ = (\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~18_combout\ & \b2v_inst|indice~13_combout\)) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~13_combout\) # 
-- (!\b2v_inst|indice~18_combout\))))) # (!\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~18_combout\ & !\b2v_inst|indice~13_combout\)) # (!\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~18_combout\ & 
-- \b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~13_combout\,
	combout => \b2v_inst|Mux20~21_combout\);

-- Location: LCCOMB_X57_Y65_N14
\b2v_inst|Mux20~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~22_combout\ = (\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~16_combout\ & (\b2v_inst|Mux20~20_combout\)) # (!\b2v_inst|indice~16_combout\ & 
-- ((!\b2v_inst|Mux20~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|Mux20~20_combout\,
	datad => \b2v_inst|Mux20~21_combout\,
	combout => \b2v_inst|Mux20~22_combout\);

-- Location: LCCOMB_X57_Y65_N20
\b2v_inst|Mux20~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~19_combout\ = (!\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~14_combout\ & \b2v_inst|indice~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~18_combout\,
	combout => \b2v_inst|Mux20~19_combout\);

-- Location: LCCOMB_X57_Y65_N6
\b2v_inst|Mux20~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~24_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|Mux20~22_combout\ & (!\b2v_inst|Mux20~23_combout\)) # (!\b2v_inst|Mux20~22_combout\ & ((\b2v_inst|Mux20~19_combout\))))) # (!\b2v_inst|indice~15_combout\ & 
-- (((\b2v_inst|Mux20~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|Mux20~23_combout\,
	datac => \b2v_inst|Mux20~22_combout\,
	datad => \b2v_inst|Mux20~19_combout\,
	combout => \b2v_inst|Mux20~24_combout\);

-- Location: LCCOMB_X59_Y66_N4
\b2v_inst|Mux20~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~25_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|Mux20~18_combout\ & ((\b2v_inst|Mux20~24_combout\))) # (!\b2v_inst|Mux20~18_combout\ & (\b2v_inst|Mux20~6_combout\)))) # (!\b2v_inst|indice~29_combout\ & 
-- (((\b2v_inst|Mux20~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux20~6_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|Mux20~18_combout\,
	datad => \b2v_inst|Mux20~24_combout\,
	combout => \b2v_inst|Mux20~25_combout\);

-- Location: LCCOMB_X60_Y68_N2
\b2v_inst|salida1[6]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[6]~41_combout\ = (\b2v_inst|indice~27_combout\) # ((!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|LessThan0~0_combout\ & \b2v_inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|LessThan0~0_combout\,
	datac => \b2v_inst|indice~27_combout\,
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|salida1[6]~41_combout\);

-- Location: LCCOMB_X60_Y68_N0
\b2v_inst|salida1[6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[6]~14_combout\ = (\b2v_inst|indice\(31) & (!\b2v_inst|indice~19_combout\ & ((\b2v_inst|salida1[6]~41_combout\) # (!\b2v_inst|salida1[6]~9_combout\)))) # (!\b2v_inst|indice\(31) & (((\b2v_inst|salida1[6]~41_combout\)) # 
-- (!\b2v_inst|salida1[6]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(31),
	datab => \b2v_inst|salida1[6]~9_combout\,
	datac => \b2v_inst|indice~19_combout\,
	datad => \b2v_inst|salida1[6]~41_combout\,
	combout => \b2v_inst|salida1[6]~14_combout\);

-- Location: LCCOMB_X60_Y67_N20
\b2v_inst|salida1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~15_combout\ = (\b2v_inst|salida1[6]~13_combout\ & (((\b2v_inst|salida1[6]~14_combout\)))) # (!\b2v_inst|salida1[6]~13_combout\ & ((\b2v_inst|salida1[6]~14_combout\ & (\b2v_inst|Add2~2_combout\)) # (!\b2v_inst|salida1[6]~14_combout\ & 
-- ((\b2v_inst|Mux20~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~2_combout\,
	datab => \b2v_inst|salida1[6]~13_combout\,
	datac => \b2v_inst|Mux20~25_combout\,
	datad => \b2v_inst|salida1[6]~14_combout\,
	combout => \b2v_inst|salida1~15_combout\);

-- Location: LCCOMB_X60_Y67_N0
\b2v_inst|salida1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~16_combout\ = (\b2v_inst|salida1[6]~13_combout\ & ((\b2v_inst|salida1~15_combout\ & ((\b2v_inst|Add1~2_combout\))) # (!\b2v_inst|salida1~15_combout\ & (\b2v_inst|Mux9~24_combout\)))) # (!\b2v_inst|salida1[6]~13_combout\ & 
-- (((\b2v_inst|salida1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux9~24_combout\,
	datab => \b2v_inst|salida1[6]~13_combout\,
	datac => \b2v_inst|Add1~2_combout\,
	datad => \b2v_inst|salida1~15_combout\,
	combout => \b2v_inst|salida1~16_combout\);

-- Location: FF_X60_Y67_N1
\b2v_inst|salida1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~16_combout\,
	ena => \b2v_inst|salida1[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(1));

-- Location: LCCOMB_X62_Y67_N12
\b2v_inst|salida[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida[1]~feeder_combout\ = \b2v_inst|salida1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|salida1\(1),
	combout => \b2v_inst|salida[1]~feeder_combout\);

-- Location: FF_X62_Y67_N13
\b2v_inst|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida[1]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(1));

-- Location: LCCOMB_X59_Y66_N6
\b2v_inst|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~1_cout\ = CARRY(!\b2v_inst|Mux21~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux21~34_combout\,
	datad => VCC,
	cout => \b2v_inst|Add2~1_cout\);

-- Location: LCCOMB_X59_Y66_N10
\b2v_inst|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~4_combout\ = (\b2v_inst|Mux19~25_combout\ & (!\b2v_inst|Add2~3\ & VCC)) # (!\b2v_inst|Mux19~25_combout\ & (\b2v_inst|Add2~3\ $ (GND)))
-- \b2v_inst|Add2~5\ = CARRY((!\b2v_inst|Mux19~25_combout\ & !\b2v_inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux19~25_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~3\,
	combout => \b2v_inst|Add2~4_combout\,
	cout => \b2v_inst|Add2~5\);

-- Location: LCCOMB_X60_Y66_N30
\b2v_inst|Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~0_combout\ = (\b2v_inst|indice~18_combout\ & (((!\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~29_combout\))) # (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~21_combout\ & (!\b2v_inst|indice~29_combout\)) # 
-- (!\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux19~0_combout\);

-- Location: LCCOMB_X60_Y66_N8
\b2v_inst|Mux19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~1_combout\ = (\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~29_combout\ $ (((\b2v_inst|indice~16_combout\) # (!\b2v_inst|indice~18_combout\))))) # (!\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~29_combout\ & 
-- ((\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux19~1_combout\);

-- Location: LCCOMB_X60_Y66_N18
\b2v_inst|Mux19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~2_combout\ = (\b2v_inst|indice~29_combout\) # ((\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~18_combout\ $ (!\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux19~2_combout\);

-- Location: LCCOMB_X60_Y66_N0
\b2v_inst|Mux19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~3_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~13_combout\) # ((!\b2v_inst|Mux19~1_combout\)))) # (!\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~13_combout\ & ((\b2v_inst|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|Mux19~1_combout\,
	datad => \b2v_inst|Mux19~2_combout\,
	combout => \b2v_inst|Mux19~3_combout\);

-- Location: LCCOMB_X60_Y66_N12
\b2v_inst|Mux19~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~5_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|Mux19~3_combout\ & (!\b2v_inst|Mux19~4_combout\)) # (!\b2v_inst|Mux19~3_combout\ & ((\b2v_inst|Mux19~0_combout\))))) # (!\b2v_inst|indice~13_combout\ & 
-- (((\b2v_inst|Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux19~4_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|Mux19~0_combout\,
	datad => \b2v_inst|Mux19~3_combout\,
	combout => \b2v_inst|Mux19~5_combout\);

-- Location: LCCOMB_X61_Y66_N28
\b2v_inst|Mux19~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~12_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~21_combout\))) # (!\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~18_combout\)))) # (!\b2v_inst|indice~29_combout\ & 
-- ((\b2v_inst|indice~18_combout\ & ((!\b2v_inst|indice~21_combout\))) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux19~12_combout\);

-- Location: LCCOMB_X61_Y66_N4
\b2v_inst|Mux19~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~16_combout\ = (\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~21_combout\ $ (((\b2v_inst|indice~29_combout\ & !\b2v_inst|indice~16_combout\))))) # (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~16_combout\ & 
-- (\b2v_inst|indice~29_combout\)) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux19~16_combout\);

-- Location: LCCOMB_X61_Y66_N14
\b2v_inst|Mux19~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~13_combout\ = (\b2v_inst|indice~29_combout\ & (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~18_combout\) # (!\b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~21_combout\ $ 
-- (((\b2v_inst|indice~18_combout\) # (\b2v_inst|indice~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux19~13_combout\);

-- Location: LCCOMB_X61_Y66_N12
\b2v_inst|Mux19~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~14_combout\ = (\b2v_inst|indice~29_combout\ & (((!\b2v_inst|indice~16_combout\ & \b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~18_combout\ $ 
-- (!\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux19~14_combout\);

-- Location: LCCOMB_X61_Y66_N2
\b2v_inst|Mux19~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~15_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~13_combout\) # ((!\b2v_inst|Mux19~13_combout\)))) # (!\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~13_combout\ & ((!\b2v_inst|Mux19~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|Mux19~13_combout\,
	datad => \b2v_inst|Mux19~14_combout\,
	combout => \b2v_inst|Mux19~15_combout\);

-- Location: LCCOMB_X61_Y66_N26
\b2v_inst|Mux19~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~17_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|Mux19~15_combout\ & ((!\b2v_inst|Mux19~16_combout\))) # (!\b2v_inst|Mux19~15_combout\ & (!\b2v_inst|Mux19~12_combout\)))) # (!\b2v_inst|indice~13_combout\ & 
-- (((\b2v_inst|Mux19~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|Mux19~12_combout\,
	datac => \b2v_inst|Mux19~16_combout\,
	datad => \b2v_inst|Mux19~15_combout\,
	combout => \b2v_inst|Mux19~17_combout\);

-- Location: LCCOMB_X61_Y66_N24
\b2v_inst|Mux19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~6_combout\ = (\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~18_combout\ $ ((\b2v_inst|indice~13_combout\)))) # (!\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~13_combout\ & 
-- !\b2v_inst|indice~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux19~6_combout\);

-- Location: LCCOMB_X61_Y66_N8
\b2v_inst|Mux19~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~10_combout\ = (\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~13_combout\ $ (((\b2v_inst|indice~18_combout\ & !\b2v_inst|indice~29_combout\))))) # (!\b2v_inst|indice~21_combout\ & (!\b2v_inst|indice~13_combout\ & 
-- (\b2v_inst|indice~18_combout\ $ (\b2v_inst|indice~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux19~10_combout\);

-- Location: LCCOMB_X61_Y66_N30
\b2v_inst|Mux19~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~7_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~13_combout\ & ((!\b2v_inst|indice~21_combout\))) # (!\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~29_combout\)))) # (!\b2v_inst|indice~18_combout\ & 
-- (\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~13_combout\ $ (\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux19~7_combout\);

-- Location: LCCOMB_X61_Y66_N16
\b2v_inst|Mux19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~8_combout\ = (\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~18_combout\ $ (\b2v_inst|indice~13_combout\)))) # (!\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux19~8_combout\);

-- Location: LCCOMB_X61_Y66_N18
\b2v_inst|Mux19~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~9_combout\ = (\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~16_combout\ & (\b2v_inst|Mux19~7_combout\)) # (!\b2v_inst|indice~16_combout\ & 
-- ((!\b2v_inst|Mux19~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|Mux19~7_combout\,
	datad => \b2v_inst|Mux19~8_combout\,
	combout => \b2v_inst|Mux19~9_combout\);

-- Location: LCCOMB_X61_Y66_N6
\b2v_inst|Mux19~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~11_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|Mux19~9_combout\ & ((!\b2v_inst|Mux19~10_combout\))) # (!\b2v_inst|Mux19~9_combout\ & (!\b2v_inst|Mux19~6_combout\)))) # (!\b2v_inst|indice~15_combout\ & 
-- (((\b2v_inst|Mux19~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|Mux19~6_combout\,
	datac => \b2v_inst|Mux19~10_combout\,
	datad => \b2v_inst|Mux19~9_combout\,
	combout => \b2v_inst|Mux19~11_combout\);

-- Location: LCCOMB_X61_Y66_N20
\b2v_inst|Mux19~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~18_combout\ = (\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~17_combout\) # ((\b2v_inst|Mux19~11_combout\)))) # (!\b2v_inst|indice~14_combout\ & (!\b2v_inst|indice~17_combout\ & (\b2v_inst|Mux19~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux19~17_combout\,
	datad => \b2v_inst|Mux19~11_combout\,
	combout => \b2v_inst|Mux19~18_combout\);

-- Location: LCCOMB_X62_Y69_N16
\b2v_inst|Mux19~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~19_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~21_combout\ & !\b2v_inst|indice~16_combout\)))) # 
-- (!\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~21_combout\ $ (((\b2v_inst|indice~15_combout\ & \b2v_inst|indice~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux19~19_combout\);

-- Location: LCCOMB_X62_Y69_N8
\b2v_inst|Mux19~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~23_combout\ = (\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~21_combout\) # (!\b2v_inst|indice~15_combout\)))) # (!\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~21_combout\ $ 
-- (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux19~23_combout\);

-- Location: LCCOMB_X62_Y69_N14
\b2v_inst|Mux19~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~20_combout\ = (\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~13_combout\ $ (\b2v_inst|indice~21_combout\ $ (\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~13_combout\ & 
-- ((\b2v_inst|indice~16_combout\) # (!\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux19~20_combout\);

-- Location: LCCOMB_X62_Y69_N28
\b2v_inst|Mux19~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~21_combout\ = (\b2v_inst|indice~13_combout\ & (!\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~15_combout\ $ (!\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~21_combout\ & 
-- ((!\b2v_inst|indice~16_combout\) # (!\b2v_inst|indice~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux19~21_combout\);

-- Location: LCCOMB_X62_Y69_N10
\b2v_inst|Mux19~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~22_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~29_combout\) # ((\b2v_inst|Mux19~20_combout\)))) # (!\b2v_inst|indice~18_combout\ & (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|Mux19~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|Mux19~20_combout\,
	datad => \b2v_inst|Mux19~21_combout\,
	combout => \b2v_inst|Mux19~22_combout\);

-- Location: LCCOMB_X62_Y69_N2
\b2v_inst|Mux19~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~24_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|Mux19~22_combout\ & ((!\b2v_inst|Mux19~23_combout\))) # (!\b2v_inst|Mux19~22_combout\ & (\b2v_inst|Mux19~19_combout\)))) # (!\b2v_inst|indice~29_combout\ & 
-- (((\b2v_inst|Mux19~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|Mux19~19_combout\,
	datac => \b2v_inst|Mux19~23_combout\,
	datad => \b2v_inst|Mux19~22_combout\,
	combout => \b2v_inst|Mux19~24_combout\);

-- Location: LCCOMB_X59_Y66_N30
\b2v_inst|Mux19~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~25_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux19~18_combout\ & ((\b2v_inst|Mux19~24_combout\))) # (!\b2v_inst|Mux19~18_combout\ & (\b2v_inst|Mux19~5_combout\)))) # (!\b2v_inst|indice~17_combout\ & 
-- (((\b2v_inst|Mux19~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux19~5_combout\,
	datac => \b2v_inst|Mux19~18_combout\,
	datad => \b2v_inst|Mux19~24_combout\,
	combout => \b2v_inst|Mux19~25_combout\);

-- Location: LCCOMB_X60_Y67_N10
\b2v_inst|salida1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~17_combout\ = (\b2v_inst|salida1[6]~13_combout\ & ((\b2v_inst|Mux8~25_combout\) # ((\b2v_inst|salida1[6]~14_combout\)))) # (!\b2v_inst|salida1[6]~13_combout\ & (((\b2v_inst|Mux19~25_combout\ & !\b2v_inst|salida1[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux8~25_combout\,
	datab => \b2v_inst|Mux19~25_combout\,
	datac => \b2v_inst|salida1[6]~13_combout\,
	datad => \b2v_inst|salida1[6]~14_combout\,
	combout => \b2v_inst|salida1~17_combout\);

-- Location: LCCOMB_X60_Y67_N26
\b2v_inst|salida1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~18_combout\ = (\b2v_inst|salida1[6]~14_combout\ & ((\b2v_inst|salida1~17_combout\ & (\b2v_inst|Add1~4_combout\)) # (!\b2v_inst|salida1~17_combout\ & ((\b2v_inst|Add2~4_combout\))))) # (!\b2v_inst|salida1[6]~14_combout\ & 
-- (((\b2v_inst|salida1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add1~4_combout\,
	datab => \b2v_inst|salida1[6]~14_combout\,
	datac => \b2v_inst|Add2~4_combout\,
	datad => \b2v_inst|salida1~17_combout\,
	combout => \b2v_inst|salida1~18_combout\);

-- Location: FF_X60_Y67_N27
\b2v_inst|salida1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~18_combout\,
	ena => \b2v_inst|salida1[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(2));

-- Location: LCCOMB_X63_Y63_N16
\b2v_inst|salida[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida[2]~feeder_combout\ = \b2v_inst|salida1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|salida1\(2),
	combout => \b2v_inst|salida[2]~feeder_combout\);

-- Location: FF_X63_Y63_N17
\b2v_inst|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida[2]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(2));

-- Location: LCCOMB_X60_Y64_N14
\b2v_inst|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~3_combout\ = (\b2v_inst|indice~14_combout\ & (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~16_combout\ $ (\b2v_inst|indice~15_combout\)))) # (!\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~15_combout\) # 
-- (\b2v_inst|indice~17_combout\ $ (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux7~3_combout\);

-- Location: LCCOMB_X57_Y65_N8
\b2v_inst|Mux18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~2_combout\ = (\b2v_inst|LessThan0~2_combout\ & (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|indice\(1) $ (\b2v_inst|indice\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(1),
	datab => \b2v_inst|indice\(4),
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|Mux18~2_combout\);

-- Location: LCCOMB_X57_Y65_N0
\b2v_inst|Mux18~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~28_combout\ = \b2v_inst|Mux18~2_combout\ $ (((\b2v_inst|LessThan0~2_combout\ & (\b2v_inst|indice\(3) & !\b2v_inst|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~2_combout\,
	datab => \b2v_inst|indice\(3),
	datac => \b2v_inst|Mux18~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|Mux18~28_combout\);

-- Location: LCCOMB_X59_Y64_N20
\b2v_inst|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~1_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~14_combout\ & (\b2v_inst|indice~16_combout\ & \b2v_inst|indice~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux7~1_combout\);

-- Location: LCCOMB_X59_Y64_N2
\b2v_inst|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~2_combout\ = (\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~21_combout\)) # (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~21_combout\ & ((\b2v_inst|Mux7~1_combout\))) # (!\b2v_inst|indice~21_combout\ & 
-- (!\b2v_inst|Mux18~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|Mux18~28_combout\,
	datad => \b2v_inst|Mux7~1_combout\,
	combout => \b2v_inst|Mux7~2_combout\);

-- Location: LCCOMB_X59_Y64_N16
\b2v_inst|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~4_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|Mux7~2_combout\ & ((\b2v_inst|Mux7~3_combout\))) # (!\b2v_inst|Mux7~2_combout\ & (!\b2v_inst|Mux7~0_combout\)))) # (!\b2v_inst|indice~29_combout\ & (((\b2v_inst|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux7~0_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|Mux7~3_combout\,
	datad => \b2v_inst|Mux7~2_combout\,
	combout => \b2v_inst|Mux7~4_combout\);

-- Location: LCCOMB_X59_Y64_N22
\b2v_inst|Mux7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~20_combout\ = (\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\) # (\b2v_inst|indice~29_combout\)))) # (!\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~29_combout\ & 
-- ((\b2v_inst|indice~16_combout\) # (!\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux7~20_combout\);

-- Location: LCCOMB_X59_Y64_N14
\b2v_inst|Mux7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~18_combout\ = (\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~21_combout\ $ (\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~17_combout\ 
-- $ (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux7~18_combout\);

-- Location: LCCOMB_X59_Y64_N0
\b2v_inst|Mux7~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~17_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~16_combout\ & !\b2v_inst|indice~29_combout\)) # (!\b2v_inst|indice~21_combout\ & (!\b2v_inst|indice~16_combout\ & 
-- \b2v_inst|indice~29_combout\)))) # (!\b2v_inst|indice~17_combout\ & (((\b2v_inst|indice~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux7~17_combout\);

-- Location: LCCOMB_X59_Y64_N24
\b2v_inst|Mux7~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~19_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~14_combout\) # ((!\b2v_inst|Mux7~17_combout\)))) # (!\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~14_combout\ & (!\b2v_inst|Mux7~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|Mux7~18_combout\,
	datad => \b2v_inst|Mux7~17_combout\,
	combout => \b2v_inst|Mux7~19_combout\);

-- Location: LCCOMB_X59_Y64_N4
\b2v_inst|Mux7~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~21_combout\ = (\b2v_inst|indice~14_combout\ & ((\b2v_inst|Mux7~19_combout\ & ((\b2v_inst|Mux7~20_combout\))) # (!\b2v_inst|Mux7~19_combout\ & (\b2v_inst|Mux7~16_combout\)))) # (!\b2v_inst|indice~14_combout\ & 
-- (((\b2v_inst|Mux7~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux7~16_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|Mux7~20_combout\,
	datad => \b2v_inst|Mux7~19_combout\,
	combout => \b2v_inst|Mux7~21_combout\);

-- Location: LCCOMB_X60_Y64_N4
\b2v_inst|Mux7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~11_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~14_combout\ & ((!\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~14_combout\ & (\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~15_combout\ & 
-- (\b2v_inst|indice~14_combout\ $ (((\b2v_inst|indice~17_combout\ & !\b2v_inst|indice~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux7~11_combout\);

-- Location: LCCOMB_X60_Y64_N28
\b2v_inst|Mux7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~12_combout\ = (\b2v_inst|indice~29_combout\ & (((\b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~21_combout\ & (\b2v_inst|Mux18~3_combout\)) # (!\b2v_inst|indice~21_combout\ & 
-- ((\b2v_inst|Mux18~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~3_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|Mux18~2_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux7~12_combout\);

-- Location: LCCOMB_X60_Y64_N12
\b2v_inst|Mux7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~14_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|Mux7~12_combout\ & (\b2v_inst|Mux7~13_combout\)) # (!\b2v_inst|Mux7~12_combout\ & ((!\b2v_inst|Mux7~11_combout\))))) # (!\b2v_inst|indice~29_combout\ & 
-- (((\b2v_inst|Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux7~13_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|Mux7~11_combout\,
	datad => \b2v_inst|Mux7~12_combout\,
	combout => \b2v_inst|Mux7~14_combout\);

-- Location: LCCOMB_X59_Y64_N18
\b2v_inst|Mux7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~9_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~21_combout\ & (!\b2v_inst|indice~15_combout\ & !\b2v_inst|indice~29_combout\)) # (!\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~29_combout\))))) # 
-- (!\b2v_inst|indice~16_combout\ & (((!\b2v_inst|indice~15_combout\ & \b2v_inst|indice~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux7~9_combout\);

-- Location: LCCOMB_X59_Y64_N30
\b2v_inst|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~5_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~21_combout\)) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~29_combout\))))) # (!\b2v_inst|indice~15_combout\ & 
-- ((\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux7~5_combout\);

-- Location: LCCOMB_X59_Y64_N8
\b2v_inst|Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~6_combout\ = (\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~15_combout\ $ (((\b2v_inst|indice~16_combout\) # (\b2v_inst|indice~29_combout\))))) # (!\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~15_combout\) # 
-- ((\b2v_inst|indice~16_combout\ & !\b2v_inst|indice~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux7~6_combout\);

-- Location: LCCOMB_X59_Y64_N10
\b2v_inst|Mux7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~7_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~15_combout\ & ((!\b2v_inst|indice~29_combout\))) # (!\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~16_combout\ & 
-- ((\b2v_inst|indice~21_combout\) # (\b2v_inst|indice~29_combout\ $ (\b2v_inst|indice~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux7~7_combout\);

-- Location: LCCOMB_X59_Y64_N28
\b2v_inst|Mux7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~8_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~14_combout\ & (\b2v_inst|Mux7~6_combout\)) # (!\b2v_inst|indice~14_combout\ & 
-- ((!\b2v_inst|Mux7~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|Mux7~6_combout\,
	datad => \b2v_inst|Mux7~7_combout\,
	combout => \b2v_inst|Mux7~8_combout\);

-- Location: LCCOMB_X59_Y64_N12
\b2v_inst|Mux7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~10_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux7~8_combout\ & (!\b2v_inst|Mux7~9_combout\)) # (!\b2v_inst|Mux7~8_combout\ & ((\b2v_inst|Mux7~5_combout\))))) # (!\b2v_inst|indice~17_combout\ & (((\b2v_inst|Mux7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux7~9_combout\,
	datac => \b2v_inst|Mux7~5_combout\,
	datad => \b2v_inst|Mux7~8_combout\,
	combout => \b2v_inst|Mux7~10_combout\);

-- Location: LCCOMB_X59_Y64_N6
\b2v_inst|Mux7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~15_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~13_combout\) # ((\b2v_inst|Mux7~10_combout\)))) # (!\b2v_inst|indice~18_combout\ & (!\b2v_inst|indice~13_combout\ & (\b2v_inst|Mux7~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|Mux7~14_combout\,
	datad => \b2v_inst|Mux7~10_combout\,
	combout => \b2v_inst|Mux7~15_combout\);

-- Location: LCCOMB_X59_Y64_N26
\b2v_inst|Mux7~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~22_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|Mux7~15_combout\ & ((\b2v_inst|Mux7~21_combout\))) # (!\b2v_inst|Mux7~15_combout\ & (\b2v_inst|Mux7~4_combout\)))) # (!\b2v_inst|indice~13_combout\ & 
-- (((\b2v_inst|Mux7~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|Mux7~4_combout\,
	datac => \b2v_inst|Mux7~21_combout\,
	datad => \b2v_inst|Mux7~15_combout\,
	combout => \b2v_inst|Mux7~22_combout\);

-- Location: LCCOMB_X59_Y67_N10
\b2v_inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~6_combout\ = (\b2v_inst|Mux7~22_combout\ & ((\b2v_inst|Add1~5\) # (GND))) # (!\b2v_inst|Mux7~22_combout\ & (!\b2v_inst|Add1~5\))
-- \b2v_inst|Add1~7\ = CARRY((\b2v_inst|Mux7~22_combout\) # (!\b2v_inst|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux7~22_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~5\,
	combout => \b2v_inst|Add1~6_combout\,
	cout => \b2v_inst|Add1~7\);

-- Location: LCCOMB_X59_Y66_N12
\b2v_inst|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~6_combout\ = (\b2v_inst|Mux18~26_combout\ & ((\b2v_inst|Add2~5\) # (GND))) # (!\b2v_inst|Mux18~26_combout\ & (!\b2v_inst|Add2~5\))
-- \b2v_inst|Add2~7\ = CARRY((\b2v_inst|Mux18~26_combout\) # (!\b2v_inst|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~26_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~5\,
	combout => \b2v_inst|Add2~6_combout\,
	cout => \b2v_inst|Add2~7\);

-- Location: LCCOMB_X58_Y66_N2
\b2v_inst|salida1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~19_combout\ = (\b2v_inst|salida1[6]~13_combout\ & (((\b2v_inst|salida1[6]~14_combout\)))) # (!\b2v_inst|salida1[6]~13_combout\ & ((\b2v_inst|salida1[6]~14_combout\ & ((\b2v_inst|Add2~6_combout\))) # (!\b2v_inst|salida1[6]~14_combout\ & 
-- (\b2v_inst|Mux18~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~26_combout\,
	datab => \b2v_inst|Add2~6_combout\,
	datac => \b2v_inst|salida1[6]~13_combout\,
	datad => \b2v_inst|salida1[6]~14_combout\,
	combout => \b2v_inst|salida1~19_combout\);

-- Location: LCCOMB_X58_Y66_N24
\b2v_inst|salida1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~20_combout\ = (\b2v_inst|salida1[6]~13_combout\ & ((\b2v_inst|salida1~19_combout\ & ((\b2v_inst|Add1~6_combout\))) # (!\b2v_inst|salida1~19_combout\ & (\b2v_inst|Mux7~22_combout\)))) # (!\b2v_inst|salida1[6]~13_combout\ & 
-- (((\b2v_inst|salida1~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1[6]~13_combout\,
	datab => \b2v_inst|Mux7~22_combout\,
	datac => \b2v_inst|Add1~6_combout\,
	datad => \b2v_inst|salida1~19_combout\,
	combout => \b2v_inst|salida1~20_combout\);

-- Location: FF_X58_Y66_N25
\b2v_inst|salida1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~20_combout\,
	ena => \b2v_inst|salida1[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(3));

-- Location: FF_X62_Y65_N17
\b2v_inst|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida1\(3),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(3));

-- Location: LCCOMB_X59_Y65_N26
\b2v_inst|Mux17~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~17_combout\ = (\b2v_inst|indice~15_combout\ & (((!\b2v_inst|indice~16_combout\ & \b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice~13_combout\))) # (!\b2v_inst|indice~15_combout\ & (((!\b2v_inst|indice~14_combout\ & 
-- \b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~13_combout\,
	combout => \b2v_inst|Mux17~17_combout\);

-- Location: LCCOMB_X59_Y65_N14
\b2v_inst|Mux17~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~19_combout\ = (\b2v_inst|indice~14_combout\ & (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~13_combout\) # (!\b2v_inst|indice~15_combout\)))) # (!\b2v_inst|indice~14_combout\ & (\b2v_inst|indice~16_combout\ & 
-- ((\b2v_inst|indice~15_combout\) # (!\b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|indice~13_combout\,
	combout => \b2v_inst|Mux17~19_combout\);

-- Location: LCCOMB_X59_Y65_N16
\b2v_inst|Mux17~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~20_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|Mux17~18_combout\) # ((\b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~18_combout\ & (((\b2v_inst|Mux17~19_combout\ & !\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux17~18_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|Mux17~19_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux17~20_combout\);

-- Location: LCCOMB_X59_Y65_N28
\b2v_inst|Mux17~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~22_combout\ = (\b2v_inst|indice~21_combout\ & ((\b2v_inst|Mux17~20_combout\ & (!\b2v_inst|Mux17~21_combout\)) # (!\b2v_inst|Mux17~20_combout\ & ((\b2v_inst|Mux17~17_combout\))))) # (!\b2v_inst|indice~21_combout\ & 
-- (((\b2v_inst|Mux17~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux17~21_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|Mux17~17_combout\,
	datad => \b2v_inst|Mux17~20_combout\,
	combout => \b2v_inst|Mux17~22_combout\);

-- Location: LCCOMB_X61_Y69_N14
\b2v_inst|Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~1_combout\ = (\b2v_inst|indice~21_combout\ & (((\b2v_inst|indice~13_combout\ & !\b2v_inst|indice~18_combout\)) # (!\b2v_inst|indice~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux17~1_combout\);

-- Location: LCCOMB_X61_Y69_N12
\b2v_inst|Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~0_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~18_combout\) # (\b2v_inst|indice~14_combout\ $ (\b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~14_combout\ & 
-- (\b2v_inst|indice~18_combout\ & !\b2v_inst|indice~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux17~0_combout\);

-- Location: LCCOMB_X61_Y69_N30
\b2v_inst|Mux17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~3_combout\ = (\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~18_combout\ & ((\b2v_inst|Mux17~0_combout\) # (!\b2v_inst|Mux17~1_combout\)))) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|Mux17~0_combout\ & 
-- ((!\b2v_inst|Mux17~1_combout\))) # (!\b2v_inst|Mux17~0_combout\ & (\b2v_inst|indice~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|Mux17~1_combout\,
	datad => \b2v_inst|Mux17~0_combout\,
	combout => \b2v_inst|Mux17~3_combout\);

-- Location: LCCOMB_X61_Y69_N0
\b2v_inst|Mux17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~2_combout\ = (\b2v_inst|indice~15_combout\ & (((!\b2v_inst|indice~18_combout\ & !\b2v_inst|Mux17~1_combout\)) # (!\b2v_inst|Mux17~0_combout\))) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|Mux17~0_combout\ & 
-- (\b2v_inst|indice~18_combout\)) # (!\b2v_inst|Mux17~0_combout\ & ((\b2v_inst|Mux17~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|Mux17~1_combout\,
	datad => \b2v_inst|Mux17~0_combout\,
	combout => \b2v_inst|Mux17~2_combout\);

-- Location: LCCOMB_X61_Y69_N20
\b2v_inst|Mux17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~4_combout\ = \b2v_inst|Mux17~2_combout\ $ (((!\b2v_inst|indice~16_combout\ & !\b2v_inst|Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|Mux17~3_combout\,
	datad => \b2v_inst|Mux17~2_combout\,
	combout => \b2v_inst|Mux17~4_combout\);

-- Location: LCCOMB_X57_Y65_N16
\b2v_inst|Mux17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~12_combout\ = (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~14_combout\ $ (((\b2v_inst|indice~13_combout\) # (\b2v_inst|indice~15_combout\))))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~14_combout\ & 
-- ((!\b2v_inst|indice~15_combout\) # (!\b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux17~12_combout\);

-- Location: LCCOMB_X57_Y65_N18
\b2v_inst|Mux17~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~13_combout\ = (\b2v_inst|indice~18_combout\ & (\b2v_inst|Mux17~11_combout\ & (\b2v_inst|indice~21_combout\))) # (!\b2v_inst|indice~18_combout\ & (((!\b2v_inst|Mux17~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux17~11_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|Mux17~12_combout\,
	combout => \b2v_inst|Mux17~13_combout\);

-- Location: LCCOMB_X57_Y65_N10
\b2v_inst|Mux17~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~15_combout\ = (\b2v_inst|Mux17~13_combout\) # ((!\b2v_inst|indice~21_combout\ & ((!\b2v_inst|indice~18_combout\) # (!\b2v_inst|Mux17~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux17~14_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|Mux17~13_combout\,
	combout => \b2v_inst|Mux17~15_combout\);

-- Location: LCCOMB_X58_Y66_N14
\b2v_inst|Mux17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~6_combout\ = (\b2v_inst|indice~18_combout\ & (((\b2v_inst|indice~14_combout\)))) # (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~16_combout\ $ (!\b2v_inst|indice~14_combout\))) # 
-- (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~16_combout\) # (\b2v_inst|indice~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux17~6_combout\);

-- Location: LCCOMB_X58_Y66_N4
\b2v_inst|Mux17~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~7_combout\ = (\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~18_combout\) # (!\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~16_combout\ & 
-- (\b2v_inst|indice~18_combout\ $ (\b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux17~7_combout\);

-- Location: LCCOMB_X58_Y66_N30
\b2v_inst|Mux17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~8_combout\ = (\b2v_inst|indice~13_combout\ & (((\b2v_inst|indice~21_combout\)) # (!\b2v_inst|Mux17~6_combout\))) # (!\b2v_inst|indice~13_combout\ & (((!\b2v_inst|Mux17~7_combout\ & !\b2v_inst|indice~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|Mux17~6_combout\,
	datac => \b2v_inst|Mux17~7_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux17~8_combout\);

-- Location: LCCOMB_X58_Y66_N28
\b2v_inst|Mux17~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~5_combout\ = \b2v_inst|indice~15_combout\ $ (((\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\ & !\b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux17~5_combout\);

-- Location: LCCOMB_X58_Y66_N10
\b2v_inst|Mux17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~10_combout\ = (\b2v_inst|indice~21_combout\ & ((\b2v_inst|Mux17~8_combout\ & (\b2v_inst|Mux17~9_combout\)) # (!\b2v_inst|Mux17~8_combout\ & ((\b2v_inst|Mux17~5_combout\))))) # (!\b2v_inst|indice~21_combout\ & 
-- (((\b2v_inst|Mux17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux17~9_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|Mux17~8_combout\,
	datad => \b2v_inst|Mux17~5_combout\,
	combout => \b2v_inst|Mux17~10_combout\);

-- Location: LCCOMB_X58_Y66_N16
\b2v_inst|Mux17~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~16_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~17_combout\) # ((\b2v_inst|Mux17~10_combout\)))) # (!\b2v_inst|indice~29_combout\ & (!\b2v_inst|indice~17_combout\ & (\b2v_inst|Mux17~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux17~15_combout\,
	datad => \b2v_inst|Mux17~10_combout\,
	combout => \b2v_inst|Mux17~16_combout\);

-- Location: LCCOMB_X58_Y66_N6
\b2v_inst|Mux17~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~23_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux17~16_combout\ & (\b2v_inst|Mux17~22_combout\)) # (!\b2v_inst|Mux17~16_combout\ & ((\b2v_inst|Mux17~4_combout\))))) # (!\b2v_inst|indice~17_combout\ & 
-- (((\b2v_inst|Mux17~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux17~22_combout\,
	datac => \b2v_inst|Mux17~4_combout\,
	datad => \b2v_inst|Mux17~16_combout\,
	combout => \b2v_inst|Mux17~23_combout\);

-- Location: LCCOMB_X60_Y67_N8
\b2v_inst|salida1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~21_combout\ = (\b2v_inst|salida1[6]~13_combout\ & ((\b2v_inst|Mux6~19_combout\) # ((\b2v_inst|salida1[6]~14_combout\)))) # (!\b2v_inst|salida1[6]~13_combout\ & (((\b2v_inst|Mux17~23_combout\ & !\b2v_inst|salida1[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux6~19_combout\,
	datab => \b2v_inst|Mux17~23_combout\,
	datac => \b2v_inst|salida1[6]~13_combout\,
	datad => \b2v_inst|salida1[6]~14_combout\,
	combout => \b2v_inst|salida1~21_combout\);

-- Location: LCCOMB_X59_Y66_N14
\b2v_inst|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~8_combout\ = (\b2v_inst|Mux17~23_combout\ & (!\b2v_inst|Add2~7\ & VCC)) # (!\b2v_inst|Mux17~23_combout\ & (\b2v_inst|Add2~7\ $ (GND)))
-- \b2v_inst|Add2~9\ = CARRY((!\b2v_inst|Mux17~23_combout\ & !\b2v_inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux17~23_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~7\,
	combout => \b2v_inst|Add2~8_combout\,
	cout => \b2v_inst|Add2~9\);

-- Location: LCCOMB_X60_Y67_N28
\b2v_inst|salida1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~22_combout\ = (\b2v_inst|salida1[6]~14_combout\ & ((\b2v_inst|salida1~21_combout\ & (\b2v_inst|Add1~8_combout\)) # (!\b2v_inst|salida1~21_combout\ & ((\b2v_inst|Add2~8_combout\))))) # (!\b2v_inst|salida1[6]~14_combout\ & 
-- (((\b2v_inst|salida1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add1~8_combout\,
	datab => \b2v_inst|salida1[6]~14_combout\,
	datac => \b2v_inst|salida1~21_combout\,
	datad => \b2v_inst|Add2~8_combout\,
	combout => \b2v_inst|salida1~22_combout\);

-- Location: FF_X60_Y67_N29
\b2v_inst|salida1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~22_combout\,
	ena => \b2v_inst|salida1[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(4));

-- Location: LCCOMB_X63_Y60_N20
\b2v_inst|salida[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida[4]~feeder_combout\ = \b2v_inst|salida1\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|salida1\(4),
	combout => \b2v_inst|salida[4]~feeder_combout\);

-- Location: FF_X63_Y60_N21
\b2v_inst|salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida[4]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(4));

-- Location: LCCOMB_X58_Y66_N0
\b2v_inst|Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~8_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~18_combout\ & ((!\b2v_inst|indice~14_combout\) # (!\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\)))) # 
-- (!\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~18_combout\ $ (\b2v_inst|indice~16_combout\ $ (\b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux5~8_combout\);

-- Location: LCCOMB_X58_Y66_N8
\b2v_inst|Mux5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~12_combout\ = (\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\ $ (!\b2v_inst|indice~14_combout\)))) # (!\b2v_inst|indice~15_combout\ & (((\b2v_inst|indice~16_combout\) # 
-- (\b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux5~12_combout\);

-- Location: LCCOMB_X58_Y66_N26
\b2v_inst|Mux5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~9_combout\ = (\b2v_inst|indice~15_combout\ & (((!\b2v_inst|indice~16_combout\ & !\b2v_inst|indice~14_combout\)))) # (!\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~18_combout\) # 
-- (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux5~9_combout\);

-- Location: LCCOMB_X58_Y66_N20
\b2v_inst|Mux5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~10_combout\ = \b2v_inst|indice~15_combout\ $ (((\b2v_inst|indice~18_combout\ & (!\b2v_inst|indice~16_combout\ & !\b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\ $ 
-- (\b2v_inst|indice~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux5~10_combout\);

-- Location: LCCOMB_X58_Y66_N18
\b2v_inst|Mux5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~11_combout\ = (\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~17_combout\)) # (!\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~17_combout\ & (\b2v_inst|Mux5~9_combout\)) # (!\b2v_inst|indice~17_combout\ & 
-- ((\b2v_inst|Mux5~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux5~9_combout\,
	datad => \b2v_inst|Mux5~10_combout\,
	combout => \b2v_inst|Mux5~11_combout\);

-- Location: LCCOMB_X58_Y66_N22
\b2v_inst|Mux5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~13_combout\ = (\b2v_inst|indice~13_combout\ & ((\b2v_inst|Mux5~11_combout\ & ((\b2v_inst|Mux5~12_combout\))) # (!\b2v_inst|Mux5~11_combout\ & (\b2v_inst|Mux5~8_combout\)))) # (!\b2v_inst|indice~13_combout\ & 
-- (((\b2v_inst|Mux5~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|Mux5~8_combout\,
	datac => \b2v_inst|Mux5~12_combout\,
	datad => \b2v_inst|Mux5~11_combout\,
	combout => \b2v_inst|Mux5~13_combout\);

-- Location: LCCOMB_X58_Y67_N30
\b2v_inst|Mux5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~26_combout\ = (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~13_combout\ & \b2v_inst|indice~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux5~26_combout\);

-- Location: LCCOMB_X58_Y67_N8
\b2v_inst|Mux5~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~24_combout\ = (\b2v_inst|indice\(2)) # (\b2v_inst|indice\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice\(2),
	datad => \b2v_inst|indice\(4),
	combout => \b2v_inst|Mux5~24_combout\);

-- Location: LCCOMB_X58_Y67_N16
\b2v_inst|Mux5~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~25_combout\ = (\b2v_inst|indice\(5) & (\b2v_inst|indice~19_combout\ & ((\b2v_inst|Mux5~24_combout\) # (\b2v_inst|indice\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(5),
	datab => \b2v_inst|Mux5~24_combout\,
	datac => \b2v_inst|indice~19_combout\,
	datad => \b2v_inst|indice\(3),
	combout => \b2v_inst|Mux5~25_combout\);

-- Location: LCCOMB_X58_Y67_N22
\b2v_inst|Mux5~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~27_combout\ = (\b2v_inst|Mux5~25_combout\) # ((!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\ $ (!\b2v_inst|Mux5~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|Mux5~26_combout\,
	datad => \b2v_inst|Mux5~25_combout\,
	combout => \b2v_inst|Mux5~27_combout\);

-- Location: LCCOMB_X62_Y64_N30
\b2v_inst|Mux5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~15_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~14_combout\))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux5~15_combout\);

-- Location: LCCOMB_X62_Y64_N20
\b2v_inst|Mux5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~14_combout\ = (\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~17_combout\ $ (!\b2v_inst|indice~14_combout\)))) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~14_combout\ & 
-- ((!\b2v_inst|indice~17_combout\) # (!\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux5~14_combout\);

-- Location: LCCOMB_X62_Y64_N4
\b2v_inst|Mux5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~16_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|Mux5~15_combout\) # ((!\b2v_inst|indice~13_combout\ & \b2v_inst|Mux5~14_combout\)))) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~13_combout\ & (\b2v_inst|Mux5~15_combout\ $ 
-- (\b2v_inst|Mux5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|Mux5~15_combout\,
	datad => \b2v_inst|Mux5~14_combout\,
	combout => \b2v_inst|Mux5~16_combout\);

-- Location: LCCOMB_X62_Y64_N2
\b2v_inst|Mux5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~17_combout\ = (\b2v_inst|indice~18_combout\ & (\b2v_inst|Mux5~14_combout\ & ((\b2v_inst|indice~13_combout\) # (\b2v_inst|Mux5~15_combout\)))) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~13_combout\ & (\b2v_inst|Mux5~15_combout\ & 
-- !\b2v_inst|Mux5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|Mux5~15_combout\,
	datad => \b2v_inst|Mux5~14_combout\,
	combout => \b2v_inst|Mux5~17_combout\);

-- Location: LCCOMB_X62_Y64_N8
\b2v_inst|Mux5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~18_combout\ = \b2v_inst|Mux5~16_combout\ $ (((\b2v_inst|Mux5~17_combout\) # (!\b2v_inst|indice~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|Mux5~16_combout\,
	datad => \b2v_inst|Mux5~17_combout\,
	combout => \b2v_inst|Mux5~18_combout\);

-- Location: LCCOMB_X62_Y64_N18
\b2v_inst|Mux5~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~19_combout\ = (\b2v_inst|indice~18_combout\ & ((!\b2v_inst|indice~15_combout\))) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux5~19_combout\);

-- Location: LCCOMB_X62_Y64_N22
\b2v_inst|Mux5~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~21_combout\ = (\b2v_inst|Mux5~29_combout\ & ((\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~13_combout\)) # (!\b2v_inst|indice~16_combout\ & ((!\b2v_inst|Mux5~19_combout\) # (!\b2v_inst|indice~13_combout\))))) # 
-- (!\b2v_inst|Mux5~29_combout\ & (\b2v_inst|indice~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux5~29_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|Mux5~19_combout\,
	combout => \b2v_inst|Mux5~21_combout\);

-- Location: LCCOMB_X62_Y64_N0
\b2v_inst|Mux5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~20_combout\ = (\b2v_inst|Mux5~29_combout\ & ((\b2v_inst|indice~16_combout\ $ (!\b2v_inst|Mux5~19_combout\)) # (!\b2v_inst|indice~13_combout\))) # (!\b2v_inst|Mux5~29_combout\ & (((\b2v_inst|indice~13_combout\) # 
-- (\b2v_inst|Mux5~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux5~29_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|Mux5~19_combout\,
	combout => \b2v_inst|Mux5~20_combout\);

-- Location: LCCOMB_X62_Y64_N24
\b2v_inst|Mux5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~22_combout\ = \b2v_inst|Mux5~21_combout\ $ (((\b2v_inst|indice~14_combout\ & \b2v_inst|Mux5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|Mux5~21_combout\,
	datad => \b2v_inst|Mux5~20_combout\,
	combout => \b2v_inst|Mux5~22_combout\);

-- Location: LCCOMB_X62_Y64_N14
\b2v_inst|Mux5~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~23_combout\ = (\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~29_combout\) # ((\b2v_inst|Mux5~18_combout\)))) # (!\b2v_inst|indice~21_combout\ & (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|Mux5~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|Mux5~18_combout\,
	datad => \b2v_inst|Mux5~22_combout\,
	combout => \b2v_inst|Mux5~23_combout\);

-- Location: LCCOMB_X58_Y67_N6
\b2v_inst|Mux5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~28_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|Mux5~23_combout\ & ((\b2v_inst|Mux5~27_combout\))) # (!\b2v_inst|Mux5~23_combout\ & (\b2v_inst|Mux5~13_combout\)))) # (!\b2v_inst|indice~29_combout\ & 
-- (((\b2v_inst|Mux5~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|Mux5~13_combout\,
	datac => \b2v_inst|Mux5~27_combout\,
	datad => \b2v_inst|Mux5~23_combout\,
	combout => \b2v_inst|Mux5~28_combout\);

-- Location: LCCOMB_X59_Y67_N14
\b2v_inst|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~10_combout\ = (\b2v_inst|Mux5~28_combout\ & ((\b2v_inst|Add1~9\) # (GND))) # (!\b2v_inst|Mux5~28_combout\ & (!\b2v_inst|Add1~9\))
-- \b2v_inst|Add1~11\ = CARRY((\b2v_inst|Mux5~28_combout\) # (!\b2v_inst|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux5~28_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~9\,
	combout => \b2v_inst|Add1~10_combout\,
	cout => \b2v_inst|Add1~11\);

-- Location: LCCOMB_X57_Y66_N16
\b2v_inst|Mux16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~2_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~13_combout\) # ((\b2v_inst|indice~14_combout\)))) # (!\b2v_inst|indice~18_combout\ & (((!\b2v_inst|indice~16_combout\ & \b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux16~2_combout\);

-- Location: LCCOMB_X57_Y66_N26
\b2v_inst|Mux16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~3_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~15_combout\)) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~15_combout\ & ((\b2v_inst|Mux16~2_combout\))) # (!\b2v_inst|indice~15_combout\ & 
-- (\b2v_inst|indice~16_combout\ & !\b2v_inst|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|Mux16~2_combout\,
	combout => \b2v_inst|Mux16~3_combout\);

-- Location: LCCOMB_X57_Y66_N12
\b2v_inst|Mux16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~4_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~18_combout\ & ((!\b2v_inst|indice~14_combout\))) # (!\b2v_inst|indice~18_combout\ & (!\b2v_inst|indice~16_combout\ & \b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux16~4_combout\);

-- Location: LCCOMB_X57_Y66_N22
\b2v_inst|Mux16~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~5_combout\ = (\b2v_inst|Mux16~3_combout\ & ((\b2v_inst|indice~13_combout\ $ (\b2v_inst|indice~14_combout\)) # (!\b2v_inst|Mux16~4_combout\))) # (!\b2v_inst|Mux16~3_combout\ & (\b2v_inst|Mux16~4_combout\ & ((\b2v_inst|indice~14_combout\) # 
-- (!\b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|Mux16~3_combout\,
	datad => \b2v_inst|Mux16~4_combout\,
	combout => \b2v_inst|Mux16~5_combout\);

-- Location: LCCOMB_X57_Y66_N8
\b2v_inst|Mux16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~10_combout\ = \b2v_inst|indice~15_combout\ $ (((\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\ $ (\b2v_inst|indice~14_combout\))) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\ & 
-- \b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux16~10_combout\);

-- Location: LCCOMB_X57_Y66_N4
\b2v_inst|Mux16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~6_combout\ = (\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~18_combout\ $ (\b2v_inst|indice~16_combout\ $ (!\b2v_inst|indice~14_combout\)))) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~18_combout\ & 
-- (!\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~16_combout\) # (\b2v_inst|indice~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux16~6_combout\);

-- Location: LCCOMB_X57_Y66_N2
\b2v_inst|Mux16~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~7_combout\ = (\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~14_combout\ & ((!\b2v_inst|indice~16_combout\) # (!\b2v_inst|indice~18_combout\)))) # (!\b2v_inst|indice~15_combout\ & (((\b2v_inst|indice~16_combout\ & 
-- \b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux16~7_combout\);

-- Location: LCCOMB_X57_Y66_N28
\b2v_inst|Mux16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~8_combout\ = (\b2v_inst|indice~15_combout\ & (((!\b2v_inst|indice~14_combout\) # (!\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\ $ 
-- (!\b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux16~8_combout\);

-- Location: LCCOMB_X57_Y66_N18
\b2v_inst|Mux16~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~9_combout\ = (\b2v_inst|indice~17_combout\ & (((\b2v_inst|indice~13_combout\)))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~13_combout\ & (\b2v_inst|Mux16~7_combout\)) # (!\b2v_inst|indice~13_combout\ & 
-- ((\b2v_inst|Mux16~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux16~7_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|Mux16~8_combout\,
	combout => \b2v_inst|Mux16~9_combout\);

-- Location: LCCOMB_X57_Y66_N14
\b2v_inst|Mux16~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~11_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux16~9_combout\ & (!\b2v_inst|Mux16~10_combout\)) # (!\b2v_inst|Mux16~9_combout\ & ((\b2v_inst|Mux16~6_combout\))))) # (!\b2v_inst|indice~17_combout\ & 
-- (((\b2v_inst|Mux16~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux16~10_combout\,
	datac => \b2v_inst|Mux16~6_combout\,
	datad => \b2v_inst|Mux16~9_combout\,
	combout => \b2v_inst|Mux16~11_combout\);

-- Location: LCCOMB_X62_Y66_N14
\b2v_inst|Mux16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~14_combout\ = (!\b2v_inst|indice~13_combout\ & (\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~15_combout\ & !\b2v_inst|indice~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux16~14_combout\);

-- Location: LCCOMB_X62_Y67_N28
\b2v_inst|Mux16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~12_combout\ = (!\b2v_inst|indice\(4)) # (!\b2v_inst|indice\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice\(2),
	datad => \b2v_inst|indice\(4),
	combout => \b2v_inst|Mux16~12_combout\);

-- Location: LCCOMB_X62_Y66_N16
\b2v_inst|Mux16~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~13_combout\ = ((!\b2v_inst|indice\(5) & ((\b2v_inst|Mux16~12_combout\) # (!\b2v_inst|indice\(3))))) # (!\b2v_inst|indice~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(5),
	datab => \b2v_inst|Mux16~12_combout\,
	datac => \b2v_inst|indice~19_combout\,
	datad => \b2v_inst|indice\(3),
	combout => \b2v_inst|Mux16~13_combout\);

-- Location: LCCOMB_X62_Y66_N8
\b2v_inst|Mux16~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~15_combout\ = (\b2v_inst|Mux16~13_combout\) # ((\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~16_combout\ $ (\b2v_inst|Mux16~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|Mux16~14_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|Mux16~13_combout\,
	combout => \b2v_inst|Mux16~15_combout\);

-- Location: LCCOMB_X57_Y66_N20
\b2v_inst|Mux16~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~16_combout\ = (\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~21_combout\)) # (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~21_combout\ & (\b2v_inst|Mux16~11_combout\)) # (!\b2v_inst|indice~21_combout\ & 
-- ((\b2v_inst|Mux16~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|Mux16~11_combout\,
	datad => \b2v_inst|Mux16~15_combout\,
	combout => \b2v_inst|Mux16~16_combout\);

-- Location: LCCOMB_X57_Y66_N24
\b2v_inst|Mux16~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~20_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|Mux16~16_combout\ & (\b2v_inst|Mux16~22_combout\)) # (!\b2v_inst|Mux16~16_combout\ & ((\b2v_inst|Mux16~5_combout\))))) # (!\b2v_inst|indice~29_combout\ & 
-- (((\b2v_inst|Mux16~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux16~22_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|Mux16~5_combout\,
	datad => \b2v_inst|Mux16~16_combout\,
	combout => \b2v_inst|Mux16~20_combout\);

-- Location: LCCOMB_X59_Y66_N16
\b2v_inst|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~10_combout\ = (\b2v_inst|Mux16~20_combout\ & ((\b2v_inst|Add2~9\) # (GND))) # (!\b2v_inst|Mux16~20_combout\ & (!\b2v_inst|Add2~9\))
-- \b2v_inst|Add2~11\ = CARRY((\b2v_inst|Mux16~20_combout\) # (!\b2v_inst|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux16~20_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~9\,
	combout => \b2v_inst|Add2~10_combout\,
	cout => \b2v_inst|Add2~11\);

-- Location: LCCOMB_X58_Y67_N28
\b2v_inst|salida1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~23_combout\ = (\b2v_inst|salida1[6]~13_combout\ & (((\b2v_inst|salida1[6]~14_combout\)))) # (!\b2v_inst|salida1[6]~13_combout\ & ((\b2v_inst|salida1[6]~14_combout\ & ((\b2v_inst|Add2~10_combout\))) # (!\b2v_inst|salida1[6]~14_combout\ & 
-- (\b2v_inst|Mux16~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux16~20_combout\,
	datab => \b2v_inst|salida1[6]~13_combout\,
	datac => \b2v_inst|salida1[6]~14_combout\,
	datad => \b2v_inst|Add2~10_combout\,
	combout => \b2v_inst|salida1~23_combout\);

-- Location: LCCOMB_X58_Y67_N26
\b2v_inst|salida1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~24_combout\ = (\b2v_inst|salida1[6]~13_combout\ & ((\b2v_inst|salida1~23_combout\ & ((\b2v_inst|Add1~10_combout\))) # (!\b2v_inst|salida1~23_combout\ & (\b2v_inst|Mux5~28_combout\)))) # (!\b2v_inst|salida1[6]~13_combout\ & 
-- (((\b2v_inst|salida1~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux5~28_combout\,
	datab => \b2v_inst|salida1[6]~13_combout\,
	datac => \b2v_inst|Add1~10_combout\,
	datad => \b2v_inst|salida1~23_combout\,
	combout => \b2v_inst|salida1~24_combout\);

-- Location: FF_X58_Y67_N27
\b2v_inst|salida1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~24_combout\,
	ena => \b2v_inst|salida1[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(5));

-- Location: FF_X58_Y67_N9
\b2v_inst|salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida1\(5),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(5));

-- Location: LCCOMB_X59_Y65_N18
\b2v_inst|Mux15~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~9_combout\ = (\b2v_inst|indice~16_combout\ & (((\b2v_inst|indice~15_combout\)) # (!\b2v_inst|indice~17_combout\))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~15_combout\ & 
-- !\b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~15_combout\ & \b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux15~9_combout\);

-- Location: LCCOMB_X59_Y65_N6
\b2v_inst|Mux15~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~19_combout\ = (((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|Mux15~9_combout\)) # (!\b2v_inst|indice\(6))) # (!\b2v_inst|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~2_combout\,
	datab => \b2v_inst|indice\(6),
	datac => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|Mux15~9_combout\,
	combout => \b2v_inst|Mux15~19_combout\);

-- Location: LCCOMB_X58_Y63_N22
\b2v_inst|Mux15~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~20_combout\ = (\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~14_combout\) # (\b2v_inst|indice~13_combout\)))) # (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~15_combout\) # 
-- ((\b2v_inst|indice~14_combout\) # (\b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~13_combout\,
	combout => \b2v_inst|Mux15~20_combout\);

-- Location: LCCOMB_X58_Y63_N20
\b2v_inst|Mux15~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~21_combout\ = (\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~16_combout\ $ (((\b2v_inst|Mux15~20_combout\))))) # (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~17_combout\ & 
-- \b2v_inst|Mux15~20_combout\)) # (!\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux15~20_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux15~21_combout\);

-- Location: LCCOMB_X58_Y63_N30
\b2v_inst|Mux15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~10_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~21_combout\) # ((\b2v_inst|Mux15~21_combout\)))) # (!\b2v_inst|indice~18_combout\ & (!\b2v_inst|indice~21_combout\ & (\b2v_inst|Mux15~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|Mux15~19_combout\,
	datad => \b2v_inst|Mux15~21_combout\,
	combout => \b2v_inst|Mux15~10_combout\);

-- Location: LCCOMB_X58_Y63_N2
\b2v_inst|Mux15~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~7_combout\ = (\b2v_inst|indice~29_combout\ & (((\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~29_combout\ & (((!\b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(4),
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux15~7_combout\);

-- Location: LCCOMB_X57_Y65_N30
\b2v_inst|Mux15~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~18_combout\ = (((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|Mux18~2_combout\)) # (!\b2v_inst|indice\(6))) # (!\b2v_inst|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~2_combout\,
	datab => \b2v_inst|indice\(6),
	datac => \b2v_inst|Mux18~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|Mux15~18_combout\);

-- Location: LCCOMB_X58_Y63_N14
\b2v_inst|Mux15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~5_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~29_combout\ $ (((\b2v_inst|indice~13_combout\) # (\b2v_inst|indice~14_combout\))))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~29_combout\ & 
-- ((\b2v_inst|indice~13_combout\) # (\b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux15~5_combout\);

-- Location: LCCOMB_X58_Y63_N28
\b2v_inst|Mux15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~4_combout\ = (\b2v_inst|indice~17_combout\ & (((!\b2v_inst|indice~29_combout\)))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~29_combout\) # ((\b2v_inst|indice~13_combout\ & \b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux15~4_combout\);

-- Location: LCCOMB_X58_Y63_N12
\b2v_inst|Mux15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~6_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~15_combout\) # ((!\b2v_inst|Mux15~4_combout\)))) # (!\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~15_combout\ & (\b2v_inst|Mux15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|Mux15~5_combout\,
	datad => \b2v_inst|Mux15~4_combout\,
	combout => \b2v_inst|Mux15~6_combout\);

-- Location: LCCOMB_X58_Y63_N0
\b2v_inst|Mux15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~8_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|Mux15~6_combout\ & (!\b2v_inst|Mux15~7_combout\)) # (!\b2v_inst|Mux15~6_combout\ & ((\b2v_inst|Mux15~18_combout\))))) # (!\b2v_inst|indice~15_combout\ & 
-- (((\b2v_inst|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|Mux15~7_combout\,
	datac => \b2v_inst|Mux15~18_combout\,
	datad => \b2v_inst|Mux15~6_combout\,
	combout => \b2v_inst|Mux15~8_combout\);

-- Location: LCCOMB_X58_Y63_N24
\b2v_inst|Mux15~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~17_combout\ = (\b2v_inst|indice~21_combout\ & ((\b2v_inst|Mux15~10_combout\ & (\b2v_inst|Mux15~16_combout\)) # (!\b2v_inst|Mux15~10_combout\ & ((\b2v_inst|Mux15~8_combout\))))) # (!\b2v_inst|indice~21_combout\ & 
-- (((\b2v_inst|Mux15~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux15~16_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|Mux15~10_combout\,
	datad => \b2v_inst|Mux15~8_combout\,
	combout => \b2v_inst|Mux15~17_combout\);

-- Location: LCCOMB_X59_Y66_N18
\b2v_inst|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~12_combout\ = (\b2v_inst|Mux15~17_combout\ & (!\b2v_inst|Add2~11\ & VCC)) # (!\b2v_inst|Mux15~17_combout\ & (\b2v_inst|Add2~11\ $ (GND)))
-- \b2v_inst|Add2~13\ = CARRY((!\b2v_inst|Mux15~17_combout\ & !\b2v_inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux15~17_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~11\,
	combout => \b2v_inst|Add2~12_combout\,
	cout => \b2v_inst|Add2~13\);

-- Location: LCCOMB_X60_Y63_N0
\b2v_inst|Mux4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~13_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~17_combout\) # (!\b2v_inst|indice~15_combout\))) # (!\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~15_combout\) # 
-- (!\b2v_inst|indice~17_combout\))))) # (!\b2v_inst|indice~16_combout\ & (((!\b2v_inst|indice~17_combout\ & \b2v_inst|indice~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~14_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux4~13_combout\);

-- Location: LCCOMB_X60_Y63_N26
\b2v_inst|Mux4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~15_combout\ = (\b2v_inst|Mux4~13_combout\) # ((\b2v_inst|indice\(6) & (!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(6),
	datab => \b2v_inst|LessThan2~0_combout\,
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|Mux4~13_combout\,
	combout => \b2v_inst|Mux4~15_combout\);

-- Location: LCCOMB_X59_Y63_N0
\b2v_inst|Mux4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~16_combout\ = (\b2v_inst|indice~29_combout\ & (((!\b2v_inst|indice~15_combout\) # (!\b2v_inst|indice~13_combout\)) # (!\b2v_inst|indice~14_combout\))) # (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~15_combout\) # 
-- ((\b2v_inst|indice~14_combout\ & \b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux4~16_combout\);

-- Location: LCCOMB_X59_Y63_N22
\b2v_inst|Mux4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~17_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~16_combout\ & \b2v_inst|Mux4~16_combout\)))) # 
-- (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~16_combout\ $ (\b2v_inst|Mux4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|Mux4~16_combout\,
	combout => \b2v_inst|Mux4~17_combout\);

-- Location: LCCOMB_X59_Y63_N28
\b2v_inst|Mux4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~10_combout\ = (\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~15_combout\))) # (!\b2v_inst|indice~29_combout\ & ((!\b2v_inst|indice~15_combout\) # (!\b2v_inst|indice~13_combout\))))) # 
-- (!\b2v_inst|indice~14_combout\ & (((\b2v_inst|indice~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux4~10_combout\);

-- Location: LCCOMB_X59_Y63_N8
\b2v_inst|Mux4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~8_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~14_combout\) # ((\b2v_inst|indice~13_combout\ & !\b2v_inst|indice~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|indice~15_combout\,
	combout => \b2v_inst|Mux4~8_combout\);

-- Location: LCCOMB_X58_Y63_N16
\b2v_inst|Mux15~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~15_combout\ = (\b2v_inst|indice~15_combout\) # ((\b2v_inst|indice~14_combout\ & ((\b2v_inst|indice~29_combout\) # (\b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~13_combout\,
	combout => \b2v_inst|Mux15~15_combout\);

-- Location: LCCOMB_X58_Y63_N8
\b2v_inst|Mux15~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~11_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~14_combout\) # ((\b2v_inst|indice~29_combout\ & \b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~13_combout\,
	combout => \b2v_inst|Mux15~11_combout\);

-- Location: LCCOMB_X59_Y63_N10
\b2v_inst|Mux4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~9_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~17_combout\) # ((!\b2v_inst|Mux15~15_combout\)))) # (!\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux15~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux15~15_combout\,
	datad => \b2v_inst|Mux15~11_combout\,
	combout => \b2v_inst|Mux4~9_combout\);

-- Location: LCCOMB_X59_Y63_N14
\b2v_inst|Mux4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~11_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux4~9_combout\ & (\b2v_inst|Mux4~10_combout\)) # (!\b2v_inst|Mux4~9_combout\ & ((!\b2v_inst|Mux4~8_combout\))))) # (!\b2v_inst|indice~17_combout\ & (((\b2v_inst|Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux4~10_combout\,
	datac => \b2v_inst|Mux4~8_combout\,
	datad => \b2v_inst|Mux4~9_combout\,
	combout => \b2v_inst|Mux4~11_combout\);

-- Location: LCCOMB_X59_Y63_N4
\b2v_inst|Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~6_combout\ = (\b2v_inst|indice~29_combout\ & (!\b2v_inst|indice~17_combout\ & ((!\b2v_inst|indice~13_combout\) # (!\b2v_inst|indice~14_combout\)))) # (!\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~17_combout\ $ 
-- (((\b2v_inst|indice~14_combout\ & \b2v_inst|indice~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux4~6_combout\);

-- Location: LCCOMB_X59_Y63_N30
\b2v_inst|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~3_combout\ = (\b2v_inst|indice~29_combout\) # (\b2v_inst|indice~14_combout\ $ (!\b2v_inst|indice~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux4~3_combout\);

-- Location: FF_X61_Y68_N3
\b2v_inst|indice[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~2_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(1));

-- Location: LCCOMB_X59_Y63_N24
\b2v_inst|Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~4_combout\ = (\b2v_inst|indice\(4) & ((\b2v_inst|indice~29_combout\ $ (\b2v_inst|indice~19_combout\)))) # (!\b2v_inst|indice\(4) & (\b2v_inst|indice~29_combout\ & ((!\b2v_inst|indice~19_combout\) # (!\b2v_inst|indice\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(4),
	datab => \b2v_inst|indice\(1),
	datac => \b2v_inst|indice~29_combout\,
	datad => \b2v_inst|indice~19_combout\,
	combout => \b2v_inst|Mux4~4_combout\);

-- Location: LCCOMB_X59_Y63_N2
\b2v_inst|Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~5_combout\ = (\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~16_combout\ & (\b2v_inst|Mux4~3_combout\)) # (!\b2v_inst|indice~16_combout\ & 
-- ((\b2v_inst|Mux4~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|Mux4~3_combout\,
	datad => \b2v_inst|Mux4~4_combout\,
	combout => \b2v_inst|Mux4~5_combout\);

-- Location: LCCOMB_X59_Y63_N18
\b2v_inst|Mux4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~7_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|Mux4~5_combout\ & ((\b2v_inst|Mux4~6_combout\))) # (!\b2v_inst|Mux4~5_combout\ & (!\b2v_inst|Mux4~2_combout\)))) # (!\b2v_inst|indice~15_combout\ & (((\b2v_inst|Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux4~2_combout\,
	datab => \b2v_inst|Mux4~6_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|Mux4~5_combout\,
	combout => \b2v_inst|Mux4~7_combout\);

-- Location: LCCOMB_X59_Y63_N20
\b2v_inst|Mux4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~12_combout\ = (\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~18_combout\)) # (!\b2v_inst|indice~21_combout\ & ((\b2v_inst|indice~18_combout\ & ((\b2v_inst|Mux4~7_combout\))) # (!\b2v_inst|indice~18_combout\ & 
-- (\b2v_inst|Mux4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|Mux4~11_combout\,
	datad => \b2v_inst|Mux4~7_combout\,
	combout => \b2v_inst|Mux4~12_combout\);

-- Location: LCCOMB_X59_Y63_N26
\b2v_inst|Mux4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~14_combout\ = (\b2v_inst|indice~21_combout\ & ((\b2v_inst|Mux4~12_combout\ & (\b2v_inst|Mux4~15_combout\)) # (!\b2v_inst|Mux4~12_combout\ & ((\b2v_inst|Mux4~17_combout\))))) # (!\b2v_inst|indice~21_combout\ & 
-- (((\b2v_inst|Mux4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datab => \b2v_inst|Mux4~15_combout\,
	datac => \b2v_inst|Mux4~17_combout\,
	datad => \b2v_inst|Mux4~12_combout\,
	combout => \b2v_inst|Mux4~14_combout\);

-- Location: LCCOMB_X60_Y67_N18
\b2v_inst|salida1~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~25_combout\ = (\b2v_inst|salida1[6]~13_combout\ & (((\b2v_inst|Mux4~14_combout\) # (\b2v_inst|salida1[6]~14_combout\)))) # (!\b2v_inst|salida1[6]~13_combout\ & (\b2v_inst|Mux15~17_combout\ & ((!\b2v_inst|salida1[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux15~17_combout\,
	datab => \b2v_inst|Mux4~14_combout\,
	datac => \b2v_inst|salida1[6]~13_combout\,
	datad => \b2v_inst|salida1[6]~14_combout\,
	combout => \b2v_inst|salida1~25_combout\);

-- Location: LCCOMB_X60_Y67_N6
\b2v_inst|salida1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~26_combout\ = (\b2v_inst|salida1[6]~14_combout\ & ((\b2v_inst|salida1~25_combout\ & (\b2v_inst|Add1~12_combout\)) # (!\b2v_inst|salida1~25_combout\ & ((\b2v_inst|Add2~12_combout\))))) # (!\b2v_inst|salida1[6]~14_combout\ & 
-- (((\b2v_inst|salida1~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add1~12_combout\,
	datab => \b2v_inst|salida1[6]~14_combout\,
	datac => \b2v_inst|Add2~12_combout\,
	datad => \b2v_inst|salida1~25_combout\,
	combout => \b2v_inst|salida1~26_combout\);

-- Location: FF_X60_Y67_N7
\b2v_inst|salida1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~26_combout\,
	ena => \b2v_inst|salida1[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(6));

-- Location: FF_X61_Y63_N29
\b2v_inst|salida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida1\(6),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(6));

-- Location: LCCOMB_X59_Y65_N20
\b2v_inst|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~0_combout\ = (\b2v_inst|indice~16_combout\) # ((\b2v_inst|indice\(2) & \b2v_inst|indice~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(2),
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux14~0_combout\);

-- Location: LCCOMB_X60_Y69_N8
\b2v_inst|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~0_combout\ = (\b2v_inst|indice~15_combout\ & (((!\b2v_inst|indice~14_combout\) # (!\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~13_combout\))) # (!\b2v_inst|indice~15_combout\ & (((\b2v_inst|indice~16_combout\) # 
-- (\b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux3~0_combout\);

-- Location: LCCOMB_X60_Y69_N28
\b2v_inst|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~1_combout\ = (\b2v_inst|indice~18_combout\ & (((\b2v_inst|Mux3~0_combout\) # (\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~18_combout\ & (!\b2v_inst|Mux14~1_combout\ & ((!\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux14~1_combout\,
	datab => \b2v_inst|Mux3~0_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux3~1_combout\);

-- Location: LCCOMB_X60_Y69_N24
\b2v_inst|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~3_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux3~1_combout\ & (!\b2v_inst|Mux3~2_combout\)) # (!\b2v_inst|Mux3~1_combout\ & ((!\b2v_inst|Mux14~0_combout\))))) # (!\b2v_inst|indice~17_combout\ & (((\b2v_inst|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux3~2_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux14~0_combout\,
	datad => \b2v_inst|Mux3~1_combout\,
	combout => \b2v_inst|Mux3~3_combout\);

-- Location: LCCOMB_X60_Y69_N4
\b2v_inst|Mux3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~12_combout\ = (\b2v_inst|Mux3~11_combout\) # ((\b2v_inst|indice~18_combout\) # (\b2v_inst|indice~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux3~11_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux3~12_combout\);

-- Location: LCCOMB_X60_Y69_N30
\b2v_inst|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~4_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~15_combout\) # ((\b2v_inst|indice~13_combout\ & \b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux3~4_combout\);

-- Location: LCCOMB_X60_Y69_N12
\b2v_inst|Mux7~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~23_combout\ = (\b2v_inst|indice~15_combout\ & (\b2v_inst|indice~16_combout\ & \b2v_inst|indice~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux7~23_combout\);

-- Location: LCCOMB_X60_Y69_N14
\b2v_inst|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~5_combout\ = (\b2v_inst|indice~18_combout\ & (!\b2v_inst|indice~17_combout\ & ((!\b2v_inst|Mux7~23_combout\)))) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~17_combout\ $ ((!\b2v_inst|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|Mux3~4_combout\,
	datad => \b2v_inst|Mux7~23_combout\,
	combout => \b2v_inst|Mux3~5_combout\);

-- Location: LCCOMB_X60_Y69_N20
\b2v_inst|Mux3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~8_combout\ = (\b2v_inst|indice~15_combout\ & (((!\b2v_inst|indice~14_combout\) # (!\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~13_combout\))) # (!\b2v_inst|indice~15_combout\ & (((\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux3~8_combout\);

-- Location: LCCOMB_X60_Y69_N16
\b2v_inst|Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~6_combout\ = (\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~13_combout\ & ((!\b2v_inst|indice~14_combout\) # (!\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~16_combout\) # 
-- (\b2v_inst|indice~14_combout\))))) # (!\b2v_inst|indice~15_combout\ & (((\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux3~6_combout\);

-- Location: LCCOMB_X60_Y69_N2
\b2v_inst|Mux3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~7_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|Mux14~1_combout\) # ((\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~18_combout\ & (((\b2v_inst|Mux3~4_combout\ & !\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux14~1_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|Mux3~4_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux3~7_combout\);

-- Location: LCCOMB_X60_Y69_N18
\b2v_inst|Mux3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~9_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux3~7_combout\ & (\b2v_inst|Mux3~8_combout\)) # (!\b2v_inst|Mux3~7_combout\ & ((!\b2v_inst|Mux3~6_combout\))))) # (!\b2v_inst|indice~17_combout\ & (((\b2v_inst|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux3~8_combout\,
	datac => \b2v_inst|Mux3~6_combout\,
	datad => \b2v_inst|Mux3~7_combout\,
	combout => \b2v_inst|Mux3~9_combout\);

-- Location: LCCOMB_X60_Y69_N0
\b2v_inst|Mux3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~10_combout\ = (\b2v_inst|indice~29_combout\ & (((\b2v_inst|indice~21_combout\)))) # (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~21_combout\ & (\b2v_inst|Mux3~5_combout\)) # (!\b2v_inst|indice~21_combout\ & 
-- ((\b2v_inst|Mux3~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|Mux3~5_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|Mux3~9_combout\,
	combout => \b2v_inst|Mux3~10_combout\);

-- Location: LCCOMB_X60_Y69_N10
\b2v_inst|Mux3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~13_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|Mux3~10_combout\ & ((\b2v_inst|Mux3~12_combout\))) # (!\b2v_inst|Mux3~10_combout\ & (\b2v_inst|Mux3~3_combout\)))) # (!\b2v_inst|indice~29_combout\ & 
-- (((\b2v_inst|Mux3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|Mux3~3_combout\,
	datac => \b2v_inst|Mux3~12_combout\,
	datad => \b2v_inst|Mux3~10_combout\,
	combout => \b2v_inst|Mux3~13_combout\);

-- Location: LCCOMB_X59_Y67_N18
\b2v_inst|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~14_combout\ = (\b2v_inst|Mux3~13_combout\ & ((\b2v_inst|Add1~13\) # (GND))) # (!\b2v_inst|Mux3~13_combout\ & (!\b2v_inst|Add1~13\))
-- \b2v_inst|Add1~15\ = CARRY((\b2v_inst|Mux3~13_combout\) # (!\b2v_inst|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux3~13_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~13\,
	combout => \b2v_inst|Add1~14_combout\,
	cout => \b2v_inst|Add1~15\);

-- Location: LCCOMB_X62_Y65_N22
\b2v_inst|Mux18~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~27_combout\ = (!\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~15_combout\ & !\b2v_inst|indice~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux18~27_combout\);

-- Location: LCCOMB_X62_Y65_N30
\b2v_inst|Mux14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~2_combout\ = (\b2v_inst|indice~16_combout\) # ((\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~13_combout\) # (\b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux14~2_combout\);

-- Location: LCCOMB_X62_Y66_N6
\b2v_inst|Mux14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~3_combout\ = (\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~17_combout\ $ (((!\b2v_inst|Mux14~2_combout\))))) # (!\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~17_combout\ & (!\b2v_inst|Mux18~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux18~27_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|Mux14~2_combout\,
	combout => \b2v_inst|Mux14~3_combout\);

-- Location: LCCOMB_X61_Y66_N22
\b2v_inst|Mux14~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~11_combout\ = (\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~16_combout\ & ((!\b2v_inst|indice~14_combout\) # (!\b2v_inst|indice~13_combout\))) # 
-- (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~13_combout\) # (\b2v_inst|indice~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux14~11_combout\);

-- Location: LCCOMB_X61_Y66_N0
\b2v_inst|Mux14~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~12_combout\ = (\b2v_inst|indice~15_combout\ & (!\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|indice~16_combout\) # ((\b2v_inst|indice~13_combout\) # (\b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~13_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux14~12_combout\);

-- Location: LCCOMB_X61_Y66_N10
\b2v_inst|Mux14~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~13_combout\ = (\b2v_inst|indice~18_combout\ & ((\b2v_inst|indice~17_combout\) # ((!\b2v_inst|Mux14~11_combout\)))) # (!\b2v_inst|indice~18_combout\ & (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux14~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux14~11_combout\,
	datad => \b2v_inst|Mux14~12_combout\,
	combout => \b2v_inst|Mux14~13_combout\);

-- Location: LCCOMB_X60_Y66_N22
\b2v_inst|Mux14~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~14_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux14~13_combout\ & ((!\b2v_inst|Mux14~2_combout\))) # (!\b2v_inst|Mux14~13_combout\ & (\b2v_inst|Mux14~0_combout\)))) # (!\b2v_inst|indice~17_combout\ & 
-- (((\b2v_inst|Mux14~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux14~0_combout\,
	datac => \b2v_inst|Mux14~13_combout\,
	datad => \b2v_inst|Mux14~2_combout\,
	combout => \b2v_inst|Mux14~14_combout\);

-- Location: LCCOMB_X60_Y66_N24
\b2v_inst|Mux14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~8_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~15_combout\) # ((\b2v_inst|indice~14_combout\) # (\b2v_inst|indice~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~13_combout\,
	combout => \b2v_inst|Mux14~8_combout\);

-- Location: LCCOMB_X60_Y66_N14
\b2v_inst|Mux14~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~9_combout\ = ((!\b2v_inst|Mux14~8_combout\) # (!\b2v_inst|indice~17_combout\)) # (!\b2v_inst|indice~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|Mux14~8_combout\,
	combout => \b2v_inst|Mux14~9_combout\);

-- Location: LCCOMB_X60_Y65_N0
\b2v_inst|Mux14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~5_combout\ = (\b2v_inst|LessThan0~2_combout\ & (!\b2v_inst|LessThan2~0_combout\ & ((\b2v_inst|indice\(2)) # (\b2v_inst|indice\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(2),
	datab => \b2v_inst|indice\(3),
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|Mux14~5_combout\);

-- Location: LCCOMB_X60_Y69_N6
\b2v_inst|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~1_combout\ = ((!\b2v_inst|indice\(1) & !\b2v_inst|indice\(2))) # (!\b2v_inst|indice~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice\(1),
	datac => \b2v_inst|indice\(2),
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux14~1_combout\);

-- Location: LCCOMB_X60_Y66_N28
\b2v_inst|Mux14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~6_combout\ = (\b2v_inst|indice~18_combout\ & (((\b2v_inst|indice~17_combout\) # (!\b2v_inst|Mux14~1_combout\)))) # (!\b2v_inst|indice~18_combout\ & (!\b2v_inst|Mux14~5_combout\ & (!\b2v_inst|indice~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|Mux14~5_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|Mux14~1_combout\,
	combout => \b2v_inst|Mux14~6_combout\);

-- Location: LCCOMB_X60_Y66_N2
\b2v_inst|Mux14~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~7_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux14~6_combout\ & ((!\b2v_inst|Mux14~0_combout\))) # (!\b2v_inst|Mux14~6_combout\ & (\b2v_inst|Mux14~4_combout\)))) # (!\b2v_inst|indice~17_combout\ & 
-- (((\b2v_inst|Mux14~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux14~4_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux14~0_combout\,
	datad => \b2v_inst|Mux14~6_combout\,
	combout => \b2v_inst|Mux14~7_combout\);

-- Location: LCCOMB_X60_Y66_N16
\b2v_inst|Mux14~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~10_combout\ = (\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~21_combout\)) # (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|indice~21_combout\ & ((\b2v_inst|Mux14~7_combout\))) # (!\b2v_inst|indice~21_combout\ & 
-- (\b2v_inst|Mux14~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|Mux14~9_combout\,
	datad => \b2v_inst|Mux14~7_combout\,
	combout => \b2v_inst|Mux14~10_combout\);

-- Location: LCCOMB_X60_Y66_N4
\b2v_inst|Mux14~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~15_combout\ = (\b2v_inst|indice~29_combout\ & ((\b2v_inst|Mux14~10_combout\ & ((\b2v_inst|Mux14~14_combout\))) # (!\b2v_inst|Mux14~10_combout\ & (\b2v_inst|Mux14~3_combout\)))) # (!\b2v_inst|indice~29_combout\ & 
-- (((\b2v_inst|Mux14~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|Mux14~3_combout\,
	datac => \b2v_inst|Mux14~14_combout\,
	datad => \b2v_inst|Mux14~10_combout\,
	combout => \b2v_inst|Mux14~15_combout\);

-- Location: LCCOMB_X59_Y66_N20
\b2v_inst|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~14_combout\ = (\b2v_inst|Mux14~15_combout\ & ((\b2v_inst|Add2~13\) # (GND))) # (!\b2v_inst|Mux14~15_combout\ & (!\b2v_inst|Add2~13\))
-- \b2v_inst|Add2~15\ = CARRY((\b2v_inst|Mux14~15_combout\) # (!\b2v_inst|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux14~15_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~13\,
	combout => \b2v_inst|Add2~14_combout\,
	cout => \b2v_inst|Add2~15\);

-- Location: LCCOMB_X60_Y66_N6
\b2v_inst|salida1~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~27_combout\ = (\b2v_inst|salida1[6]~13_combout\ & (((\b2v_inst|salida1[6]~14_combout\)))) # (!\b2v_inst|salida1[6]~13_combout\ & ((\b2v_inst|salida1[6]~14_combout\ & ((\b2v_inst|Add2~14_combout\))) # (!\b2v_inst|salida1[6]~14_combout\ & 
-- (\b2v_inst|Mux14~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1[6]~13_combout\,
	datab => \b2v_inst|Mux14~15_combout\,
	datac => \b2v_inst|salida1[6]~14_combout\,
	datad => \b2v_inst|Add2~14_combout\,
	combout => \b2v_inst|salida1~27_combout\);

-- Location: LCCOMB_X60_Y66_N20
\b2v_inst|salida1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~28_combout\ = (\b2v_inst|salida1[6]~13_combout\ & ((\b2v_inst|salida1~27_combout\ & ((\b2v_inst|Add1~14_combout\))) # (!\b2v_inst|salida1~27_combout\ & (\b2v_inst|Mux3~13_combout\)))) # (!\b2v_inst|salida1[6]~13_combout\ & 
-- (((\b2v_inst|salida1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux3~13_combout\,
	datab => \b2v_inst|salida1[6]~13_combout\,
	datac => \b2v_inst|Add1~14_combout\,
	datad => \b2v_inst|salida1~27_combout\,
	combout => \b2v_inst|salida1~28_combout\);

-- Location: FF_X60_Y66_N21
\b2v_inst|salida1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~28_combout\,
	ena => \b2v_inst|salida1[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(7));

-- Location: LCCOMB_X65_Y66_N12
\b2v_inst|salida[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida[7]~feeder_combout\ = \b2v_inst|salida1\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|salida1\(7),
	combout => \b2v_inst|salida[7]~feeder_combout\);

-- Location: FF_X65_Y66_N13
\b2v_inst|salida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida[7]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(7));

-- Location: LCCOMB_X58_Y64_N18
\b2v_inst|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~3_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~13_combout\ & ((\b2v_inst|indice~29_combout\)))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~21_combout\) # ((\b2v_inst|indice~13_combout\ & 
-- \b2v_inst|indice~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~13_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|indice~29_combout\,
	combout => \b2v_inst|Mux2~3_combout\);

-- Location: LCCOMB_X58_Y64_N28
\b2v_inst|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~4_combout\ = (\b2v_inst|indice~18_combout\ & (\b2v_inst|Mux7~23_combout\ & \b2v_inst|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|Mux7~23_combout\,
	datad => \b2v_inst|Mux2~3_combout\,
	combout => \b2v_inst|Mux2~4_combout\);

-- Location: LCCOMB_X58_Y64_N22
\b2v_inst|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~1_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice\(5))) # (!\b2v_inst|indice~17_combout\ & (((!\b2v_inst|indice~18_combout\ & !\b2v_inst|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice\(5),
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|Mux3~4_combout\,
	combout => \b2v_inst|Mux2~1_combout\);

-- Location: LCCOMB_X58_Y64_N12
\b2v_inst|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~0_combout\ = (\b2v_inst|indice~21_combout\) # ((\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~18_combout\) # (!\b2v_inst|Mux14~0_combout\))) # (!\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~21_combout\,
	datad => \b2v_inst|Mux14~0_combout\,
	combout => \b2v_inst|Mux2~0_combout\);

-- Location: LCCOMB_X58_Y64_N8
\b2v_inst|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~2_combout\ = (\b2v_inst|indice~21_combout\ & ((\b2v_inst|Mux2~1_combout\) # ((\b2v_inst|indice~29_combout\ & \b2v_inst|Mux2~0_combout\)))) # (!\b2v_inst|indice~21_combout\ & (\b2v_inst|indice~29_combout\ & ((\b2v_inst|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|Mux2~1_combout\,
	datad => \b2v_inst|Mux2~0_combout\,
	combout => \b2v_inst|Mux2~2_combout\);

-- Location: LCCOMB_X60_Y65_N18
\b2v_inst|Mux13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~3_combout\ = (\b2v_inst|indice~13_combout\ & (((\b2v_inst|indice~16_combout\ & \b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice~18_combout\))) # (!\b2v_inst|indice~13_combout\ & (!\b2v_inst|indice~18_combout\ & 
-- ((\b2v_inst|indice~16_combout\) # (\b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux13~3_combout\);

-- Location: LCCOMB_X60_Y65_N20
\b2v_inst|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~5_combout\ = ((\b2v_inst|indice\(3) & \b2v_inst|indice~14_combout\)) # (!\b2v_inst|indice~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(3),
	datab => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|Mux2~5_combout\);

-- Location: LCCOMB_X60_Y65_N22
\b2v_inst|Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~6_combout\ = (\b2v_inst|indice~17_combout\ & (((\b2v_inst|indice~15_combout\)))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~15_combout\ & (\b2v_inst|Mux13~2_combout\)) # (!\b2v_inst|indice~15_combout\ & 
-- ((!\b2v_inst|Mux2~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux13~2_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|Mux2~5_combout\,
	combout => \b2v_inst|Mux2~6_combout\);

-- Location: LCCOMB_X59_Y63_N16
\b2v_inst|Mux2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~7_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux2~6_combout\ & ((\b2v_inst|Mux13~3_combout\))) # (!\b2v_inst|Mux2~6_combout\ & (\b2v_inst|Mux16~21_combout\)))) # (!\b2v_inst|indice~17_combout\ & (((\b2v_inst|Mux2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux16~21_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux13~3_combout\,
	datad => \b2v_inst|Mux2~6_combout\,
	combout => \b2v_inst|Mux2~7_combout\);

-- Location: LCCOMB_X59_Y63_N6
\b2v_inst|Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~8_combout\ = (\b2v_inst|Mux2~7_combout\ & (((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|indice\(6))) # (!\b2v_inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~2_combout\,
	datab => \b2v_inst|LessThan2~0_combout\,
	datac => \b2v_inst|indice\(6),
	datad => \b2v_inst|Mux2~7_combout\,
	combout => \b2v_inst|Mux2~8_combout\);

-- Location: LCCOMB_X58_Y64_N10
\b2v_inst|Mux2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~9_combout\ = (\b2v_inst|Mux2~4_combout\) # ((\b2v_inst|Mux2~2_combout\) # ((!\b2v_inst|indice~21_combout\ & \b2v_inst|Mux2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datab => \b2v_inst|Mux2~4_combout\,
	datac => \b2v_inst|Mux2~2_combout\,
	datad => \b2v_inst|Mux2~8_combout\,
	combout => \b2v_inst|Mux2~9_combout\);

-- Location: LCCOMB_X59_Y67_N20
\b2v_inst|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~16_combout\ = (\b2v_inst|Mux2~9_combout\ & (!\b2v_inst|Add1~15\ & VCC)) # (!\b2v_inst|Mux2~9_combout\ & (\b2v_inst|Add1~15\ $ (GND)))
-- \b2v_inst|Add1~17\ = CARRY((!\b2v_inst|Mux2~9_combout\ & !\b2v_inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux2~9_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~15\,
	combout => \b2v_inst|Add1~16_combout\,
	cout => \b2v_inst|Add1~17\);

-- Location: LCCOMB_X62_Y65_N24
\b2v_inst|Mux13~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~9_combout\ = (\b2v_inst|Mux13~8_combout\) # ((\b2v_inst|indice~17_combout\ & (\b2v_inst|Mux18~27_combout\ & !\b2v_inst|indice~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux13~8_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux18~27_combout\,
	datad => \b2v_inst|indice~18_combout\,
	combout => \b2v_inst|Mux13~9_combout\);

-- Location: LCCOMB_X62_Y65_N18
\b2v_inst|Mux13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~10_combout\ = (\b2v_inst|Mux13~9_combout\) # ((\b2v_inst|indice~18_combout\ & (\b2v_inst|indice~17_combout\ & \b2v_inst|Mux14~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux14~2_combout\,
	datad => \b2v_inst|Mux13~9_combout\,
	combout => \b2v_inst|Mux13~10_combout\);

-- Location: LCCOMB_X60_Y65_N30
\b2v_inst|Mux13~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~5_combout\ = (\b2v_inst|indice~18_combout\) # (((!\b2v_inst|indice\(1) & !\b2v_inst|indice\(3))) # (!\b2v_inst|indice~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(1),
	datab => \b2v_inst|indice\(3),
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|indice~19_combout\,
	combout => \b2v_inst|Mux13~5_combout\);

-- Location: LCCOMB_X60_Y65_N28
\b2v_inst|Mux13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~4_combout\ = (\b2v_inst|indice~17_combout\ & (((\b2v_inst|indice~15_combout\)))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~15_combout\ & (\b2v_inst|Mux13~2_combout\)) # (!\b2v_inst|indice~15_combout\ & 
-- ((!\b2v_inst|Mux13~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux13~2_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|Mux13~3_combout\,
	combout => \b2v_inst|Mux13~4_combout\);

-- Location: LCCOMB_X60_Y65_N24
\b2v_inst|Mux13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~6_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux13~4_combout\ & ((!\b2v_inst|Mux13~5_combout\))) # (!\b2v_inst|Mux13~4_combout\ & (\b2v_inst|Mux16~21_combout\)))) # (!\b2v_inst|indice~17_combout\ & 
-- (((\b2v_inst|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux16~21_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux13~5_combout\,
	datad => \b2v_inst|Mux13~4_combout\,
	combout => \b2v_inst|Mux13~6_combout\);

-- Location: LCCOMB_X62_Y65_N4
\b2v_inst|Mux13~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~7_combout\ = (\b2v_inst|indice~19_combout\ & (\b2v_inst|indice~21_combout\ & (\b2v_inst|indice\(6) & \b2v_inst|Mux13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~19_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|indice\(6),
	datad => \b2v_inst|Mux13~6_combout\,
	combout => \b2v_inst|Mux13~7_combout\);

-- Location: LCCOMB_X62_Y65_N28
\b2v_inst|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~0_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~18_combout\) # ((!\b2v_inst|indice~13_combout\ & \b2v_inst|Mux18~27_combout\)))) # (!\b2v_inst|indice~17_combout\ & (((!\b2v_inst|indice~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~13_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux18~27_combout\,
	datad => \b2v_inst|indice~18_combout\,
	combout => \b2v_inst|Mux13~0_combout\);

-- Location: LCCOMB_X62_Y65_N2
\b2v_inst|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~1_combout\ = (!\b2v_inst|indice~29_combout\ & ((\b2v_inst|Mux13~0_combout\) # ((\b2v_inst|indice~18_combout\ & !\b2v_inst|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~18_combout\,
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|Mux14~1_combout\,
	datad => \b2v_inst|Mux13~0_combout\,
	combout => \b2v_inst|Mux13~1_combout\);

-- Location: LCCOMB_X62_Y65_N0
\b2v_inst|Mux13~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~11_combout\ = (\b2v_inst|Mux13~7_combout\) # ((\b2v_inst|Mux13~1_combout\) # ((!\b2v_inst|indice~21_combout\ & \b2v_inst|Mux13~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datab => \b2v_inst|Mux13~10_combout\,
	datac => \b2v_inst|Mux13~7_combout\,
	datad => \b2v_inst|Mux13~1_combout\,
	combout => \b2v_inst|Mux13~11_combout\);

-- Location: LCCOMB_X60_Y67_N4
\b2v_inst|salida1~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~29_combout\ = (\b2v_inst|salida1[6]~13_combout\ & ((\b2v_inst|Mux2~9_combout\) # ((\b2v_inst|salida1[6]~14_combout\)))) # (!\b2v_inst|salida1[6]~13_combout\ & (((\b2v_inst|Mux13~11_combout\ & !\b2v_inst|salida1[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux2~9_combout\,
	datab => \b2v_inst|Mux13~11_combout\,
	datac => \b2v_inst|salida1[6]~13_combout\,
	datad => \b2v_inst|salida1[6]~14_combout\,
	combout => \b2v_inst|salida1~29_combout\);

-- Location: LCCOMB_X59_Y66_N22
\b2v_inst|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~16_combout\ = (\b2v_inst|Mux13~11_combout\ & (!\b2v_inst|Add2~15\ & VCC)) # (!\b2v_inst|Mux13~11_combout\ & (\b2v_inst|Add2~15\ $ (GND)))
-- \b2v_inst|Add2~17\ = CARRY((!\b2v_inst|Mux13~11_combout\ & !\b2v_inst|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux13~11_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~15\,
	combout => \b2v_inst|Add2~16_combout\,
	cout => \b2v_inst|Add2~17\);

-- Location: LCCOMB_X60_Y67_N12
\b2v_inst|salida1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~30_combout\ = (\b2v_inst|salida1[6]~14_combout\ & ((\b2v_inst|salida1~29_combout\ & (\b2v_inst|Add1~16_combout\)) # (!\b2v_inst|salida1~29_combout\ & ((\b2v_inst|Add2~16_combout\))))) # (!\b2v_inst|salida1[6]~14_combout\ & 
-- (((\b2v_inst|salida1~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1[6]~14_combout\,
	datab => \b2v_inst|Add1~16_combout\,
	datac => \b2v_inst|salida1~29_combout\,
	datad => \b2v_inst|Add2~16_combout\,
	combout => \b2v_inst|salida1~30_combout\);

-- Location: FF_X60_Y67_N13
\b2v_inst|salida1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~30_combout\,
	ena => \b2v_inst|salida1[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(8));

-- Location: LCCOMB_X70_Y63_N12
\b2v_inst|salida[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida[8]~feeder_combout\ = \b2v_inst|salida1\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|salida1\(8),
	combout => \b2v_inst|salida[8]~feeder_combout\);

-- Location: FF_X70_Y63_N13
\b2v_inst|salida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida[8]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(8));

-- Location: LCCOMB_X61_Y69_N6
\b2v_inst|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux12~0_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\) # ((\b2v_inst|indice~15_combout\ & \b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~14_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux12~0_combout\);

-- Location: LCCOMB_X61_Y69_N28
\b2v_inst|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux1~0_combout\ = (\b2v_inst|indice~29_combout\ & (!\b2v_inst|indice~18_combout\ & !\b2v_inst|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|Mux12~0_combout\,
	combout => \b2v_inst|Mux1~0_combout\);

-- Location: LCCOMB_X61_Y69_N22
\b2v_inst|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux1~1_combout\ = (\b2v_inst|indice~29_combout\) # ((\b2v_inst|indice~17_combout\) # ((\b2v_inst|indice~18_combout\) # (\b2v_inst|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~29_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|Mux3~4_combout\,
	combout => \b2v_inst|Mux1~1_combout\);

-- Location: LCCOMB_X61_Y69_N8
\b2v_inst|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux1~3_combout\ = (\b2v_inst|Mux1~0_combout\) # ((\b2v_inst|indice~21_combout\ & ((\b2v_inst|Mux1~1_combout\))) # (!\b2v_inst|indice~21_combout\ & (\b2v_inst|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux1~2_combout\,
	datab => \b2v_inst|Mux1~0_combout\,
	datac => \b2v_inst|Mux1~1_combout\,
	datad => \b2v_inst|indice~21_combout\,
	combout => \b2v_inst|Mux1~3_combout\);

-- Location: LCCOMB_X59_Y67_N22
\b2v_inst|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~18_combout\ = (\b2v_inst|Mux1~3_combout\ & ((\b2v_inst|Add1~17\) # (GND))) # (!\b2v_inst|Mux1~3_combout\ & (!\b2v_inst|Add1~17\))
-- \b2v_inst|Add1~19\ = CARRY((\b2v_inst|Mux1~3_combout\) # (!\b2v_inst|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux1~3_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~17\,
	combout => \b2v_inst|Add1~18_combout\,
	cout => \b2v_inst|Add1~19\);

-- Location: LCCOMB_X61_Y69_N24
\b2v_inst|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux12~1_combout\ = (\b2v_inst|indice~17_combout\) # ((\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~14_combout\) # (\b2v_inst|indice~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datab => \b2v_inst|indice~15_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux12~1_combout\);

-- Location: LCCOMB_X61_Y69_N26
\b2v_inst|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux1~2_combout\ = (!\b2v_inst|indice~29_combout\ & (\b2v_inst|indice~18_combout\ & \b2v_inst|Mux12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|Mux12~1_combout\,
	combout => \b2v_inst|Mux1~2_combout\);

-- Location: LCCOMB_X61_Y69_N18
\b2v_inst|Mux12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux12~3_combout\ = (\b2v_inst|Mux1~2_combout\) # ((\b2v_inst|indice~21_combout\ & ((\b2v_inst|Mux1~0_combout\))) # (!\b2v_inst|indice~21_combout\ & (\b2v_inst|Mux12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux12~2_combout\,
	datab => \b2v_inst|indice~21_combout\,
	datac => \b2v_inst|Mux1~2_combout\,
	datad => \b2v_inst|Mux1~0_combout\,
	combout => \b2v_inst|Mux12~3_combout\);

-- Location: LCCOMB_X59_Y66_N24
\b2v_inst|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~18_combout\ = (\b2v_inst|Mux12~3_combout\ & ((\b2v_inst|Add2~17\) # (GND))) # (!\b2v_inst|Mux12~3_combout\ & (!\b2v_inst|Add2~17\))
-- \b2v_inst|Add2~19\ = CARRY((\b2v_inst|Mux12~3_combout\) # (!\b2v_inst|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux12~3_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~17\,
	combout => \b2v_inst|Add2~18_combout\,
	cout => \b2v_inst|Add2~19\);

-- Location: LCCOMB_X60_Y67_N2
\b2v_inst|salida1~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~31_combout\ = (\b2v_inst|salida1[6]~14_combout\ & (((\b2v_inst|salida1[6]~13_combout\) # (\b2v_inst|Add2~18_combout\)))) # (!\b2v_inst|salida1[6]~14_combout\ & (\b2v_inst|Mux12~3_combout\ & (!\b2v_inst|salida1[6]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux12~3_combout\,
	datab => \b2v_inst|salida1[6]~14_combout\,
	datac => \b2v_inst|salida1[6]~13_combout\,
	datad => \b2v_inst|Add2~18_combout\,
	combout => \b2v_inst|salida1~31_combout\);

-- Location: LCCOMB_X60_Y67_N22
\b2v_inst|salida1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~32_combout\ = (\b2v_inst|salida1[6]~13_combout\ & ((\b2v_inst|salida1~31_combout\ & ((\b2v_inst|Add1~18_combout\))) # (!\b2v_inst|salida1~31_combout\ & (\b2v_inst|Mux1~3_combout\)))) # (!\b2v_inst|salida1[6]~13_combout\ & 
-- (((\b2v_inst|salida1~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux1~3_combout\,
	datab => \b2v_inst|Add1~18_combout\,
	datac => \b2v_inst|salida1[6]~13_combout\,
	datad => \b2v_inst|salida1~31_combout\,
	combout => \b2v_inst|salida1~32_combout\);

-- Location: FF_X60_Y67_N23
\b2v_inst|salida1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~32_combout\,
	ena => \b2v_inst|salida1[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(9));

-- Location: FF_X60_Y67_N31
\b2v_inst|salida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida1\(9),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(9));

-- Location: LCCOMB_X61_Y69_N4
\b2v_inst|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux11~0_combout\ = (\b2v_inst|indice~29_combout\) # ((\b2v_inst|indice~18_combout\ & \b2v_inst|Mux12~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|Mux12~1_combout\,
	combout => \b2v_inst|Mux11~0_combout\);

-- Location: LCCOMB_X59_Y66_N26
\b2v_inst|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~20_combout\ = (\b2v_inst|Add2~19\ & (\b2v_inst|indice~21_combout\ & (\b2v_inst|Mux11~0_combout\ & VCC))) # (!\b2v_inst|Add2~19\ & ((((\b2v_inst|indice~21_combout\ & \b2v_inst|Mux11~0_combout\)))))
-- \b2v_inst|Add2~21\ = CARRY((\b2v_inst|indice~21_combout\ & (\b2v_inst|Mux11~0_combout\ & !\b2v_inst|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datab => \b2v_inst|Mux11~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~19\,
	combout => \b2v_inst|Add2~20_combout\,
	cout => \b2v_inst|Add2~21\);

-- Location: LCCOMB_X61_Y69_N10
\b2v_inst|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux0~1_combout\ = ((!\b2v_inst|indice~18_combout\ & !\b2v_inst|Mux12~0_combout\)) # (!\b2v_inst|indice~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~29_combout\,
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|Mux12~0_combout\,
	combout => \b2v_inst|Mux0~1_combout\);

-- Location: LCCOMB_X59_Y67_N24
\b2v_inst|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~20_combout\ = (\b2v_inst|Add1~19\ & (!\b2v_inst|indice~21_combout\ & (\b2v_inst|Mux0~1_combout\ & VCC))) # (!\b2v_inst|Add1~19\ & ((((!\b2v_inst|indice~21_combout\ & \b2v_inst|Mux0~1_combout\)))))
-- \b2v_inst|Add1~21\ = CARRY((!\b2v_inst|indice~21_combout\ & (\b2v_inst|Mux0~1_combout\ & !\b2v_inst|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~21_combout\,
	datab => \b2v_inst|Mux0~1_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~19\,
	combout => \b2v_inst|Add1~20_combout\,
	cout => \b2v_inst|Add1~21\);

-- Location: LCCOMB_X59_Y69_N24
\b2v_inst|salida1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~34_combout\ = (\b2v_inst|salida1~33_combout\ & (((\b2v_inst|Add1~20_combout\)) # (!\b2v_inst|salida1[6]~14_combout\))) # (!\b2v_inst|salida1~33_combout\ & (\b2v_inst|salida1[6]~14_combout\ & (\b2v_inst|Add2~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1~33_combout\,
	datab => \b2v_inst|salida1[6]~14_combout\,
	datac => \b2v_inst|Add2~20_combout\,
	datad => \b2v_inst|Add1~20_combout\,
	combout => \b2v_inst|salida1~34_combout\);

-- Location: FF_X59_Y69_N25
\b2v_inst|salida1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~34_combout\,
	ena => \b2v_inst|salida1[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(10));

-- Location: FF_X62_Y65_N11
\b2v_inst|salida[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida1\(10),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(10));

-- Location: LCCOMB_X60_Y68_N28
\b2v_inst|salida1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~42_combout\ = (\b2v_inst|LessThan2~0_combout\ & (((!\b2v_inst|LessThan6~6_combout\) # (!\b2v_inst|salida1[6]~39_combout\)))) # (!\b2v_inst|LessThan2~0_combout\ & (!\b2v_inst|indice\(31) & ((!\b2v_inst|LessThan6~6_combout\) # 
-- (!\b2v_inst|salida1[6]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|indice\(31),
	datac => \b2v_inst|salida1[6]~39_combout\,
	datad => \b2v_inst|LessThan6~6_combout\,
	combout => \b2v_inst|salida1~42_combout\);

-- Location: LCCOMB_X59_Y67_N26
\b2v_inst|Add1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~22_combout\ = !\b2v_inst|Add1~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst|Add1~21\,
	combout => \b2v_inst|Add1~22_combout\);

-- Location: LCCOMB_X59_Y66_N28
\b2v_inst|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~22_combout\ = !\b2v_inst|Add2~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst|Add2~21\,
	combout => \b2v_inst|Add2~22_combout\);

-- Location: LCCOMB_X59_Y67_N2
\b2v_inst|salida1~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~37_combout\ = (\b2v_inst|LessThan8~1_combout\ & ((\b2v_inst|Add2~22_combout\))) # (!\b2v_inst|LessThan8~1_combout\ & (\b2v_inst|Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~1_combout\,
	datac => \b2v_inst|Add1~22_combout\,
	datad => \b2v_inst|Add2~22_combout\,
	combout => \b2v_inst|salida1~37_combout\);

-- Location: LCCOMB_X59_Y67_N28
\b2v_inst|salida1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~38_combout\ = (\b2v_inst|salida1~42_combout\ & ((\b2v_inst|salida1~36_combout\ & (\b2v_inst|salida1\(11))) # (!\b2v_inst|salida1~36_combout\ & ((\b2v_inst|salida1~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1~36_combout\,
	datab => \b2v_inst|salida1~42_combout\,
	datac => \b2v_inst|salida1\(11),
	datad => \b2v_inst|salida1~37_combout\,
	combout => \b2v_inst|salida1~38_combout\);

-- Location: FF_X59_Y67_N29
\b2v_inst|salida1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~38_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(11));

-- Location: LCCOMB_X68_Y65_N28
\b2v_inst|salida[11]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida[11]~0_combout\ = !\b2v_inst|salida1\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|salida1\(11),
	combout => \b2v_inst|salida[11]~0_combout\);

-- Location: FF_X68_Y65_N29
\b2v_inst|salida[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida[11]~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(11));
END structure;


