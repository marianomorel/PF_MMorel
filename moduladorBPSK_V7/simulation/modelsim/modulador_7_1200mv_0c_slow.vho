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

-- DATE "06/14/2022 22:45:37"

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

ENTITY 	MODULADORBPSK_V16 IS
    PORT (
	entrada : IN std_logic;
	reset : IN std_logic;
	datos_ext : IN std_logic;
	PB_N : IN std_logic;
	F_in : IN std_logic_vector(4 DOWNTO 0);
	periodos : IN std_logic_vector(1 DOWNTO 0);
	locked : OUT std_logic;
	dato_o : OUT std_logic;
	c0 : OUT std_logic;
	q : OUT std_logic;
	\GND\ : OUT std_logic;
	rlj : OUT std_logic;
	LED : OUT std_logic;
	prng_o : OUT std_logic;
	LED_SEL : OUT std_logic;
	cuenta_o : OUT std_logic_vector(10 DOWNTO 0);
	indice_o : OUT std_logic_vector(10 DOWNTO 0);
	salida : OUT std_logic_vector(11 DOWNTO 0)
	);
END MODULADORBPSK_V16;

-- Design Ports Information
-- PB_N	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- locked	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato_o	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c0	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q	=>  Location: PIN_G25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GND	=>  Location: PIN_M28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rlj	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED	=>  Location: PIN_M27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prng_o	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_SEL	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[0]	=>  Location: PIN_V28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[1]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[2]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[3]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[4]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[6]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[7]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[8]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[9]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cuenta_o[10]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[0]	=>  Location: PIN_U25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[2]	=>  Location: PIN_U26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[4]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[7]	=>  Location: PIN_V26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[8]	=>  Location: PIN_V27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[9]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- indice_o[10]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- datos_ext	=>  Location: PIN_J25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- periodos[1]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- periodos[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MODULADORBPSK_V16 IS
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
SIGNAL ww_datos_ext : std_logic;
SIGNAL ww_PB_N : std_logic;
SIGNAL ww_F_in : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_periodos : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_locked : std_logic;
SIGNAL ww_dato_o : std_logic;
SIGNAL ww_c0 : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL \ww_GND\ : std_logic;
SIGNAL ww_rlj : std_logic;
SIGNAL ww_LED : std_logic;
SIGNAL ww_prng_o : std_logic;
SIGNAL ww_LED_SEL : std_logic;
SIGNAL ww_cuenta_o : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_indice_o : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_salida : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst5|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst5|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst|rlj~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|q~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|Add4~28_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~30_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~32_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~42_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~44_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~46_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~48_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~50_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~38_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~40_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~42_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~46_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~4_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~6_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~8_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~10_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~16_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~19\ : std_logic;
SIGNAL \b2v_inst|Add2~21\ : std_logic;
SIGNAL \b2v_inst|Add2~20_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~21\ : std_logic;
SIGNAL \b2v_inst|Add1~22_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~22_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~0_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~1_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~2_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~3_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~4_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~7_combout\ : std_logic;
SIGNAL \b2v_inst11|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \b2v_inst|cuenta~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta~2_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~2_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta~5_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan6~3_combout\ : std_logic;
SIGNAL \b2v_inst11|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux20~25_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~24_combout\ : std_logic;
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
SIGNAL \b2v_inst|Mux8~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~2_combout\ : std_logic;
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
SIGNAL \b2v_inst|Mux6~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~25_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~26_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~27_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~28_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~27_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux11~0_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~40_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~41_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan8~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux5~29_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~21_combout\ : std_logic;
SIGNAL \b2v_inst|indice[9]~1_combout\ : std_logic;
SIGNAL \PB_N~input_o\ : std_logic;
SIGNAL \F_in[3]~input_o\ : std_logic;
SIGNAL \datos_ext~input_o\ : std_logic;
SIGNAL \b2v_inst|rlj~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst1|q~2clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|cuenta[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst11|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst11|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst11|SHIFT_PB[3]~feeder_combout\ : std_logic;
SIGNAL \entrada~input_o\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|pll_lock_sync~q\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|locked~combout\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst12|SALIDA_PB~0_combout\ : std_logic;
SIGNAL \b2v_inst12|SALIDA_PB~q\ : std_logic;
SIGNAL \b2v_inst4|pseudo_reg[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst4|pseudo_reg[1]~7_combout\ : std_logic;
SIGNAL \b2v_inst4|pseudo_reg~2_combout\ : std_logic;
SIGNAL \b2v_inst4|pseudo_reg~1_combout\ : std_logic;
SIGNAL \b2v_inst4|pseudo_reg~0_combout\ : std_logic;
SIGNAL \b2v_inst4|pseudo_reg[5]~4_combout\ : std_logic;
SIGNAL \b2v_inst4|pseudo_reg[6]~3_combout\ : std_logic;
SIGNAL \b2v_inst4|pseudo_reg[7]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst9|data_out~0_combout\ : std_logic;
SIGNAL \b2v_inst|dato_o~q\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_outclk\ : std_logic;
SIGNAL \F_in[4]~input_o\ : std_logic;
SIGNAL \F_in[2]~input_o\ : std_logic;
SIGNAL \F_in[1]~input_o\ : std_logic;
SIGNAL \F_in[0]~input_o\ : std_logic;
SIGNAL \b2v_inst|Add0~3_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~5_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~1_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~1\ : std_logic;
SIGNAL \b2v_inst|Add4~2_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta~1_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~3\ : std_logic;
SIGNAL \b2v_inst|Add4~5\ : std_logic;
SIGNAL \b2v_inst|Add4~6_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta~3_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~7\ : std_logic;
SIGNAL \b2v_inst|Add4~8_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta[4]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta~4_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~9\ : std_logic;
SIGNAL \b2v_inst|Add4~11\ : std_logic;
SIGNAL \b2v_inst|Add4~13\ : std_logic;
SIGNAL \b2v_inst|Add4~15\ : std_logic;
SIGNAL \b2v_inst|Add4~17\ : std_logic;
SIGNAL \b2v_inst|Add4~19\ : std_logic;
SIGNAL \b2v_inst|Add4~20_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~21\ : std_logic;
SIGNAL \b2v_inst|Add4~23\ : std_logic;
SIGNAL \b2v_inst|Add4~25\ : std_logic;
SIGNAL \b2v_inst|Add4~27\ : std_logic;
SIGNAL \b2v_inst|Add4~29\ : std_logic;
SIGNAL \b2v_inst|Add4~31\ : std_logic;
SIGNAL \b2v_inst|Add4~33\ : std_logic;
SIGNAL \b2v_inst|Add4~34_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~35\ : std_logic;
SIGNAL \b2v_inst|Add4~36_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~37\ : std_logic;
SIGNAL \b2v_inst|Add4~38_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~39\ : std_logic;
SIGNAL \b2v_inst|Add4~40_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~41\ : std_logic;
SIGNAL \b2v_inst|Add4~43\ : std_logic;
SIGNAL \b2v_inst|Add4~45\ : std_logic;
SIGNAL \b2v_inst|Add4~47\ : std_logic;
SIGNAL \b2v_inst|Add4~49\ : std_logic;
SIGNAL \b2v_inst|Add4~51\ : std_logic;
SIGNAL \b2v_inst|Add4~52_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~53\ : std_logic;
SIGNAL \b2v_inst|Add4~54_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~55\ : std_logic;
SIGNAL \b2v_inst|Add4~56_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~57\ : std_logic;
SIGNAL \b2v_inst|Add4~58_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~59\ : std_logic;
SIGNAL \b2v_inst|Add4~60_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~61\ : std_logic;
SIGNAL \b2v_inst|Add4~62_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~22_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~24_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~26_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~5_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan2~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~16_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~12_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta[6]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~14_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta[7]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~6_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~10_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~8_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan1~9_combout\ : std_logic;
SIGNAL \b2v_inst|rlj~q\ : std_logic;
SIGNAL \periodos[0]~input_o\ : std_logic;
SIGNAL \b2v_inst1|Mux1~1_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal9~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~3_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux1~2_combout\ : std_logic;
SIGNAL \b2v_inst1|cnt[0]~0_combout\ : std_logic;
SIGNAL \periodos[1]~input_o\ : std_logic;
SIGNAL \b2v_inst1|Mux4~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal8~2_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~1_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal8~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Equal8~1_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux8~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux8~1_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst1|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst1|q~9_combout\ : std_logic;
SIGNAL \b2v_inst1|q~10_combout\ : std_logic;
SIGNAL \b2v_inst1|Add0~2_combout\ : std_logic;
SIGNAL \b2v_inst1|q~8_combout\ : std_logic;
SIGNAL \b2v_inst1|q~11_combout\ : std_logic;
SIGNAL \b2v_inst1|q~12_combout\ : std_logic;
SIGNAL \b2v_inst1|q~4_combout\ : std_logic;
SIGNAL \b2v_inst1|q~13_combout\ : std_logic;
SIGNAL \b2v_inst1|q~0_combout\ : std_logic;
SIGNAL \b2v_inst1|q~_emulated_q\ : std_logic;
SIGNAL \b2v_inst1|q~1_combout\ : std_logic;
SIGNAL \b2v_inst1|q~3_combout\ : std_logic;
SIGNAL \b2v_inst1|q~2_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~4_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta_o[6]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|cuenta_o[7]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Add4~18_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~0_combout\ : std_logic;
SIGNAL \b2v_inst|indice~12_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~4_combout\ : std_logic;
SIGNAL \b2v_inst|indice~8_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~1\ : std_logic;
SIGNAL \b2v_inst|Add3~3\ : std_logic;
SIGNAL \b2v_inst|Add3~5\ : std_logic;
SIGNAL \b2v_inst|Add3~6_combout\ : std_logic;
SIGNAL \b2v_inst|indice~9_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~7\ : std_logic;
SIGNAL \b2v_inst|Add3~9\ : std_logic;
SIGNAL \b2v_inst|Add3~10_combout\ : std_logic;
SIGNAL \b2v_inst|indice~11_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~11\ : std_logic;
SIGNAL \b2v_inst|Add3~13\ : std_logic;
SIGNAL \b2v_inst|Add3~14_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~15\ : std_logic;
SIGNAL \b2v_inst|Add3~17\ : std_logic;
SIGNAL \b2v_inst|Add3~19\ : std_logic;
SIGNAL \b2v_inst|Add3~20_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~21\ : std_logic;
SIGNAL \b2v_inst|Add3~23\ : std_logic;
SIGNAL \b2v_inst|Add3~24_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~25\ : std_logic;
SIGNAL \b2v_inst|Add3~26_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~22_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~0_combout\ : std_logic;
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
SIGNAL \b2v_inst|Add3~39\ : std_logic;
SIGNAL \b2v_inst|Add3~41\ : std_logic;
SIGNAL \b2v_inst|Add3~43\ : std_logic;
SIGNAL \b2v_inst|Add3~45\ : std_logic;
SIGNAL \b2v_inst|Add3~47\ : std_logic;
SIGNAL \b2v_inst|Add3~48_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~49\ : std_logic;
SIGNAL \b2v_inst|Add3~51\ : std_logic;
SIGNAL \b2v_inst|Add3~52_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~53\ : std_logic;
SIGNAL \b2v_inst|Add3~55\ : std_logic;
SIGNAL \b2v_inst|Add3~56_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~57\ : std_logic;
SIGNAL \b2v_inst|Add3~58_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~54_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan6~1_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~44_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~50_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan6~2_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~30_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan6~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~59\ : std_logic;
SIGNAL \b2v_inst|Add3~60_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \b2v_inst|indice~7_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~2_combout\ : std_logic;
SIGNAL \b2v_inst|indice_o[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~4_combout\ : std_logic;
SIGNAL \b2v_inst|indice_o[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|indice_o[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~8_combout\ : std_logic;
SIGNAL \b2v_inst|indice_o[5]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~12_combout\ : std_logic;
SIGNAL \b2v_inst|indice_o[7]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~16_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~18_combout\ : std_logic;
SIGNAL \b2v_inst|indice~17_combout\ : std_logic;
SIGNAL \b2v_inst|indice~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~17_combout\ : std_logic;
SIGNAL \b2v_inst|indice~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~3_combout\ : std_logic;
SIGNAL \b2v_inst|indice~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux21~25_combout\ : std_logic;
SIGNAL \b2v_inst|Add3~61\ : std_logic;
SIGNAL \b2v_inst|Add3~62_combout\ : std_logic;
SIGNAL \b2v_inst|indice~15_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[7]~47_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[7]~12_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[7]~13_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[7]~14_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~15_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[7]~48_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[7]~16_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[0]~17_combout\ : std_logic;
SIGNAL \b2v_inst|indice~18_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[7]~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux9~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux10~25_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~1_cout\ : std_logic;
SIGNAL \b2v_inst|Add1~2_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~1_cout\ : std_logic;
SIGNAL \b2v_inst|Add2~2_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[7]~49_combout\ : std_logic;
SIGNAL \b2v_inst|indice[9]~3_combout\ : std_logic;
SIGNAL \b2v_inst|indice[9]~_emulated_q\ : std_logic;
SIGNAL \b2v_inst|indice[9]~2_combout\ : std_logic;
SIGNAL \b2v_inst|indice~14_combout\ : std_logic;
SIGNAL \b2v_inst|salida1[7]~19_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~20_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux8~25_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~3\ : std_logic;
SIGNAL \b2v_inst|Add1~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux19~25_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~22_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~28_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~22_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~5\ : std_logic;
SIGNAL \b2v_inst|Add1~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~9_combout\ : std_logic;
SIGNAL \b2v_inst|indice[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~25_combout\ : std_logic;
SIGNAL \b2v_inst|Mux18~26_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~24_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~25_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~3\ : std_logic;
SIGNAL \b2v_inst|Add2~5\ : std_logic;
SIGNAL \b2v_inst|Add2~7\ : std_logic;
SIGNAL \b2v_inst|Add2~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~21_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux17~24_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux6~20_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~26_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~27_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~7\ : std_logic;
SIGNAL \b2v_inst|Add1~9\ : std_logic;
SIGNAL \b2v_inst|Add1~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~11_combout\ : std_logic;
SIGNAL \b2v_inst|indice[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~13_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~22_combout\ : std_logic;
SIGNAL \b2v_inst|Mux16~20_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~28_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~29_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~9\ : std_logic;
SIGNAL \b2v_inst|Add2~11\ : std_logic;
SIGNAL \b2v_inst|Add2~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~17_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~15_combout\ : std_logic;
SIGNAL \b2v_inst|Mux4~14_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~11\ : std_logic;
SIGNAL \b2v_inst|Add1~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~5_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~19_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux15~17_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~30_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~31_combout\ : std_logic;
SIGNAL \b2v_inst|salida[6]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~8_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~11_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~12_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~13_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~13\ : std_logic;
SIGNAL \b2v_inst|Add1~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~9_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~15_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~13\ : std_logic;
SIGNAL \b2v_inst|Add2~14_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~32_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~33_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~10_combout\ : std_logic;
SIGNAL \b2v_inst|Mux13~11_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~15\ : std_logic;
SIGNAL \b2v_inst|Add2~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~4_combout\ : std_logic;
SIGNAL \b2v_inst|Mux3~14_combout\ : std_logic;
SIGNAL \b2v_inst|Mux7~23_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~6_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~7_combout\ : std_logic;
SIGNAL \b2v_inst|Mux2~8_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~34_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~35_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~15\ : std_logic;
SIGNAL \b2v_inst|Add1~17\ : std_logic;
SIGNAL \b2v_inst|Add1~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux12~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux12~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux12~2_combout\ : std_logic;
SIGNAL \b2v_inst|Mux1~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mux1~1_combout\ : std_logic;
SIGNAL \b2v_inst|Add2~17\ : std_logic;
SIGNAL \b2v_inst|Add2~18_combout\ : std_logic;
SIGNAL \b2v_inst|Mux14~16_combout\ : std_logic;
SIGNAL \b2v_inst|Mux12~3_combout\ : std_logic;
SIGNAL \b2v_inst|Mux12~4_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~36_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~37_combout\ : std_logic;
SIGNAL \b2v_inst|Mux0~1_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~19\ : std_logic;
SIGNAL \b2v_inst|Add1~20_combout\ : std_logic;
SIGNAL \b2v_inst|Mux11~1_combout\ : std_logic;
SIGNAL \b2v_inst|Mux0~0_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~38_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~39_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~42_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~43_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~44_combout\ : std_logic;
SIGNAL \b2v_inst|LessThan8~2_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~45_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~50_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~51_combout\ : std_logic;
SIGNAL \b2v_inst|salida1~46_combout\ : std_logic;
SIGNAL \b2v_inst|salida[11]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst|cuenta\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \b2v_inst1|cnt\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \b2v_inst|salida1\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst1|MAX_cont\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \b2v_inst|salida\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \b2v_inst|indice_o\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \b2v_inst11|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|cuenta_o\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \b2v_inst4|pseudo_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|indice\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \b2v_inst1|ALT_INV_q~0_combout\ : std_logic;
SIGNAL \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\ : std_logic;
SIGNAL \b2v_inst12|ALT_INV_SALIDA_PB~q\ : std_logic;

BEGIN

ww_entrada <= entrada;
ww_reset <= reset;
ww_datos_ext <= datos_ext;
ww_PB_N <= PB_N;
ww_F_in <= F_in;
ww_periodos <= periodos;
locked <= ww_locked;
dato_o <= ww_dato_o;
c0 <= ww_c0;
q <= ww_q;
\GND\ <= \ww_GND\;
rlj <= ww_rlj;
LED <= ww_LED;
prng_o <= ww_prng_o;
LED_SEL <= ww_LED_SEL;
cuenta_o <= ww_cuenta_o;
indice_o <= ww_indice_o;
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

\b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk\(0));

\b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_e_c0_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk\(0));

\b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk\(1));
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
	c0_high => 200,
	c0_initial => 1,
	c0_low => 200,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 250,
	c2_initial => 1,
	c2_low => 250,
	c2_mode => "even",
	c2_ph => 0,
	c2_use_casc_in => "on",
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
	clk0_divide_by => 100,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "c2",
	clk1_divide_by => 62500,
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
	m => 4,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 6264,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 250,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \reset~input_o\,
	fbin => \b2v_inst5|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \b2v_inst5|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \b2v_inst5|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \b2v_inst5|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \b2v_inst5|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: LCCOMB_X85_Y24_N28
\b2v_inst|Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~28_combout\ = (\b2v_inst|Add4~27\ & (\b2v_inst|cuenta\(14) & (!\b2v_inst|LessThan2~0_combout\ & VCC))) # (!\b2v_inst|Add4~27\ & ((((\b2v_inst|cuenta\(14) & !\b2v_inst|LessThan2~0_combout\)))))
-- \b2v_inst|Add4~29\ = CARRY((\b2v_inst|cuenta\(14) & (!\b2v_inst|LessThan2~0_combout\ & !\b2v_inst|Add4~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(14),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~27\,
	combout => \b2v_inst|Add4~28_combout\,
	cout => \b2v_inst|Add4~29\);

-- Location: LCCOMB_X85_Y24_N30
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

-- Location: LCCOMB_X85_Y23_N0
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

-- Location: LCCOMB_X85_Y23_N10
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

-- Location: LCCOMB_X85_Y23_N12
\b2v_inst|Add4~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~44_combout\ = (\b2v_inst|Add4~43\ & (\b2v_inst|cuenta\(22) & (!\b2v_inst|LessThan2~0_combout\ & VCC))) # (!\b2v_inst|Add4~43\ & ((((\b2v_inst|cuenta\(22) & !\b2v_inst|LessThan2~0_combout\)))))
-- \b2v_inst|Add4~45\ = CARRY((\b2v_inst|cuenta\(22) & (!\b2v_inst|LessThan2~0_combout\ & !\b2v_inst|Add4~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(22),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~43\,
	combout => \b2v_inst|Add4~44_combout\,
	cout => \b2v_inst|Add4~45\);

-- Location: LCCOMB_X85_Y23_N14
\b2v_inst|Add4~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~46_combout\ = (\b2v_inst|Add4~45\ & (((\b2v_inst|LessThan2~0_combout\)) # (!\b2v_inst|cuenta\(23)))) # (!\b2v_inst|Add4~45\ & (((\b2v_inst|cuenta\(23) & !\b2v_inst|LessThan2~0_combout\)) # (GND)))
-- \b2v_inst|Add4~47\ = CARRY(((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|Add4~45\)) # (!\b2v_inst|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(23),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~45\,
	combout => \b2v_inst|Add4~46_combout\,
	cout => \b2v_inst|Add4~47\);

-- Location: LCCOMB_X85_Y23_N16
\b2v_inst|Add4~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~48_combout\ = (\b2v_inst|Add4~47\ & (\b2v_inst|cuenta\(24) & (!\b2v_inst|LessThan2~0_combout\ & VCC))) # (!\b2v_inst|Add4~47\ & ((((\b2v_inst|cuenta\(24) & !\b2v_inst|LessThan2~0_combout\)))))
-- \b2v_inst|Add4~49\ = CARRY((\b2v_inst|cuenta\(24) & (!\b2v_inst|LessThan2~0_combout\ & !\b2v_inst|Add4~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(24),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~47\,
	combout => \b2v_inst|Add4~48_combout\,
	cout => \b2v_inst|Add4~49\);

-- Location: LCCOMB_X85_Y23_N18
\b2v_inst|Add4~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~50_combout\ = (\b2v_inst|Add4~49\ & (((\b2v_inst|LessThan2~0_combout\)) # (!\b2v_inst|cuenta\(25)))) # (!\b2v_inst|Add4~49\ & (((\b2v_inst|cuenta\(25) & !\b2v_inst|LessThan2~0_combout\)) # (GND)))
-- \b2v_inst|Add4~51\ = CARRY(((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|Add4~49\)) # (!\b2v_inst|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(25),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~49\,
	combout => \b2v_inst|Add4~50_combout\,
	cout => \b2v_inst|Add4~51\);

-- Location: LCCOMB_X88_Y22_N6
\b2v_inst|Add3~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~38_combout\ = (\b2v_inst|Add3~37\ & (((!\b2v_inst|indice~12_combout\)) # (!\b2v_inst|indice\(19)))) # (!\b2v_inst|Add3~37\ & (((\b2v_inst|indice\(19) & \b2v_inst|indice~12_combout\)) # (GND)))
-- \b2v_inst|Add3~39\ = CARRY(((!\b2v_inst|Add3~37\) # (!\b2v_inst|indice~12_combout\)) # (!\b2v_inst|indice\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(19),
	datab => \b2v_inst|indice~12_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~37\,
	combout => \b2v_inst|Add3~38_combout\,
	cout => \b2v_inst|Add3~39\);

-- Location: LCCOMB_X88_Y22_N8
\b2v_inst|Add3~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~40_combout\ = (\b2v_inst|Add3~39\ & (\b2v_inst|indice\(20) & (\b2v_inst|indice~12_combout\ & VCC))) # (!\b2v_inst|Add3~39\ & ((((\b2v_inst|indice\(20) & \b2v_inst|indice~12_combout\)))))
-- \b2v_inst|Add3~41\ = CARRY((\b2v_inst|indice\(20) & (\b2v_inst|indice~12_combout\ & !\b2v_inst|Add3~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(20),
	datab => \b2v_inst|indice~12_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~39\,
	combout => \b2v_inst|Add3~40_combout\,
	cout => \b2v_inst|Add3~41\);

-- Location: LCCOMB_X88_Y22_N10
\b2v_inst|Add3~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~42_combout\ = (\b2v_inst|Add3~41\ & (((!\b2v_inst|indice~12_combout\)) # (!\b2v_inst|indice\(21)))) # (!\b2v_inst|Add3~41\ & (((\b2v_inst|indice\(21) & \b2v_inst|indice~12_combout\)) # (GND)))
-- \b2v_inst|Add3~43\ = CARRY(((!\b2v_inst|Add3~41\) # (!\b2v_inst|indice~12_combout\)) # (!\b2v_inst|indice\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(21),
	datab => \b2v_inst|indice~12_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~41\,
	combout => \b2v_inst|Add3~42_combout\,
	cout => \b2v_inst|Add3~43\);

-- Location: LCCOMB_X88_Y22_N14
\b2v_inst|Add3~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~46_combout\ = (\b2v_inst|Add3~45\ & (((!\b2v_inst|indice~12_combout\)) # (!\b2v_inst|indice\(23)))) # (!\b2v_inst|Add3~45\ & (((\b2v_inst|indice\(23) & \b2v_inst|indice~12_combout\)) # (GND)))
-- \b2v_inst|Add3~47\ = CARRY(((!\b2v_inst|Add3~45\) # (!\b2v_inst|indice~12_combout\)) # (!\b2v_inst|indice\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(23),
	datab => \b2v_inst|indice~12_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~45\,
	combout => \b2v_inst|Add3~46_combout\,
	cout => \b2v_inst|Add3~47\);

-- Location: LCCOMB_X94_Y23_N10
\b2v_inst|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~4_combout\ = (\b2v_inst|Mux19~25_combout\ & (!\b2v_inst|Add2~3\ & VCC)) # (!\b2v_inst|Mux19~25_combout\ & (\b2v_inst|Add2~3\ $ (GND)))
-- \b2v_inst|Add2~5\ = CARRY((!\b2v_inst|Mux19~25_combout\ & !\b2v_inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux19~25_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~3\,
	combout => \b2v_inst|Add2~4_combout\,
	cout => \b2v_inst|Add2~5\);

-- Location: LCCOMB_X94_Y23_N12
\b2v_inst|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~6_combout\ = (\b2v_inst|Mux18~26_combout\ & ((\b2v_inst|Add2~5\) # (GND))) # (!\b2v_inst|Mux18~26_combout\ & (!\b2v_inst|Add2~5\))
-- \b2v_inst|Add2~7\ = CARRY((\b2v_inst|Mux18~26_combout\) # (!\b2v_inst|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux18~26_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~5\,
	combout => \b2v_inst|Add2~6_combout\,
	cout => \b2v_inst|Add2~7\);

-- Location: LCCOMB_X91_Y23_N12
\b2v_inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~8_combout\ = (\b2v_inst|Mux6~20_combout\ & (!\b2v_inst|Add1~7\ & VCC)) # (!\b2v_inst|Mux6~20_combout\ & (\b2v_inst|Add1~7\ $ (GND)))
-- \b2v_inst|Add1~9\ = CARRY((!\b2v_inst|Mux6~20_combout\ & !\b2v_inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux6~20_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~7\,
	combout => \b2v_inst|Add1~8_combout\,
	cout => \b2v_inst|Add1~9\);

-- Location: LCCOMB_X94_Y23_N16
\b2v_inst|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~10_combout\ = (\b2v_inst|Mux16~20_combout\ & ((\b2v_inst|Add2~9\) # (GND))) # (!\b2v_inst|Mux16~20_combout\ & (!\b2v_inst|Add2~9\))
-- \b2v_inst|Add2~11\ = CARRY((\b2v_inst|Mux16~20_combout\) # (!\b2v_inst|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux16~20_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~9\,
	combout => \b2v_inst|Add2~10_combout\,
	cout => \b2v_inst|Add2~11\);

-- Location: LCCOMB_X91_Y23_N20
\b2v_inst|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~16_combout\ = (\b2v_inst|Mux2~8_combout\ & (!\b2v_inst|Add1~15\ & VCC)) # (!\b2v_inst|Mux2~8_combout\ & (\b2v_inst|Add1~15\ $ (GND)))
-- \b2v_inst|Add1~17\ = CARRY((!\b2v_inst|Mux2~8_combout\ & !\b2v_inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux2~8_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~15\,
	combout => \b2v_inst|Add1~16_combout\,
	cout => \b2v_inst|Add1~17\);

-- Location: LCCOMB_X94_Y23_N24
\b2v_inst|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~18_combout\ = (\b2v_inst|Mux12~4_combout\ & ((\b2v_inst|Add2~17\) # (GND))) # (!\b2v_inst|Mux12~4_combout\ & (!\b2v_inst|Add2~17\))
-- \b2v_inst|Add2~19\ = CARRY((\b2v_inst|Mux12~4_combout\) # (!\b2v_inst|Add2~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux12~4_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~17\,
	combout => \b2v_inst|Add2~18_combout\,
	cout => \b2v_inst|Add2~19\);

-- Location: LCCOMB_X94_Y23_N26
\b2v_inst|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~20_combout\ = (\b2v_inst|Add2~19\ & (\b2v_inst|Mux11~0_combout\ & (\b2v_inst|indice~17_combout\ & VCC))) # (!\b2v_inst|Add2~19\ & ((((\b2v_inst|Mux11~0_combout\ & \b2v_inst|indice~17_combout\)))))
-- \b2v_inst|Add2~21\ = CARRY((\b2v_inst|Mux11~0_combout\ & (\b2v_inst|indice~17_combout\ & !\b2v_inst|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux11~0_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~19\,
	combout => \b2v_inst|Add2~20_combout\,
	cout => \b2v_inst|Add2~21\);

-- Location: LCCOMB_X91_Y23_N24
\b2v_inst|Add1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~20_combout\ = (\b2v_inst|Add1~19\ & (!\b2v_inst|indice~17_combout\ & (\b2v_inst|Mux0~1_combout\ & VCC))) # (!\b2v_inst|Add1~19\ & ((((!\b2v_inst|indice~17_combout\ & \b2v_inst|Mux0~1_combout\)))))
-- \b2v_inst|Add1~21\ = CARRY((!\b2v_inst|indice~17_combout\ & (\b2v_inst|Mux0~1_combout\ & !\b2v_inst|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux0~1_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~19\,
	combout => \b2v_inst|Add1~20_combout\,
	cout => \b2v_inst|Add1~21\);

-- Location: LCCOMB_X91_Y23_N26
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

-- Location: LCCOMB_X94_Y23_N28
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

-- Location: LCCOMB_X84_Y23_N4
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

-- Location: FF_X84_Y23_N7
\b2v_inst|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~50_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(25));

-- Location: FF_X85_Y23_N17
\b2v_inst|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~48_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(24));

-- Location: FF_X85_Y23_N15
\b2v_inst|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~46_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(23));

-- Location: LCCOMB_X84_Y23_N12
\b2v_inst|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~1_combout\ = (!\b2v_inst|cuenta\(25) & (!\b2v_inst|cuenta\(23) & (!\b2v_inst|cuenta\(26) & !\b2v_inst|cuenta\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(25),
	datab => \b2v_inst|cuenta\(23),
	datac => \b2v_inst|cuenta\(26),
	datad => \b2v_inst|cuenta\(24),
	combout => \b2v_inst|LessThan1~1_combout\);

-- Location: FF_X85_Y23_N13
\b2v_inst|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~44_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(22));

-- Location: FF_X85_Y23_N11
\b2v_inst|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~42_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(21));

-- Location: LCCOMB_X84_Y23_N22
\b2v_inst|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~2_combout\ = (!\b2v_inst|cuenta\(20) & (!\b2v_inst|cuenta\(21) & (!\b2v_inst|cuenta\(22) & !\b2v_inst|cuenta\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(20),
	datab => \b2v_inst|cuenta\(21),
	datac => \b2v_inst|cuenta\(22),
	datad => \b2v_inst|cuenta\(19),
	combout => \b2v_inst|LessThan1~2_combout\);

-- Location: FF_X85_Y23_N1
\b2v_inst|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~32_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(16));

-- Location: FF_X84_Y23_N3
\b2v_inst|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~30_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(15));

-- Location: LCCOMB_X84_Y23_N8
\b2v_inst|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~3_combout\ = (!\b2v_inst|cuenta\(18) & (!\b2v_inst|cuenta\(15) & (!\b2v_inst|cuenta\(16) & !\b2v_inst|cuenta\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(18),
	datab => \b2v_inst|cuenta\(15),
	datac => \b2v_inst|cuenta\(16),
	datad => \b2v_inst|cuenta\(17),
	combout => \b2v_inst|LessThan1~3_combout\);

-- Location: LCCOMB_X84_Y23_N14
\b2v_inst|LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~4_combout\ = (\b2v_inst|LessThan1~0_combout\ & (\b2v_inst|LessThan1~3_combout\ & (\b2v_inst|LessThan1~2_combout\ & \b2v_inst|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan1~0_combout\,
	datab => \b2v_inst|LessThan1~3_combout\,
	datac => \b2v_inst|LessThan1~2_combout\,
	datad => \b2v_inst|LessThan1~1_combout\,
	combout => \b2v_inst|LessThan1~4_combout\);

-- Location: FF_X91_Y23_N19
\b2v_inst|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~28_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(14));

-- Location: FF_X85_Y23_N19
\b2v_inst|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~18_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(9));

-- Location: FF_X84_Y23_N29
\b2v_inst|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|cuenta[2]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(2));

-- Location: LCCOMB_X84_Y23_N30
\b2v_inst|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~7_combout\ = (\b2v_inst|cuenta\(3) & (\b2v_inst|cuenta\(4) & (\b2v_inst|cuenta\(1) & \b2v_inst|cuenta\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(3),
	datab => \b2v_inst|cuenta\(4),
	datac => \b2v_inst|cuenta\(1),
	datad => \b2v_inst|cuenta\(2),
	combout => \b2v_inst|LessThan1~7_combout\);

-- Location: FF_X86_Y23_N7
\b2v_inst11|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst11|Equal0~0_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|PB_SIN_REBOTE~q\);

-- Location: FF_X86_Y24_N1
\b2v_inst|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(0));

-- Location: LCCOMB_X86_Y24_N0
\b2v_inst|cuenta~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta~0_combout\ = (!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|LessThan2~0_combout\,
	datac => \b2v_inst|cuenta\(0),
	combout => \b2v_inst|cuenta~0_combout\);

-- Location: LCCOMB_X84_Y24_N24
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

-- Location: LCCOMB_X84_Y23_N24
\b2v_inst|cuenta~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta~2_combout\ = (!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|cuenta\(2),
	combout => \b2v_inst|cuenta~2_combout\);

-- Location: LCCOMB_X84_Y24_N16
\b2v_inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~2_combout\ = \F_in[3]~input_o\ $ (((\F_in[2]~input_o\ & (\F_in[1]~input_o\ & \F_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_in[3]~input_o\,
	datab => \F_in[2]~input_o\,
	datac => \F_in[1]~input_o\,
	datad => \F_in[0]~input_o\,
	combout => \b2v_inst|Add0~2_combout\);

-- Location: LCCOMB_X84_Y23_N18
\b2v_inst|cuenta~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta~5_combout\ = (!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datac => \b2v_inst|cuenta\(5),
	combout => \b2v_inst|cuenta~5_combout\);

-- Location: FF_X88_Y22_N15
\b2v_inst|indice[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~46_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(23));

-- Location: FF_X88_Y22_N11
\b2v_inst|indice[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~42_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(21));

-- Location: FF_X88_Y22_N9
\b2v_inst|indice[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~40_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(20));

-- Location: FF_X88_Y22_N7
\b2v_inst|indice[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~38_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(19));

-- Location: LCCOMB_X89_Y22_N2
\b2v_inst|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan6~3_combout\ = (!\b2v_inst|indice\(21) & (!\b2v_inst|indice\(19) & (!\b2v_inst|indice\(18) & !\b2v_inst|indice\(20))))

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
	combout => \b2v_inst|LessThan6~3_combout\);

-- Location: FF_X86_Y23_N1
\b2v_inst11|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst11|SHIFT_PB[3]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|SHIFT_PB\(3));

-- Location: FF_X86_Y23_N5
\b2v_inst11|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst11|SHIFT_PB[2]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|SHIFT_PB\(2));

-- Location: FF_X86_Y23_N11
\b2v_inst11|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	asdata => \b2v_inst11|SHIFT_PB\(2),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|SHIFT_PB\(1));

-- Location: FF_X86_Y23_N13
\b2v_inst11|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[1]~clkctrl_outclk\,
	d => \b2v_inst11|SHIFT_PB[0]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst11|SHIFT_PB\(0));

-- Location: LCCOMB_X86_Y23_N6
\b2v_inst11|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst11|Equal0~0_combout\ = (\b2v_inst11|SHIFT_PB\(1)) # ((\b2v_inst11|SHIFT_PB\(3)) # ((\b2v_inst11|SHIFT_PB\(2)) # (\b2v_inst11|SHIFT_PB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|SHIFT_PB\(1),
	datab => \b2v_inst11|SHIFT_PB\(3),
	datac => \b2v_inst11|SHIFT_PB\(2),
	datad => \b2v_inst11|SHIFT_PB\(0),
	combout => \b2v_inst11|Equal0~0_combout\);

-- Location: LCCOMB_X87_Y20_N12
\b2v_inst|Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~0_combout\ = \b2v_inst|indice~16_combout\ $ (\b2v_inst|indice~11_combout\ $ (((\b2v_inst|indice~17_combout\) # (\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux21~0_combout\);

-- Location: LCCOMB_X89_Y21_N4
\b2v_inst|Mux21~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~6_combout\ = (\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~17_combout\ $ (((!\b2v_inst|indice~16_combout\ & !\b2v_inst|indice~10_combout\))))) # (!\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~16_combout\ & 
-- ((!\b2v_inst|indice~10_combout\) # (!\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~8_combout\,
	datad => \b2v_inst|indice~10_combout\,
	combout => \b2v_inst|Mux21~6_combout\);

-- Location: LCCOMB_X89_Y21_N10
\b2v_inst|Mux21~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~7_combout\ = (\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~10_combout\))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~16_combout\ & !\b2v_inst|indice~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~8_combout\,
	datad => \b2v_inst|indice~10_combout\,
	combout => \b2v_inst|Mux21~7_combout\);

-- Location: LCCOMB_X89_Y21_N16
\b2v_inst|Mux21~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~8_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~8_combout\) # ((!\b2v_inst|indice~16_combout\ & \b2v_inst|indice~10_combout\)))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~8_combout\ $ 
-- (\b2v_inst|indice~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~8_combout\,
	datad => \b2v_inst|indice~10_combout\,
	combout => \b2v_inst|Mux21~8_combout\);

-- Location: LCCOMB_X89_Y21_N6
\b2v_inst|Mux21~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~9_combout\ = (\b2v_inst|indice~9_combout\ & (((\b2v_inst|indice~11_combout\) # (\b2v_inst|Mux21~7_combout\)))) # (!\b2v_inst|indice~9_combout\ & (\b2v_inst|Mux21~8_combout\ & (!\b2v_inst|indice~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|Mux21~8_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|Mux21~7_combout\,
	combout => \b2v_inst|Mux21~9_combout\);

-- Location: LCCOMB_X89_Y21_N12
\b2v_inst|Mux21~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~10_combout\ = (\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~16_combout\) # (!\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\ & 
-- (!\b2v_inst|indice~8_combout\)) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~8_combout\ & \b2v_inst|indice~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~8_combout\,
	datad => \b2v_inst|indice~10_combout\,
	combout => \b2v_inst|Mux21~10_combout\);

-- Location: LCCOMB_X89_Y21_N14
\b2v_inst|Mux21~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~11_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|Mux21~9_combout\ & (\b2v_inst|Mux21~10_combout\)) # (!\b2v_inst|Mux21~9_combout\ & ((!\b2v_inst|Mux21~6_combout\))))) # (!\b2v_inst|indice~11_combout\ & 
-- (((\b2v_inst|Mux21~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux21~10_combout\,
	datab => \b2v_inst|Mux21~6_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|Mux21~9_combout\,
	combout => \b2v_inst|Mux21~11_combout\);

-- Location: LCCOMB_X92_Y20_N2
\b2v_inst|Mux21~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~20_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~9_combout\) # (\b2v_inst|indice~11_combout\ $ (!\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~8_combout\ $ 
-- (((!\b2v_inst|indice~11_combout\ & \b2v_inst|indice~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux21~20_combout\);

-- Location: LCCOMB_X92_Y20_N8
\b2v_inst|Mux21~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~21_combout\ = (\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~8_combout\ & ((!\b2v_inst|indice~9_combout\) # (!\b2v_inst|indice~11_combout\)))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~11_combout\ $ 
-- ((\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux21~21_combout\);

-- Location: LCCOMB_X92_Y20_N22
\b2v_inst|Mux21~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~22_combout\ = (\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~16_combout\ & ((!\b2v_inst|Mux21~20_combout\))) # (!\b2v_inst|indice~16_combout\ & 
-- (\b2v_inst|Mux21~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|Mux21~21_combout\,
	datad => \b2v_inst|Mux21~20_combout\,
	combout => \b2v_inst|Mux21~22_combout\);

-- Location: LCCOMB_X86_Y22_N12
\b2v_inst|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~1_combout\ = (\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~16_combout\) # ((!\b2v_inst|indice~17_combout\ & !\b2v_inst|indice~10_combout\)))) # (!\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~17_combout\ $ 
-- (((\b2v_inst|indice~16_combout\ & \b2v_inst|indice~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~8_combout\,
	datad => \b2v_inst|indice~10_combout\,
	combout => \b2v_inst|Mux10~1_combout\);

-- Location: LCCOMB_X87_Y20_N16
\b2v_inst|Mux10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~6_combout\ = (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~11_combout\ & (!\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux10~6_combout\);

-- Location: LCCOMB_X87_Y20_N22
\b2v_inst|Mux10~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~7_combout\ = \b2v_inst|indice~16_combout\ $ (\b2v_inst|indice~11_combout\ $ (((\b2v_inst|indice~17_combout\ & \b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux10~7_combout\);

-- Location: LCCOMB_X87_Y20_N20
\b2v_inst|Mux10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~8_combout\ = (\b2v_inst|indice~9_combout\ & (((\b2v_inst|indice~17_combout\ & \b2v_inst|indice~11_combout\)))) # (!\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux10~8_combout\);

-- Location: LCCOMB_X87_Y20_N14
\b2v_inst|Mux10~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~9_combout\ = (\b2v_inst|indice~10_combout\ & (((\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~8_combout\ & ((!\b2v_inst|Mux10~7_combout\))) # (!\b2v_inst|indice~8_combout\ & 
-- (!\b2v_inst|Mux10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|Mux10~8_combout\,
	datac => \b2v_inst|Mux10~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux10~9_combout\);

-- Location: LCCOMB_X87_Y20_N0
\b2v_inst|Mux10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~10_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~9_combout\)) # (!\b2v_inst|indice~17_combout\ & ((!\b2v_inst|indice~11_combout\))))) # (!\b2v_inst|indice~16_combout\ & 
-- (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux10~10_combout\);

-- Location: LCCOMB_X87_Y20_N10
\b2v_inst|Mux10~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~11_combout\ = (\b2v_inst|indice~10_combout\ & ((\b2v_inst|Mux10~9_combout\ & ((!\b2v_inst|Mux10~10_combout\))) # (!\b2v_inst|Mux10~9_combout\ & (!\b2v_inst|Mux10~6_combout\)))) # (!\b2v_inst|indice~10_combout\ & 
-- (((\b2v_inst|Mux10~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|Mux10~6_combout\,
	datac => \b2v_inst|Mux10~9_combout\,
	datad => \b2v_inst|Mux10~10_combout\,
	combout => \b2v_inst|Mux10~11_combout\);

-- Location: LCCOMB_X92_Y20_N12
\b2v_inst|Mux10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~12_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~8_combout\ $ (((\b2v_inst|indice~11_combout\ & !\b2v_inst|indice~9_combout\))))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~9_combout\ & 
-- (\b2v_inst|indice~11_combout\ $ (\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux10~12_combout\);

-- Location: LCCOMB_X92_Y20_N30
\b2v_inst|Mux10~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~13_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\ $ (\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~11_combout\ $ 
-- (\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux10~13_combout\);

-- Location: LCCOMB_X92_Y20_N16
\b2v_inst|Mux10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~14_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~9_combout\) # (\b2v_inst|indice~17_combout\ $ (!\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~17_combout\ & 
-- (!\b2v_inst|indice~9_combout\ & !\b2v_inst|indice~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux10~14_combout\);

-- Location: LCCOMB_X92_Y20_N18
\b2v_inst|Mux10~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~15_combout\ = (\b2v_inst|indice~16_combout\ & (((\b2v_inst|indice~10_combout\)) # (!\b2v_inst|Mux10~13_combout\))) # (!\b2v_inst|indice~16_combout\ & (((!\b2v_inst|indice~10_combout\ & \b2v_inst|Mux10~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux10~13_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|Mux10~14_combout\,
	combout => \b2v_inst|Mux10~15_combout\);

-- Location: LCCOMB_X92_Y20_N28
\b2v_inst|Mux10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~16_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~11_combout\ $ ((\b2v_inst|indice~9_combout\)))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~11_combout\) # 
-- (\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux10~16_combout\);

-- Location: LCCOMB_X92_Y20_N10
\b2v_inst|Mux10~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~17_combout\ = (\b2v_inst|indice~10_combout\ & ((\b2v_inst|Mux10~15_combout\ & ((\b2v_inst|Mux10~16_combout\))) # (!\b2v_inst|Mux10~15_combout\ & (\b2v_inst|Mux10~12_combout\)))) # (!\b2v_inst|indice~10_combout\ & 
-- (((\b2v_inst|Mux10~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux10~12_combout\,
	datab => \b2v_inst|Mux10~16_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|Mux10~15_combout\,
	combout => \b2v_inst|Mux10~17_combout\);

-- Location: LCCOMB_X87_Y20_N4
\b2v_inst|Mux10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~18_combout\ = (\b2v_inst|indice~7_combout\ & ((\b2v_inst|Mux10~11_combout\) # ((\b2v_inst|indice~6_combout\)))) # (!\b2v_inst|indice~7_combout\ & (((\b2v_inst|Mux10~17_combout\ & !\b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux10~11_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|Mux10~17_combout\,
	datad => \b2v_inst|indice~6_combout\,
	combout => \b2v_inst|Mux10~18_combout\);

-- Location: LCCOMB_X91_Y22_N12
\b2v_inst|Mux10~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~19_combout\ = (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~10_combout\)) # (!\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~10_combout\ & \b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux10~19_combout\);

-- Location: LCCOMB_X91_Y22_N10
\b2v_inst|Mux10~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~20_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~10_combout\ & (!\b2v_inst|indice~9_combout\)) # (!\b2v_inst|indice~10_combout\ & ((!\b2v_inst|indice~16_combout\))))) # (!\b2v_inst|indice~17_combout\ & 
-- (\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~10_combout\ $ (!\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux10~20_combout\);

-- Location: LCCOMB_X89_Y25_N22
\b2v_inst|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~1_combout\ = (\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~9_combout\ $ ((\b2v_inst|indice~7_combout\)))) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~11_combout\) # ((\b2v_inst|indice~9_combout\ & 
-- \b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux9~1_combout\);

-- Location: LCCOMB_X89_Y25_N24
\b2v_inst|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~2_combout\ = (\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~10_combout\)) # (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~9_combout\))))) # (!\b2v_inst|indice~7_combout\ & 
-- ((\b2v_inst|indice~10_combout\ & ((!\b2v_inst|indice~11_combout\))) # (!\b2v_inst|indice~10_combout\ & (!\b2v_inst|indice~9_combout\ & \b2v_inst|indice~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux9~2_combout\);

-- Location: LCCOMB_X89_Y25_N10
\b2v_inst|Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~3_combout\ = (\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~6_combout\) # ((\b2v_inst|Mux9~1_combout\)))) # (!\b2v_inst|indice~8_combout\ & (!\b2v_inst|indice~6_combout\ & ((!\b2v_inst|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~8_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|Mux9~1_combout\,
	datad => \b2v_inst|Mux9~2_combout\,
	combout => \b2v_inst|Mux9~3_combout\);

-- Location: LCCOMB_X89_Y25_N16
\b2v_inst|Mux9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~8_combout\ = (\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~7_combout\) # (\b2v_inst|indice~10_combout\ $ (!\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~10_combout\ & 
-- ((\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~7_combout\ & !\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux9~8_combout\);

-- Location: LCCOMB_X90_Y25_N22
\b2v_inst|Mux9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~10_combout\ = (\b2v_inst|indice~7_combout\ & (((!\b2v_inst|indice~6_combout\)))) # (!\b2v_inst|indice~7_combout\ & (\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~10_combout\ $ (!\b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~8_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux9~10_combout\);

-- Location: LCCOMB_X92_Y24_N14
\b2v_inst|Mux9~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~13_combout\ = (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~6_combout\ & (!\b2v_inst|indice~10_combout\ & \b2v_inst|indice~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux9~13_combout\);

-- Location: LCCOMB_X92_Y24_N8
\b2v_inst|Mux9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~14_combout\ = (\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~10_combout\))) # (!\b2v_inst|indice~7_combout\ & (\b2v_inst|indice~11_combout\)))) # (!\b2v_inst|indice~6_combout\ & 
-- (\b2v_inst|indice~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux9~14_combout\);

-- Location: LCCOMB_X92_Y24_N6
\b2v_inst|Mux9~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~15_combout\ = (\b2v_inst|indice~9_combout\ & (((\b2v_inst|Mux9~13_combout\) # (\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~9_combout\ & (\b2v_inst|Mux9~14_combout\ & ((!\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|Mux9~14_combout\,
	datac => \b2v_inst|Mux9~13_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux9~15_combout\);

-- Location: LCCOMB_X89_Y25_N2
\b2v_inst|Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~0_combout\ = (\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~7_combout\ & \b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~11_combout\ & (!\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~7_combout\ & 
-- !\b2v_inst|indice~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux20~0_combout\);

-- Location: LCCOMB_X89_Y25_N20
\b2v_inst|Mux9~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~19_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~9_combout\ & ((!\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~7_combout\)))) # (!\b2v_inst|indice~11_combout\ & 
-- (!\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~9_combout\) # (\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux9~19_combout\);

-- Location: LCCOMB_X89_Y25_N18
\b2v_inst|Mux9~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~20_combout\ = (\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~11_combout\ & ((!\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~11_combout\) # 
-- (!\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux9~20_combout\);

-- Location: LCCOMB_X89_Y25_N4
\b2v_inst|Mux9~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~21_combout\ = (\b2v_inst|indice~10_combout\ & (((\b2v_inst|indice~6_combout\) # (!\b2v_inst|Mux9~19_combout\)))) # (!\b2v_inst|indice~10_combout\ & (!\b2v_inst|Mux9~20_combout\ & (!\b2v_inst|indice~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|Mux9~20_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|Mux9~19_combout\,
	combout => \b2v_inst|Mux9~21_combout\);

-- Location: LCCOMB_X89_Y25_N26
\b2v_inst|Mux9~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~22_combout\ = (\b2v_inst|indice~8_combout\ & (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\ $ (!\b2v_inst|indice~7_combout\)))) # (!\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~9_combout\ $ 
-- (\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux9~22_combout\);

-- Location: LCCOMB_X89_Y25_N12
\b2v_inst|Mux9~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~23_combout\ = (\b2v_inst|Mux9~21_combout\ & (((!\b2v_inst|indice~6_combout\)) # (!\b2v_inst|Mux9~22_combout\))) # (!\b2v_inst|Mux9~21_combout\ & (((\b2v_inst|indice~6_combout\ & !\b2v_inst|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux9~22_combout\,
	datab => \b2v_inst|Mux9~21_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|Mux20~0_combout\,
	combout => \b2v_inst|Mux9~23_combout\);

-- Location: LCCOMB_X92_Y25_N0
\b2v_inst|Mux20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~1_combout\ = (\b2v_inst|indice~10_combout\ & (((\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~6_combout\) # (!\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux20~1_combout\);

-- Location: LCCOMB_X92_Y25_N18
\b2v_inst|Mux20~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~2_combout\ = (\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~10_combout\)) # (!\b2v_inst|indice~8_combout\ & ((!\b2v_inst|indice~7_combout\))))) # (!\b2v_inst|indice~6_combout\ & 
-- ((\b2v_inst|indice~7_combout\ & (!\b2v_inst|indice~10_combout\)) # (!\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux20~2_combout\);

-- Location: LCCOMB_X92_Y25_N20
\b2v_inst|Mux20~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~3_combout\ = (\b2v_inst|indice~7_combout\ & (!\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~10_combout\ $ (!\b2v_inst|indice~6_combout\)))) # (!\b2v_inst|indice~7_combout\ & (((\b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux20~3_combout\);

-- Location: LCCOMB_X92_Y25_N26
\b2v_inst|Mux20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~4_combout\ = (\b2v_inst|indice~11_combout\ & (((\b2v_inst|indice~9_combout\)))) # (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~9_combout\ & ((\b2v_inst|Mux20~2_combout\))) # (!\b2v_inst|indice~9_combout\ & 
-- (!\b2v_inst|Mux20~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|Mux20~3_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|Mux20~2_combout\,
	combout => \b2v_inst|Mux20~4_combout\);

-- Location: LCCOMB_X91_Y25_N14
\b2v_inst|Mux20~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~5_combout\ = (\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~7_combout\) # (!\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~8_combout\))))) # 
-- (!\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~7_combout\ & (\b2v_inst|indice~10_combout\ $ (\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux20~5_combout\);

-- Location: LCCOMB_X92_Y25_N8
\b2v_inst|Mux20~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~6_combout\ = (\b2v_inst|Mux20~4_combout\ & ((\b2v_inst|Mux20~5_combout\) # ((!\b2v_inst|indice~11_combout\)))) # (!\b2v_inst|Mux20~4_combout\ & (((!\b2v_inst|Mux20~1_combout\ & \b2v_inst|indice~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux20~5_combout\,
	datab => \b2v_inst|Mux20~1_combout\,
	datac => \b2v_inst|Mux20~4_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux20~6_combout\);

-- Location: LCCOMB_X92_Y25_N2
\b2v_inst|Mux20~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~7_combout\ = (\b2v_inst|indice~10_combout\ & (((!\b2v_inst|indice~9_combout\ & !\b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~11_combout\))) # (!\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~9_combout\ $ 
-- ((\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux20~7_combout\);

-- Location: LCCOMB_X92_Y25_N4
\b2v_inst|Mux20~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~8_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~10_combout\ & (!\b2v_inst|indice~7_combout\ & !\b2v_inst|indice~11_combout\)) # (!\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~7_combout\)))) # 
-- (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~11_combout\ & ((!\b2v_inst|indice~7_combout\))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux20~8_combout\);

-- Location: LCCOMB_X92_Y25_N30
\b2v_inst|Mux20~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~9_combout\ = (\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~9_combout\ $ (!\b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~11_combout\))) # (!\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~9_combout\ $ 
-- ((\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux20~9_combout\);

-- Location: LCCOMB_X92_Y25_N24
\b2v_inst|Mux20~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~10_combout\ = (\b2v_inst|indice~8_combout\ & (((\b2v_inst|indice~6_combout\)) # (!\b2v_inst|Mux20~8_combout\))) # (!\b2v_inst|indice~8_combout\ & (((!\b2v_inst|Mux20~9_combout\ & !\b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~8_combout\,
	datab => \b2v_inst|Mux20~8_combout\,
	datac => \b2v_inst|Mux20~9_combout\,
	datad => \b2v_inst|indice~6_combout\,
	combout => \b2v_inst|Mux20~10_combout\);

-- Location: LCCOMB_X92_Y25_N22
\b2v_inst|Mux20~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~11_combout\ = (\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~11_combout\) # (!\b2v_inst|indice~9_combout\))) # (!\b2v_inst|indice~10_combout\ & ((!\b2v_inst|indice~11_combout\))))) # 
-- (!\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~9_combout\))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux20~11_combout\);

-- Location: LCCOMB_X92_Y25_N28
\b2v_inst|Mux20~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~12_combout\ = (\b2v_inst|Mux20~10_combout\ & ((\b2v_inst|Mux20~11_combout\) # ((!\b2v_inst|indice~6_combout\)))) # (!\b2v_inst|Mux20~10_combout\ & (((\b2v_inst|indice~6_combout\ & \b2v_inst|Mux20~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux20~11_combout\,
	datab => \b2v_inst|Mux20~10_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|Mux20~7_combout\,
	combout => \b2v_inst|Mux20~12_combout\);

-- Location: LCCOMB_X92_Y25_N6
\b2v_inst|Mux20~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~13_combout\ = (\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~7_combout\ & ((!\b2v_inst|indice~8_combout\) # (!\b2v_inst|indice~9_combout\)))) # (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~9_combout\ & 
-- (\b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux20~13_combout\);

-- Location: LCCOMB_X89_Y25_N6
\b2v_inst|Mux20~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~14_combout\ = (\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~9_combout\ $ (\b2v_inst|indice~7_combout\)))) # (!\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\ $ 
-- (!\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux20~14_combout\);

-- Location: LCCOMB_X89_Y25_N28
\b2v_inst|Mux20~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~15_combout\ = (\b2v_inst|indice~10_combout\ & (((\b2v_inst|indice~6_combout\)) # (!\b2v_inst|Mux20~0_combout\))) # (!\b2v_inst|indice~10_combout\ & (((!\b2v_inst|indice~6_combout\ & !\b2v_inst|Mux20~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|Mux20~0_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|Mux20~14_combout\,
	combout => \b2v_inst|Mux20~15_combout\);

-- Location: LCCOMB_X92_Y25_N16
\b2v_inst|Mux20~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~16_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~7_combout\ & ((!\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~8_combout\) # (!\b2v_inst|indice~11_combout\))))) # 
-- (!\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux20~16_combout\);

-- Location: LCCOMB_X92_Y25_N10
\b2v_inst|Mux20~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~17_combout\ = (\b2v_inst|Mux20~15_combout\ & (((!\b2v_inst|indice~6_combout\)) # (!\b2v_inst|Mux20~16_combout\))) # (!\b2v_inst|Mux20~15_combout\ & (((\b2v_inst|indice~6_combout\ & !\b2v_inst|Mux20~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux20~15_combout\,
	datab => \b2v_inst|Mux20~16_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|Mux20~13_combout\,
	combout => \b2v_inst|Mux20~17_combout\);

-- Location: LCCOMB_X92_Y25_N12
\b2v_inst|Mux20~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~18_combout\ = (\b2v_inst|indice~16_combout\ & (((\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux20~12_combout\))) # (!\b2v_inst|indice~17_combout\ & 
-- (\b2v_inst|Mux20~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux20~17_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|Mux20~12_combout\,
	combout => \b2v_inst|Mux20~18_combout\);

-- Location: LCCOMB_X86_Y25_N12
\b2v_inst|Mux20~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~19_combout\ = (\b2v_inst|indice~10_combout\ & (!\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~11_combout\ & !\b2v_inst|indice~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux20~19_combout\);

-- Location: LCCOMB_X86_Y25_N18
\b2v_inst|Mux20~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~20_combout\ = (\b2v_inst|indice~11_combout\) # ((!\b2v_inst|indice~10_combout\ & \b2v_inst|indice~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux20~20_combout\);

-- Location: LCCOMB_X86_Y25_N16
\b2v_inst|Mux20~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~21_combout\ = (\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~6_combout\ & (!\b2v_inst|indice~11_combout\ & \b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~11_combout\ & !\b2v_inst|indice~7_combout\)))) 
-- # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~7_combout\) # (!\b2v_inst|indice~11_combout\))) # (!\b2v_inst|indice~6_combout\ & (!\b2v_inst|indice~11_combout\ & \b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux20~21_combout\);

-- Location: LCCOMB_X86_Y25_N22
\b2v_inst|Mux20~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~22_combout\ = (\b2v_inst|indice~9_combout\ & (((\b2v_inst|Mux20~20_combout\) # (\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~9_combout\ & (!\b2v_inst|Mux20~21_combout\ & ((!\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|Mux20~21_combout\,
	datac => \b2v_inst|Mux20~20_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux20~22_combout\);

-- Location: LCCOMB_X86_Y25_N28
\b2v_inst|Mux20~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~23_combout\ = (\b2v_inst|indice~6_combout\ & (((\b2v_inst|indice~11_combout\)))) # (!\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~11_combout\))) # (!\b2v_inst|indice~7_combout\ & 
-- (\b2v_inst|indice~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux20~23_combout\);

-- Location: LCCOMB_X86_Y25_N2
\b2v_inst|Mux20~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~24_combout\ = (\b2v_inst|Mux20~22_combout\ & (((!\b2v_inst|indice~8_combout\) # (!\b2v_inst|Mux20~23_combout\)))) # (!\b2v_inst|Mux20~22_combout\ & (\b2v_inst|Mux20~19_combout\ & ((\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux20~19_combout\,
	datab => \b2v_inst|Mux20~23_combout\,
	datac => \b2v_inst|Mux20~22_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux20~24_combout\);

-- Location: LCCOMB_X92_Y25_N14
\b2v_inst|Mux20~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux20~25_combout\ = (\b2v_inst|Mux20~18_combout\ & (((\b2v_inst|Mux20~24_combout\)) # (!\b2v_inst|indice~16_combout\))) # (!\b2v_inst|Mux20~18_combout\ & (\b2v_inst|indice~16_combout\ & (\b2v_inst|Mux20~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux20~18_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|Mux20~6_combout\,
	datad => \b2v_inst|Mux20~24_combout\,
	combout => \b2v_inst|Mux20~25_combout\);

-- Location: LCCOMB_X87_Y20_N30
\b2v_inst|Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~0_combout\ = (\b2v_inst|indice~11_combout\ & (((!\b2v_inst|indice~9_combout\)) # (!\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~16_combout\)) # 
-- (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux19~0_combout\);

-- Location: LCCOMB_X90_Y24_N10
\b2v_inst|Mux19~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~10_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~6_combout\ $ (((!\b2v_inst|indice~16_combout\ & \b2v_inst|indice~11_combout\))))) # (!\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~6_combout\ & 
-- (\b2v_inst|indice~16_combout\ $ (\b2v_inst|indice~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux19~10_combout\);

-- Location: LCCOMB_X90_Y24_N28
\b2v_inst|Mux19~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~13_combout\ = (\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~11_combout\) # (!\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~17_combout\ $ 
-- (((\b2v_inst|indice~9_combout\) # (\b2v_inst|indice~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux19~13_combout\);

-- Location: LCCOMB_X90_Y22_N0
\b2v_inst|Mux19~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~14_combout\ = (\b2v_inst|indice~16_combout\ & (((!\b2v_inst|indice~9_combout\ & \b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~11_combout\ $ 
-- (!\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux19~14_combout\);

-- Location: LCCOMB_X90_Y24_N22
\b2v_inst|Mux19~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~15_combout\ = (\b2v_inst|indice~6_combout\ & (((\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~8_combout\ & ((!\b2v_inst|Mux19~13_combout\))) # (!\b2v_inst|indice~8_combout\ & 
-- (!\b2v_inst|Mux19~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux19~14_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~8_combout\,
	datad => \b2v_inst|Mux19~13_combout\,
	combout => \b2v_inst|Mux19~15_combout\);

-- Location: LCCOMB_X87_Y22_N14
\b2v_inst|Mux19~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~19_combout\ = (\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~17_combout\ & !\b2v_inst|indice~8_combout\)))) # 
-- (!\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~17_combout\ $ (((\b2v_inst|indice~9_combout\ & \b2v_inst|indice~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~6_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux19~19_combout\);

-- Location: LCCOMB_X86_Y22_N10
\b2v_inst|Mux19~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~20_combout\ = (\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~17_combout\ $ (\b2v_inst|indice~6_combout\ $ (\b2v_inst|indice~9_combout\)))) # (!\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~9_combout\) # 
-- (!\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux19~20_combout\);

-- Location: LCCOMB_X86_Y22_N4
\b2v_inst|Mux19~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~21_combout\ = (\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~6_combout\ & ((!\b2v_inst|indice~8_combout\) # (!\b2v_inst|indice~9_combout\)))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~6_combout\ & 
-- (\b2v_inst|indice~9_combout\ $ (!\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux19~21_combout\);

-- Location: LCCOMB_X86_Y22_N14
\b2v_inst|Mux19~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~22_combout\ = (\b2v_inst|indice~16_combout\ & (((\b2v_inst|indice~11_combout\)))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~11_combout\ & (\b2v_inst|Mux19~20_combout\)) # (!\b2v_inst|indice~11_combout\ & 
-- ((\b2v_inst|Mux19~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux19~20_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|Mux19~21_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux19~22_combout\);

-- Location: LCCOMB_X87_Y22_N24
\b2v_inst|Mux19~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~23_combout\ = (\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~17_combout\) # (!\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~9_combout\ $ 
-- ((\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~6_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux19~23_combout\);

-- Location: LCCOMB_X87_Y22_N10
\b2v_inst|Mux19~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~24_combout\ = (\b2v_inst|Mux19~22_combout\ & (((!\b2v_inst|indice~16_combout\)) # (!\b2v_inst|Mux19~23_combout\))) # (!\b2v_inst|Mux19~22_combout\ & (((\b2v_inst|Mux19~19_combout\ & \b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux19~22_combout\,
	datab => \b2v_inst|Mux19~23_combout\,
	datac => \b2v_inst|Mux19~19_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux19~24_combout\);

-- Location: LCCOMB_X90_Y20_N0
\b2v_inst|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~0_combout\ = (\b2v_inst|indice~11_combout\ & (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~6_combout\ $ (\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~6_combout\ & 
-- ((!\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux8~0_combout\);

-- Location: LCCOMB_X90_Y20_N6
\b2v_inst|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~1_combout\ = (\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~11_combout\ & (!\b2v_inst|indice~6_combout\ & \b2v_inst|indice~17_combout\))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~11_combout\ $ 
-- ((\b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux8~1_combout\);

-- Location: LCCOMB_X90_Y20_N8
\b2v_inst|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~2_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~11_combout\ $ (!\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~6_combout\))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~6_combout\ $ 
-- (((!\b2v_inst|indice~11_combout\ & \b2v_inst|indice~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux8~2_combout\);

-- Location: LCCOMB_X90_Y20_N26
\b2v_inst|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~3_combout\ = (\b2v_inst|indice~9_combout\ & (((\b2v_inst|indice~8_combout\)) # (!\b2v_inst|Mux8~1_combout\))) # (!\b2v_inst|indice~9_combout\ & (((\b2v_inst|Mux8~2_combout\ & !\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux8~1_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|Mux8~2_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux8~3_combout\);

-- Location: LCCOMB_X90_Y20_N4
\b2v_inst|Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~4_combout\ = (\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~11_combout\ & ((!\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~11_combout\ $ ((\b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux8~4_combout\);

-- Location: LCCOMB_X90_Y20_N18
\b2v_inst|Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~5_combout\ = (\b2v_inst|Mux8~3_combout\ & (((!\b2v_inst|Mux8~4_combout\)) # (!\b2v_inst|indice~8_combout\))) # (!\b2v_inst|Mux8~3_combout\ & (\b2v_inst|indice~8_combout\ & ((\b2v_inst|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux8~3_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|Mux8~4_combout\,
	datad => \b2v_inst|Mux8~0_combout\,
	combout => \b2v_inst|Mux8~5_combout\);

-- Location: LCCOMB_X92_Y22_N0
\b2v_inst|Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~6_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\ & ((!\b2v_inst|indice~11_combout\))) # (!\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~9_combout\)))) # (!\b2v_inst|indice~17_combout\ & 
-- (\b2v_inst|indice~16_combout\ $ (((\b2v_inst|indice~9_combout\ & !\b2v_inst|indice~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux8~6_combout\);

-- Location: LCCOMB_X92_Y22_N26
\b2v_inst|Mux8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~7_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~9_combout\)) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\))))) # (!\b2v_inst|indice~11_combout\ & 
-- ((\b2v_inst|indice~9_combout\) # ((\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux8~7_combout\);

-- Location: LCCOMB_X92_Y22_N28
\b2v_inst|Mux8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~8_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~17_combout\) # (!\b2v_inst|indice~16_combout\))))) # 
-- (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~16_combout\) # ((\b2v_inst|indice~11_combout\ & !\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux8~8_combout\);

-- Location: LCCOMB_X92_Y22_N10
\b2v_inst|Mux8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~9_combout\ = (\b2v_inst|indice~8_combout\ & ((\b2v_inst|Mux8~7_combout\) # ((\b2v_inst|indice~6_combout\)))) # (!\b2v_inst|indice~8_combout\ & (((!\b2v_inst|indice~6_combout\ & \b2v_inst|Mux8~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux8~7_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|Mux8~8_combout\,
	combout => \b2v_inst|Mux8~9_combout\);

-- Location: LCCOMB_X92_Y22_N20
\b2v_inst|Mux8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~10_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~9_combout\) # (\b2v_inst|indice~11_combout\ $ (\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux8~10_combout\);

-- Location: LCCOMB_X92_Y22_N2
\b2v_inst|Mux8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~11_combout\ = (\b2v_inst|Mux8~9_combout\ & (((!\b2v_inst|indice~6_combout\)) # (!\b2v_inst|Mux8~10_combout\))) # (!\b2v_inst|Mux8~9_combout\ & (((\b2v_inst|indice~6_combout\ & !\b2v_inst|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux8~9_combout\,
	datab => \b2v_inst|Mux8~10_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|Mux8~6_combout\,
	combout => \b2v_inst|Mux8~11_combout\);

-- Location: LCCOMB_X90_Y24_N18
\b2v_inst|Mux8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~13_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~17_combout\)) # (!\b2v_inst|indice~6_combout\ & ((!\b2v_inst|indice~8_combout\) # (!\b2v_inst|indice~17_combout\))))) # 
-- (!\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~8_combout\ $ (((\b2v_inst|indice~6_combout\ & !\b2v_inst|indice~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux8~13_combout\);

-- Location: LCCOMB_X90_Y24_N12
\b2v_inst|Mux8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~14_combout\ = (\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~9_combout\ $ ((!\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~9_combout\) # ((\b2v_inst|indice~17_combout\ & 
-- !\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux8~14_combout\);

-- Location: LCCOMB_X90_Y24_N6
\b2v_inst|Mux8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~15_combout\ = (\b2v_inst|indice~16_combout\ & (((\b2v_inst|indice~11_combout\)))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~11_combout\ & (!\b2v_inst|Mux8~13_combout\)) # (!\b2v_inst|indice~11_combout\ & 
-- ((\b2v_inst|Mux8~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|Mux8~13_combout\,
	datac => \b2v_inst|Mux8~14_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux8~15_combout\);

-- Location: LCCOMB_X92_Y22_N22
\b2v_inst|Mux8~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~20_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\)) # (!\b2v_inst|indice~11_combout\ & ((!\b2v_inst|indice~17_combout\))))) # (!\b2v_inst|indice~16_combout\ & 
-- ((\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~11_combout\)) # (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux8~20_combout\);

-- Location: LCCOMB_X92_Y22_N12
\b2v_inst|Mux8~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~23_combout\ = (\b2v_inst|indice~9_combout\ & (((!\b2v_inst|indice~17_combout\ & !\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~11_combout\ $ 
-- (!\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux8~23_combout\);

-- Location: LCCOMB_X92_Y20_N0
\b2v_inst|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~5_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~9_combout\) # (\b2v_inst|indice~16_combout\ $ (!\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~9_combout\ 
-- $ (\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux7~5_combout\);

-- Location: LCCOMB_X92_Y21_N8
\b2v_inst|Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~6_combout\ = (\b2v_inst|indice~8_combout\ & (((!\b2v_inst|indice~9_combout\ & !\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~17_combout\))) # (!\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~16_combout\ & 
-- (\b2v_inst|indice~17_combout\)) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~8_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux7~6_combout\);

-- Location: LCCOMB_X92_Y21_N30
\b2v_inst|Mux7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~7_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~8_combout\ & ((!\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~8_combout\ & (!\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~9_combout\ & 
-- ((\b2v_inst|indice~17_combout\) # (\b2v_inst|indice~8_combout\ $ (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~8_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux7~7_combout\);

-- Location: LCCOMB_X92_Y20_N26
\b2v_inst|Mux7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~8_combout\ = (\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~10_combout\) # ((\b2v_inst|Mux7~6_combout\)))) # (!\b2v_inst|indice~7_combout\ & (!\b2v_inst|indice~10_combout\ & (!\b2v_inst|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~7_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|Mux7~7_combout\,
	datad => \b2v_inst|Mux7~6_combout\,
	combout => \b2v_inst|Mux7~8_combout\);

-- Location: LCCOMB_X92_Y20_N20
\b2v_inst|Mux7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~9_combout\ = (\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~9_combout\ $ (\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~9_combout\) 
-- # (!\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux7~9_combout\);

-- Location: LCCOMB_X92_Y20_N14
\b2v_inst|Mux7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~10_combout\ = (\b2v_inst|Mux7~8_combout\ & (((!\b2v_inst|indice~10_combout\)) # (!\b2v_inst|Mux7~9_combout\))) # (!\b2v_inst|Mux7~8_combout\ & (((\b2v_inst|indice~10_combout\ & \b2v_inst|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux7~8_combout\,
	datab => \b2v_inst|Mux7~9_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|Mux7~5_combout\,
	combout => \b2v_inst|Mux7~10_combout\);

-- Location: LCCOMB_X92_Y24_N2
\b2v_inst|Mux7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~11_combout\ = (\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~7_combout\ & (!\b2v_inst|indice~9_combout\)) # (!\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~10_combout\))))) # (!\b2v_inst|indice~8_combout\ & 
-- (\b2v_inst|indice~7_combout\ $ (((!\b2v_inst|indice~9_combout\ & \b2v_inst|indice~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux7~11_combout\);

-- Location: LCCOMB_X91_Y24_N20
\b2v_inst|Mux18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~3_combout\ = (\b2v_inst|indice~9_combout\ & (((!\b2v_inst|indice~8_combout\) # (!\b2v_inst|indice~10_combout\)) # (!\b2v_inst|indice~7_combout\))) # (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~7_combout\) # 
-- ((\b2v_inst|indice~10_combout\) # (\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux18~3_combout\);

-- Location: LCCOMB_X91_Y24_N14
\b2v_inst|Mux7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~12_combout\ = (\b2v_inst|indice~17_combout\ & (((\b2v_inst|indice~16_combout\) # (\b2v_inst|Mux18~3_combout\)))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|Mux18~2_combout\ & (!\b2v_inst|indice~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~2_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|Mux18~3_combout\,
	combout => \b2v_inst|Mux7~12_combout\);

-- Location: LCCOMB_X92_Y24_N16
\b2v_inst|Mux7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~13_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~7_combout\ & (!\b2v_inst|indice~10_combout\)) # (!\b2v_inst|indice~7_combout\ & (\b2v_inst|indice~10_combout\ & \b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~9_combout\ 
-- & (\b2v_inst|indice~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux7~13_combout\);

-- Location: LCCOMB_X92_Y24_N10
\b2v_inst|Mux7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~14_combout\ = (\b2v_inst|Mux7~12_combout\ & ((\b2v_inst|Mux7~13_combout\) # ((!\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|Mux7~12_combout\ & (((\b2v_inst|indice~16_combout\ & !\b2v_inst|Mux7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux7~12_combout\,
	datab => \b2v_inst|Mux7~13_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|Mux7~11_combout\,
	combout => \b2v_inst|Mux7~14_combout\);

-- Location: LCCOMB_X92_Y24_N12
\b2v_inst|Mux7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~15_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~6_combout\) # ((\b2v_inst|Mux7~10_combout\)))) # (!\b2v_inst|indice~11_combout\ & (!\b2v_inst|indice~6_combout\ & ((\b2v_inst|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|Mux7~10_combout\,
	datad => \b2v_inst|Mux7~14_combout\,
	combout => \b2v_inst|Mux7~15_combout\);

-- Location: LCCOMB_X90_Y22_N26
\b2v_inst|Mux7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~18_combout\ = (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~17_combout\ $ (\b2v_inst|indice~9_combout\)))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~10_combout\ 
-- $ (\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux7~18_combout\);

-- Location: LCCOMB_X90_Y22_N10
\b2v_inst|Mux7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~20_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~9_combout\) # (\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~16_combout\ & 
-- ((\b2v_inst|indice~9_combout\) # (!\b2v_inst|indice~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux7~20_combout\);

-- Location: LCCOMB_X89_Y21_N22
\b2v_inst|Mux18~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~5_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\) # (\b2v_inst|indice~8_combout\ $ (!\b2v_inst|indice~9_combout\)))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~16_combout\ 
-- $ (\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~8_combout\,
	datad => \b2v_inst|indice~9_combout\,
	combout => \b2v_inst|Mux18~5_combout\);

-- Location: LCCOMB_X90_Y21_N26
\b2v_inst|Mux18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~6_combout\ = (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~8_combout\ & (!\b2v_inst|indice~17_combout\ & !\b2v_inst|indice~9_combout\))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~8_combout\)) 
-- # (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~9_combout\,
	combout => \b2v_inst|Mux18~6_combout\);

-- Location: LCCOMB_X90_Y21_N12
\b2v_inst|Mux18~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~7_combout\ = (\b2v_inst|indice~7_combout\ & (((\b2v_inst|indice~10_combout\) # (!\b2v_inst|Mux18~5_combout\)))) # (!\b2v_inst|indice~7_combout\ & (!\b2v_inst|Mux18~6_combout\ & (!\b2v_inst|indice~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~6_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|Mux18~5_combout\,
	combout => \b2v_inst|Mux18~7_combout\);

-- Location: LCCOMB_X91_Y24_N0
\b2v_inst|Mux18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~10_combout\ = (\b2v_inst|indice~7_combout\ & (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~10_combout\) # (!\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~8_combout\ & 
-- (!\b2v_inst|indice~9_combout\)) # (!\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux18~10_combout\);

-- Location: LCCOMB_X91_Y24_N26
\b2v_inst|Mux18~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~11_combout\ = (!\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~7_combout\ & (!\b2v_inst|indice~10_combout\ & !\b2v_inst|indice~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux18~11_combout\);

-- Location: LCCOMB_X91_Y24_N28
\b2v_inst|Mux18~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~12_combout\ = (\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~9_combout\ $ (\b2v_inst|indice~10_combout\)) # (!\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~7_combout\ & (!\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~9_combout\ 
-- $ (\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux18~12_combout\);

-- Location: LCCOMB_X91_Y24_N22
\b2v_inst|Mux18~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~13_combout\ = (\b2v_inst|indice~17_combout\ & (((\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\ & (\b2v_inst|Mux18~11_combout\)) # (!\b2v_inst|indice~16_combout\ & 
-- ((\b2v_inst|Mux18~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~11_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|Mux18~12_combout\,
	combout => \b2v_inst|Mux18~13_combout\);

-- Location: LCCOMB_X91_Y24_N16
\b2v_inst|Mux18~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~14_combout\ = (\b2v_inst|Mux18~13_combout\ & (((\b2v_inst|Mux18~28_combout\) # (!\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|Mux18~13_combout\ & (\b2v_inst|Mux18~10_combout\ & (\b2v_inst|indice~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~13_combout\,
	datab => \b2v_inst|Mux18~10_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|Mux18~28_combout\,
	combout => \b2v_inst|Mux18~14_combout\);

-- Location: LCCOMB_X90_Y21_N10
\b2v_inst|Mux18~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~17_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\) # ((!\b2v_inst|indice~10_combout\ & \b2v_inst|indice~9_combout\)))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~10_combout\) # 
-- ((\b2v_inst|indice~16_combout\ & \b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~9_combout\,
	combout => \b2v_inst|Mux18~17_combout\);

-- Location: LCCOMB_X91_Y24_N12
\b2v_inst|Mux18~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~23_combout\ = (\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~7_combout\ & (!\b2v_inst|indice~10_combout\ & !\b2v_inst|indice~8_combout\)) # (!\b2v_inst|indice~7_combout\ 
-- & (\b2v_inst|indice~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux18~23_combout\);

-- Location: LCCOMB_X91_Y24_N10
\b2v_inst|Mux18~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~24_combout\ = (\b2v_inst|indice~17_combout\ & (((\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\ & ((\b2v_inst|Mux18~3_combout\))) # (!\b2v_inst|indice~16_combout\ & 
-- (\b2v_inst|Mux18~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~23_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|Mux18~3_combout\,
	combout => \b2v_inst|Mux18~24_combout\);

-- Location: LCCOMB_X90_Y20_N2
\b2v_inst|Mux17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~6_combout\ = (\b2v_inst|indice~11_combout\ & (((\b2v_inst|indice~7_combout\)))) # (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~7_combout\) # (!\b2v_inst|indice~8_combout\))) # 
-- (!\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~7_combout\ $ (\b2v_inst|indice~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux17~6_combout\);

-- Location: LCCOMB_X90_Y20_N12
\b2v_inst|Mux17~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~7_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~11_combout\ & (!\b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~7_combout\ & !\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~9_combout\ 
-- & (((!\b2v_inst|indice~7_combout\ & \b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux17~7_combout\);

-- Location: LCCOMB_X90_Y20_N22
\b2v_inst|Mux17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~8_combout\ = (\b2v_inst|indice~6_combout\ & (((\b2v_inst|indice~17_combout\) # (!\b2v_inst|Mux17~6_combout\)))) # (!\b2v_inst|indice~6_combout\ & (!\b2v_inst|Mux17~7_combout\ & (!\b2v_inst|indice~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux17~7_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|Mux17~6_combout\,
	combout => \b2v_inst|Mux17~8_combout\);

-- Location: LCCOMB_X88_Y21_N22
\b2v_inst|Mux17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~12_combout\ = (\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~7_combout\ $ (((\b2v_inst|indice~6_combout\) # (\b2v_inst|indice~8_combout\))))) # (!\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~7_combout\ & 
-- ((!\b2v_inst|indice~8_combout\) # (!\b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux17~12_combout\);

-- Location: LCCOMB_X86_Y21_N6
\b2v_inst|Mux17~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~20_combout\ = (\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~8_combout\) # (!\b2v_inst|indice~6_combout\)))) # (!\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~6_combout\) 
-- # (!\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux17~20_combout\);

-- Location: LCCOMB_X87_Y25_N14
\b2v_inst|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~1_combout\ = (\b2v_inst|indice~11_combout\ & (!\b2v_inst|indice~7_combout\ & (!\b2v_inst|indice~6_combout\))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~7_combout\ & (\b2v_inst|indice~6_combout\ & !\b2v_inst|indice~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|indice~9_combout\,
	combout => \b2v_inst|Mux6~1_combout\);

-- Location: LCCOMB_X87_Y25_N12
\b2v_inst|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~2_combout\ = \b2v_inst|indice~6_combout\ $ (((!\b2v_inst|indice~17_combout\ & (\b2v_inst|Mux6~1_combout\ $ (\b2v_inst|indice~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~6_combout\,
	datab => \b2v_inst|Mux6~1_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux6~2_combout\);

-- Location: LCCOMB_X87_Y22_N18
\b2v_inst|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~5_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~11_combout\) # ((\b2v_inst|indice~6_combout\ & \b2v_inst|indice~7_combout\)))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~6_combout\ & 
-- ((!\b2v_inst|indice~11_combout\) # (!\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~6_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux6~5_combout\);

-- Location: LCCOMB_X87_Y22_N12
\b2v_inst|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~6_combout\ = (\b2v_inst|indice~11_combout\ & (!\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~17_combout\ $ (\b2v_inst|indice~7_combout\)))) # (!\b2v_inst|indice~11_combout\ & (((!\b2v_inst|indice~17_combout\ & 
-- \b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~6_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux6~6_combout\);

-- Location: LCCOMB_X87_Y22_N26
\b2v_inst|Mux6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~7_combout\ = (\b2v_inst|Mux6~5_combout\ & (((!\b2v_inst|Mux6~6_combout\ & !\b2v_inst|indice~11_combout\)) # (!\b2v_inst|indice~9_combout\))) # (!\b2v_inst|Mux6~5_combout\ & (\b2v_inst|indice~11_combout\ & (\b2v_inst|Mux6~6_combout\ $ 
-- (!\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux6~6_combout\,
	datab => \b2v_inst|Mux6~5_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux6~7_combout\);

-- Location: LCCOMB_X87_Y22_N28
\b2v_inst|Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~8_combout\ = (\b2v_inst|Mux6~6_combout\ & (\b2v_inst|indice~11_combout\ $ (((!\b2v_inst|Mux6~5_combout\ & \b2v_inst|indice~9_combout\))))) # (!\b2v_inst|Mux6~6_combout\ & (\b2v_inst|Mux6~5_combout\ $ (((\b2v_inst|indice~9_combout\ & 
-- \b2v_inst|indice~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux6~6_combout\,
	datab => \b2v_inst|Mux6~5_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux6~8_combout\);

-- Location: LCCOMB_X87_Y22_N30
\b2v_inst|Mux6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~9_combout\ = (\b2v_inst|indice~8_combout\ & (!\b2v_inst|Mux6~8_combout\)) # (!\b2v_inst|indice~8_combout\ & ((\b2v_inst|Mux6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux6~8_combout\,
	datac => \b2v_inst|Mux6~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux6~9_combout\);

-- Location: LCCOMB_X86_Y21_N10
\b2v_inst|Mux6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~10_combout\ = (\b2v_inst|indice~6_combout\ & (((!\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~7_combout\ & 
-- (\b2v_inst|indice~9_combout\ & !\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux6~10_combout\);

-- Location: LCCOMB_X86_Y21_N8
\b2v_inst|Mux6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~11_combout\ = \b2v_inst|indice~8_combout\ $ (((\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~9_combout\ & !\b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux6~11_combout\);

-- Location: LCCOMB_X86_Y21_N22
\b2v_inst|Mux6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~12_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|Mux6~10_combout\) # ((\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~11_combout\ & (((\b2v_inst|Mux6~11_combout\ & !\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux6~10_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|Mux6~11_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux6~12_combout\);

-- Location: LCCOMB_X86_Y21_N12
\b2v_inst|Mux6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~13_combout\ = (\b2v_inst|Mux6~12_combout\ & ((\b2v_inst|Mux17~20_combout\) # ((!\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|Mux6~12_combout\ & (((\b2v_inst|Mux17~19_combout\ & \b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux17~20_combout\,
	datab => \b2v_inst|Mux17~19_combout\,
	datac => \b2v_inst|Mux6~12_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux6~13_combout\);

-- Location: LCCOMB_X86_Y21_N14
\b2v_inst|Mux6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~14_combout\ = (\b2v_inst|indice~10_combout\ & (((\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~16_combout\ & ((\b2v_inst|Mux6~9_combout\))) # (!\b2v_inst|indice~16_combout\ & 
-- (\b2v_inst|Mux6~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux6~13_combout\,
	datab => \b2v_inst|Mux6~9_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux6~14_combout\);

-- Location: LCCOMB_X88_Y21_N12
\b2v_inst|Mux6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~17_combout\ = (\b2v_inst|indice~9_combout\ & (((\b2v_inst|indice~7_combout\ & \b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~8_combout\) # ((\b2v_inst|indice~6_combout\ & \b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux6~17_combout\);

-- Location: LCCOMB_X88_Y21_N10
\b2v_inst|Mux6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~18_combout\ = (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~17_combout\ & (\b2v_inst|Mux6~17_combout\)) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux17~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux6~17_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux17~14_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux6~18_combout\);

-- Location: LCCOMB_X87_Y25_N26
\b2v_inst|Mux5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~8_combout\ = (\b2v_inst|indice~7_combout\ & (\b2v_inst|indice~11_combout\ $ (\b2v_inst|indice~9_combout\ $ (!\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~8_combout\) # 
-- (!\b2v_inst|indice~9_combout\))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux5~8_combout\);

-- Location: LCCOMB_X87_Y25_N28
\b2v_inst|Mux5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~9_combout\ = (\b2v_inst|indice~7_combout\ & (!\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~11_combout\) # (\b2v_inst|indice~9_combout\)))) # (!\b2v_inst|indice~7_combout\ & (((!\b2v_inst|indice~9_combout\ & 
-- \b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux5~9_combout\);

-- Location: LCCOMB_X87_Y25_N30
\b2v_inst|Mux5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~10_combout\ = \b2v_inst|indice~8_combout\ $ (((\b2v_inst|indice~11_combout\ & (!\b2v_inst|indice~9_combout\ & !\b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\ $ (\b2v_inst|indice~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux5~10_combout\);

-- Location: LCCOMB_X87_Y25_N20
\b2v_inst|Mux5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~11_combout\ = (\b2v_inst|indice~6_combout\ & (((\b2v_inst|indice~10_combout\)))) # (!\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~10_combout\ & (\b2v_inst|Mux5~9_combout\)) # (!\b2v_inst|indice~10_combout\ & 
-- ((\b2v_inst|Mux5~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~6_combout\,
	datab => \b2v_inst|Mux5~9_combout\,
	datac => \b2v_inst|Mux5~10_combout\,
	datad => \b2v_inst|indice~10_combout\,
	combout => \b2v_inst|Mux5~11_combout\);

-- Location: LCCOMB_X87_Y25_N2
\b2v_inst|Mux5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~12_combout\ = (\b2v_inst|indice~8_combout\ & (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\ $ (!\b2v_inst|indice~7_combout\)))) # (!\b2v_inst|indice~8_combout\ & (((\b2v_inst|indice~9_combout\) # 
-- (\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux5~12_combout\);

-- Location: LCCOMB_X87_Y25_N8
\b2v_inst|Mux5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~13_combout\ = (\b2v_inst|indice~6_combout\ & ((\b2v_inst|Mux5~11_combout\ & ((\b2v_inst|Mux5~12_combout\))) # (!\b2v_inst|Mux5~11_combout\ & (\b2v_inst|Mux5~8_combout\)))) # (!\b2v_inst|indice~6_combout\ & (\b2v_inst|Mux5~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~6_combout\,
	datab => \b2v_inst|Mux5~11_combout\,
	datac => \b2v_inst|Mux5~8_combout\,
	datad => \b2v_inst|Mux5~12_combout\,
	combout => \b2v_inst|Mux5~13_combout\);

-- Location: LCCOMB_X90_Y25_N18
\b2v_inst|Mux5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~14_combout\ = (\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~10_combout\ $ (!\b2v_inst|indice~7_combout\)))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~7_combout\ & 
-- ((!\b2v_inst|indice~10_combout\) # (!\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux5~14_combout\);

-- Location: LCCOMB_X90_Y25_N20
\b2v_inst|Mux5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~15_combout\ = (\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~7_combout\))) # (!\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux5~15_combout\);

-- Location: LCCOMB_X90_Y25_N14
\b2v_inst|Mux5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~16_combout\ = (\b2v_inst|indice~6_combout\ & (\b2v_inst|Mux5~15_combout\ $ (((!\b2v_inst|indice~11_combout\ & \b2v_inst|Mux5~14_combout\))))) # (!\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~11_combout\ & ((\b2v_inst|Mux5~15_combout\) # 
-- (\b2v_inst|Mux5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~6_combout\,
	datab => \b2v_inst|Mux5~15_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|Mux5~14_combout\,
	combout => \b2v_inst|Mux5~16_combout\);

-- Location: LCCOMB_X90_Y25_N8
\b2v_inst|Mux5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~17_combout\ = (\b2v_inst|indice~11_combout\ & (\b2v_inst|Mux5~14_combout\ & ((\b2v_inst|indice~6_combout\) # (\b2v_inst|Mux5~15_combout\)))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~6_combout\ & (\b2v_inst|Mux5~15_combout\ & 
-- !\b2v_inst|Mux5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~6_combout\,
	datab => \b2v_inst|Mux5~15_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|Mux5~14_combout\,
	combout => \b2v_inst|Mux5~17_combout\);

-- Location: LCCOMB_X90_Y25_N10
\b2v_inst|Mux5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~18_combout\ = \b2v_inst|Mux5~16_combout\ $ (((\b2v_inst|Mux5~17_combout\) # (!\b2v_inst|indice~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~8_combout\,
	datab => \b2v_inst|Mux5~16_combout\,
	datac => \b2v_inst|Mux5~17_combout\,
	combout => \b2v_inst|Mux5~18_combout\);

-- Location: LCCOMB_X87_Y25_N6
\b2v_inst|Mux5~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~19_combout\ = (\b2v_inst|indice~11_combout\ & ((!\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux5~19_combout\);

-- Location: LCCOMB_X88_Y25_N4
\b2v_inst|Mux5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~20_combout\ = (\b2v_inst|Mux5~29_combout\ & ((\b2v_inst|Mux5~19_combout\ $ (!\b2v_inst|indice~9_combout\)) # (!\b2v_inst|indice~6_combout\))) # (!\b2v_inst|Mux5~29_combout\ & ((\b2v_inst|Mux5~19_combout\) # ((\b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux5~29_combout\,
	datab => \b2v_inst|Mux5~19_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|indice~9_combout\,
	combout => \b2v_inst|Mux5~20_combout\);

-- Location: LCCOMB_X88_Y25_N18
\b2v_inst|Mux5~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~21_combout\ = (\b2v_inst|Mux5~29_combout\ & ((\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~9_combout\) # (!\b2v_inst|Mux5~19_combout\))) # (!\b2v_inst|indice~6_combout\ & ((!\b2v_inst|indice~9_combout\))))) # 
-- (!\b2v_inst|Mux5~29_combout\ & (((\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux5~29_combout\,
	datab => \b2v_inst|Mux5~19_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|indice~9_combout\,
	combout => \b2v_inst|Mux5~21_combout\);

-- Location: LCCOMB_X88_Y25_N28
\b2v_inst|Mux5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~22_combout\ = \b2v_inst|Mux5~21_combout\ $ (((\b2v_inst|indice~7_combout\ & \b2v_inst|Mux5~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|Mux5~20_combout\,
	datad => \b2v_inst|Mux5~21_combout\,
	combout => \b2v_inst|Mux5~22_combout\);

-- Location: LCCOMB_X87_Y25_N4
\b2v_inst|Mux5~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~23_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux5~18_combout\) # ((\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~17_combout\ & (((\b2v_inst|Mux5~22_combout\ & !\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux5~18_combout\,
	datab => \b2v_inst|Mux5~22_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux5~23_combout\);

-- Location: LCCOMB_X87_Y24_N16
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

-- Location: LCCOMB_X87_Y24_N2
\b2v_inst|Mux5~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~25_combout\ = (\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(5) & ((\b2v_inst|Mux5~24_combout\) # (\b2v_inst|indice\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|Mux5~24_combout\,
	datac => \b2v_inst|indice\(5),
	datad => \b2v_inst|indice\(3),
	combout => \b2v_inst|Mux5~25_combout\);

-- Location: LCCOMB_X87_Y25_N10
\b2v_inst|Mux5~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~26_combout\ = (\b2v_inst|indice~6_combout\ & (!\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~7_combout\ & \b2v_inst|indice~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~6_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux5~26_combout\);

-- Location: LCCOMB_X87_Y25_N0
\b2v_inst|Mux5~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~27_combout\ = (\b2v_inst|Mux5~25_combout\) # ((!\b2v_inst|indice~11_combout\ & (\b2v_inst|Mux5~26_combout\ $ (!\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux5~26_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|Mux5~25_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux5~27_combout\);

-- Location: LCCOMB_X87_Y25_N22
\b2v_inst|Mux5~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux5~28_combout\ = (\b2v_inst|Mux5~23_combout\ & (((\b2v_inst|Mux5~27_combout\) # (!\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|Mux5~23_combout\ & (\b2v_inst|Mux5~13_combout\ & ((\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux5~13_combout\,
	datab => \b2v_inst|Mux5~27_combout\,
	datac => \b2v_inst|Mux5~23_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux5~28_combout\);

-- Location: LCCOMB_X90_Y25_N12
\b2v_inst|Mux16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~2_combout\ = (\b2v_inst|indice~7_combout\ & (((\b2v_inst|indice~11_combout\)) # (!\b2v_inst|indice~9_combout\))) # (!\b2v_inst|indice~7_combout\ & (((\b2v_inst|indice~11_combout\ & \b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~6_combout\,
	combout => \b2v_inst|Mux16~2_combout\);

-- Location: LCCOMB_X90_Y25_N6
\b2v_inst|Mux16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~3_combout\ = (\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~10_combout\) # ((\b2v_inst|Mux16~2_combout\)))) # (!\b2v_inst|indice~8_combout\ & (!\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~9_combout\ & !\b2v_inst|Mux16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~8_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|Mux16~2_combout\,
	combout => \b2v_inst|Mux16~3_combout\);

-- Location: LCCOMB_X90_Y25_N4
\b2v_inst|Mux16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~4_combout\ = (\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~11_combout\ & ((!\b2v_inst|indice~7_combout\))) # (!\b2v_inst|indice~11_combout\ & (!\b2v_inst|indice~9_combout\ & \b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux16~4_combout\);

-- Location: LCCOMB_X90_Y25_N30
\b2v_inst|Mux16~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~5_combout\ = (\b2v_inst|Mux16~3_combout\ & ((\b2v_inst|indice~7_combout\ $ (\b2v_inst|indice~6_combout\)) # (!\b2v_inst|Mux16~4_combout\))) # (!\b2v_inst|Mux16~3_combout\ & (\b2v_inst|Mux16~4_combout\ & ((\b2v_inst|indice~7_combout\) # 
-- (!\b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux16~3_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|Mux16~4_combout\,
	datad => \b2v_inst|indice~6_combout\,
	combout => \b2v_inst|Mux16~5_combout\);

-- Location: LCCOMB_X86_Y25_N10
\b2v_inst|Mux16~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~18_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~6_combout\) # ((\b2v_inst|indice~9_combout\ & \b2v_inst|indice~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~10_combout\,
	combout => \b2v_inst|Mux16~18_combout\);

-- Location: LCCOMB_X90_Y22_N6
\b2v_inst|Mux15~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~7_combout\ = (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~10_combout\)) # (!\b2v_inst|indice~16_combout\ & (((!\b2v_inst|indice\(4)) # (!\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice\(4),
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux15~7_combout\);

-- Location: LCCOMB_X91_Y20_N30
\b2v_inst|Mux15~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~11_combout\ = (\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~7_combout\) # ((\b2v_inst|indice~16_combout\ & \b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux15~11_combout\);

-- Location: LCCOMB_X91_Y20_N4
\b2v_inst|Mux15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~12_combout\ = (\b2v_inst|indice~8_combout\) # ((\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~6_combout\) # (!\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux15~12_combout\);

-- Location: LCCOMB_X91_Y20_N18
\b2v_inst|Mux15~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~13_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~7_combout\ & (!\b2v_inst|indice~6_combout\ & !\b2v_inst|indice~8_combout\)))) # 
-- (!\b2v_inst|indice~16_combout\ & (((\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux15~13_combout\);

-- Location: LCCOMB_X91_Y20_N24
\b2v_inst|Mux15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~14_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~10_combout\) # ((\b2v_inst|Mux15~12_combout\)))) # (!\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~10_combout\ & ((!\b2v_inst|Mux15~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|Mux15~12_combout\,
	datad => \b2v_inst|Mux15~13_combout\,
	combout => \b2v_inst|Mux15~14_combout\);

-- Location: LCCOMB_X91_Y20_N10
\b2v_inst|Mux15~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~15_combout\ = (\b2v_inst|indice~8_combout\) # ((\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~16_combout\) # (\b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux15~15_combout\);

-- Location: LCCOMB_X91_Y20_N0
\b2v_inst|Mux15~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~16_combout\ = (\b2v_inst|indice~10_combout\ & ((\b2v_inst|Mux15~14_combout\ & (!\b2v_inst|Mux15~15_combout\)) # (!\b2v_inst|Mux15~14_combout\ & ((\b2v_inst|Mux15~11_combout\))))) # (!\b2v_inst|indice~10_combout\ & 
-- (((\b2v_inst|Mux15~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux15~15_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|Mux15~11_combout\,
	datad => \b2v_inst|Mux15~14_combout\,
	combout => \b2v_inst|Mux15~16_combout\);

-- Location: LCCOMB_X91_Y20_N26
\b2v_inst|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~2_combout\ = (\b2v_inst|indice~16_combout\ & (((!\b2v_inst|indice~6_combout\ & !\b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~10_combout\))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux4~2_combout\);

-- Location: LCCOMB_X91_Y20_N16
\b2v_inst|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~3_combout\ = (\b2v_inst|indice~16_combout\) # (\b2v_inst|indice~10_combout\ $ (!\b2v_inst|indice~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux4~3_combout\);

-- Location: LCCOMB_X88_Y24_N28
\b2v_inst|Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~4_combout\ = (\b2v_inst|indice~12_combout\ & ((\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice\(1) & !\b2v_inst|indice\(4))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice\(4)))))) # (!\b2v_inst|indice~12_combout\ & 
-- (((\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|indice\(1),
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|indice\(4),
	combout => \b2v_inst|Mux4~4_combout\);

-- Location: LCCOMB_X91_Y20_N22
\b2v_inst|Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~5_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~8_combout\) # ((\b2v_inst|Mux4~3_combout\)))) # (!\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~8_combout\ & (\b2v_inst|Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|Mux4~4_combout\,
	datad => \b2v_inst|Mux4~3_combout\,
	combout => \b2v_inst|Mux4~5_combout\);

-- Location: LCCOMB_X91_Y20_N20
\b2v_inst|Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~6_combout\ = (\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~10_combout\ & ((!\b2v_inst|indice~7_combout\) # (!\b2v_inst|indice~6_combout\)))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~10_combout\ $ 
-- (((\b2v_inst|indice~6_combout\ & \b2v_inst|indice~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux4~6_combout\);

-- Location: LCCOMB_X91_Y20_N14
\b2v_inst|Mux4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~7_combout\ = (\b2v_inst|Mux4~5_combout\ & (((\b2v_inst|Mux4~6_combout\)) # (!\b2v_inst|indice~8_combout\))) # (!\b2v_inst|Mux4~5_combout\ & (\b2v_inst|indice~8_combout\ & (!\b2v_inst|Mux4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux4~5_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|Mux4~2_combout\,
	datad => \b2v_inst|Mux4~6_combout\,
	combout => \b2v_inst|Mux4~7_combout\);

-- Location: LCCOMB_X91_Y20_N8
\b2v_inst|Mux4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~8_combout\ = (\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~7_combout\) # ((!\b2v_inst|indice~16_combout\ & \b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux4~8_combout\);

-- Location: LCCOMB_X91_Y20_N2
\b2v_inst|Mux4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~9_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~10_combout\) # ((!\b2v_inst|Mux15~15_combout\)))) # (!\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~10_combout\ & (\b2v_inst|Mux15~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|Mux15~11_combout\,
	datad => \b2v_inst|Mux15~15_combout\,
	combout => \b2v_inst|Mux4~9_combout\);

-- Location: LCCOMB_X91_Y20_N12
\b2v_inst|Mux4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~10_combout\ = (\b2v_inst|indice~16_combout\ & (((\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~7_combout\ & ((!\b2v_inst|indice~8_combout\) # (!\b2v_inst|indice~6_combout\))) # 
-- (!\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux4~10_combout\);

-- Location: LCCOMB_X91_Y20_N6
\b2v_inst|Mux4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~11_combout\ = (\b2v_inst|indice~10_combout\ & ((\b2v_inst|Mux4~9_combout\ & (\b2v_inst|Mux4~10_combout\)) # (!\b2v_inst|Mux4~9_combout\ & ((!\b2v_inst|Mux4~8_combout\))))) # (!\b2v_inst|indice~10_combout\ & (((\b2v_inst|Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux4~10_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|Mux4~8_combout\,
	datad => \b2v_inst|Mux4~9_combout\,
	combout => \b2v_inst|Mux4~11_combout\);

-- Location: LCCOMB_X91_Y21_N4
\b2v_inst|Mux4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~12_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~17_combout\) # ((\b2v_inst|Mux4~7_combout\)))) # (!\b2v_inst|indice~11_combout\ & (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux4~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux4~7_combout\,
	datad => \b2v_inst|Mux4~11_combout\,
	combout => \b2v_inst|Mux4~12_combout\);

-- Location: LCCOMB_X91_Y25_N22
\b2v_inst|Mux4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~13_combout\ = (\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~7_combout\) # (\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~9_combout\ & 
-- ((!\b2v_inst|indice~8_combout\) # (!\b2v_inst|indice~7_combout\))) # (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux4~13_combout\);

-- Location: LCCOMB_X86_Y21_N4
\b2v_inst|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~0_combout\ = (\b2v_inst|indice~9_combout\ & (((!\b2v_inst|indice~8_combout\) # (!\b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~6_combout\))) # (!\b2v_inst|indice~9_combout\ & (((\b2v_inst|indice~7_combout\) # 
-- (\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux3~0_combout\);

-- Location: LCCOMB_X87_Y24_N8
\b2v_inst|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~1_combout\ = ((!\b2v_inst|indice\(2) & !\b2v_inst|indice\(1))) # (!\b2v_inst|indice~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice\(2),
	datad => \b2v_inst|indice\(1),
	combout => \b2v_inst|Mux14~1_combout\);

-- Location: LCCOMB_X86_Y21_N18
\b2v_inst|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~1_combout\ = (\b2v_inst|indice~10_combout\ & (((\b2v_inst|indice~11_combout\)))) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~11_combout\ & (\b2v_inst|Mux3~0_combout\)) # (!\b2v_inst|indice~11_combout\ & 
-- ((!\b2v_inst|Mux14~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|Mux3~0_combout\,
	datac => \b2v_inst|Mux14~1_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux3~1_combout\);

-- Location: LCCOMB_X87_Y24_N26
\b2v_inst|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~2_combout\ = (((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|indice\(2))) # (!\b2v_inst|indice\(3))) # (!\b2v_inst|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~2_combout\,
	datab => \b2v_inst|indice\(3),
	datac => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|indice\(2),
	combout => \b2v_inst|Mux3~2_combout\);

-- Location: LCCOMB_X87_Y21_N18
\b2v_inst|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~3_combout\ = (\b2v_inst|Mux3~1_combout\ & (((!\b2v_inst|Mux3~2_combout\) # (!\b2v_inst|indice~10_combout\)))) # (!\b2v_inst|Mux3~1_combout\ & (!\b2v_inst|Mux14~0_combout\ & (\b2v_inst|indice~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux14~0_combout\,
	datab => \b2v_inst|Mux3~1_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|Mux3~2_combout\,
	combout => \b2v_inst|Mux3~3_combout\);

-- Location: LCCOMB_X91_Y21_N6
\b2v_inst|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~5_combout\ = (\b2v_inst|indice~11_combout\ & (!\b2v_inst|indice~10_combout\ & (!\b2v_inst|Mux7~23_combout\))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~10_combout\ $ (((!\b2v_inst|Mux3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|Mux7~23_combout\,
	datac => \b2v_inst|Mux3~4_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux3~5_combout\);

-- Location: LCCOMB_X86_Y25_N30
\b2v_inst|Mux3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~7_combout\ = (\b2v_inst|indice~11_combout\ & (((\b2v_inst|Mux14~1_combout\) # (\b2v_inst|indice~10_combout\)))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|Mux3~4_combout\ & ((!\b2v_inst|indice~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux3~4_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|Mux14~1_combout\,
	datad => \b2v_inst|indice~10_combout\,
	combout => \b2v_inst|Mux3~7_combout\);

-- Location: LCCOMB_X87_Y24_N4
\b2v_inst|Mux18~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~27_combout\ = (!\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~8_combout\ & !\b2v_inst|indice~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~8_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux18~27_combout\);

-- Location: LCCOMB_X87_Y21_N22
\b2v_inst|Mux14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~3_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|Mux14~2_combout\ $ (!\b2v_inst|indice~10_combout\)))) # (!\b2v_inst|indice~11_combout\ & (!\b2v_inst|Mux18~27_combout\ & ((\b2v_inst|indice~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~27_combout\,
	datab => \b2v_inst|Mux14~2_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux14~3_combout\);

-- Location: LCCOMB_X87_Y24_N18
\b2v_inst|Mux14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~5_combout\ = (\b2v_inst|LessThan0~2_combout\ & (!\b2v_inst|LessThan2~0_combout\ & ((\b2v_inst|indice\(3)) # (\b2v_inst|indice\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~2_combout\,
	datab => \b2v_inst|indice\(3),
	datac => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|indice\(2),
	combout => \b2v_inst|Mux14~5_combout\);

-- Location: LCCOMB_X86_Y21_N2
\b2v_inst|Mux14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~6_combout\ = (\b2v_inst|indice~10_combout\ & (((\b2v_inst|indice~11_combout\)))) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~11_combout\ & ((!\b2v_inst|Mux14~1_combout\))) # (!\b2v_inst|indice~11_combout\ & 
-- (!\b2v_inst|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux14~5_combout\,
	datab => \b2v_inst|Mux14~1_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux14~6_combout\);

-- Location: LCCOMB_X87_Y21_N10
\b2v_inst|Mux14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~8_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~6_combout\) # ((\b2v_inst|indice~7_combout\) # (\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux14~8_combout\);

-- Location: LCCOMB_X86_Y21_N16
\b2v_inst|Mux14~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~11_combout\ = (\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~8_combout\ & ((!\b2v_inst|indice~7_combout\) # (!\b2v_inst|indice~6_combout\)))) # (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~6_combout\) # 
-- ((\b2v_inst|indice~7_combout\) # (\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux14~11_combout\);

-- Location: LCCOMB_X87_Y21_N16
\b2v_inst|Mux14~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~12_combout\ = (\b2v_inst|indice~9_combout\ & (((!\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~6_combout\) # ((\b2v_inst|indice~7_combout\) # (\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux14~12_combout\);

-- Location: LCCOMB_X87_Y21_N26
\b2v_inst|Mux14~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~13_combout\ = (\b2v_inst|indice~10_combout\ & (((\b2v_inst|indice~11_combout\)))) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~11_combout\ & (!\b2v_inst|Mux14~11_combout\)) # (!\b2v_inst|indice~11_combout\ & 
-- ((\b2v_inst|Mux14~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux14~11_combout\,
	datab => \b2v_inst|Mux14~12_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux14~13_combout\);

-- Location: LCCOMB_X88_Y25_N30
\b2v_inst|Mux16~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~21_combout\ = (\b2v_inst|indice\(3) & (!\b2v_inst|indice\(5) & (\b2v_inst|LessThan0~2_combout\ & !\b2v_inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(3),
	datab => \b2v_inst|indice\(5),
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|Mux16~21_combout\);

-- Location: LCCOMB_X88_Y25_N24
\b2v_inst|Mux13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~2_combout\ = (!\b2v_inst|indice\(3) & (\b2v_inst|indice\(5) & (\b2v_inst|LessThan0~2_combout\ & !\b2v_inst|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(3),
	datab => \b2v_inst|indice\(5),
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|Mux13~2_combout\);

-- Location: LCCOMB_X88_Y25_N22
\b2v_inst|Mux13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~3_combout\ = (\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~6_combout\ & \b2v_inst|indice~7_combout\))) # (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~9_combout\) # ((\b2v_inst|indice~6_combout\) # 
-- (\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux13~3_combout\);

-- Location: LCCOMB_X88_Y25_N20
\b2v_inst|Mux13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~4_combout\ = (\b2v_inst|indice~10_combout\ & (((\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~8_combout\ & ((\b2v_inst|Mux13~2_combout\))) # (!\b2v_inst|indice~8_combout\ & 
-- (!\b2v_inst|Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux13~3_combout\,
	datab => \b2v_inst|Mux13~2_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux13~4_combout\);

-- Location: LCCOMB_X88_Y24_N26
\b2v_inst|Mux13~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~5_combout\ = ((\b2v_inst|indice~11_combout\) # ((!\b2v_inst|indice\(3) & !\b2v_inst|indice\(1)))) # (!\b2v_inst|indice~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|indice\(3),
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice\(1),
	combout => \b2v_inst|Mux13~5_combout\);

-- Location: LCCOMB_X88_Y24_N8
\b2v_inst|Mux13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~6_combout\ = (\b2v_inst|Mux13~4_combout\ & (((!\b2v_inst|indice~10_combout\)) # (!\b2v_inst|Mux13~5_combout\))) # (!\b2v_inst|Mux13~4_combout\ & (((\b2v_inst|Mux16~21_combout\ & \b2v_inst|indice~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux13~5_combout\,
	datab => \b2v_inst|Mux13~4_combout\,
	datac => \b2v_inst|Mux16~21_combout\,
	datad => \b2v_inst|indice~10_combout\,
	combout => \b2v_inst|Mux13~6_combout\);

-- Location: LCCOMB_X87_Y24_N12
\b2v_inst|Mux13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~8_combout\ = ((!\b2v_inst|indice\(5) & ((\b2v_inst|Mux18~27_combout\) # (!\b2v_inst|indice\(4))))) # (!\b2v_inst|indice~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|Mux18~27_combout\,
	datac => \b2v_inst|indice\(5),
	datad => \b2v_inst|indice\(4),
	combout => \b2v_inst|Mux13~8_combout\);

-- Location: LCCOMB_X87_Y21_N14
\b2v_inst|Mux13~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~9_combout\ = (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~16_combout\ & ((\b2v_inst|Mux13~8_combout\) # (\b2v_inst|Mux14~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux13~8_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|Mux14~16_combout\,
	combout => \b2v_inst|Mux13~9_combout\);

-- Location: LCCOMB_X91_Y21_N28
\b2v_inst|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~0_combout\ = (\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~6_combout\ & \b2v_inst|Mux7~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|Mux7~23_combout\,
	combout => \b2v_inst|Mux2~0_combout\);

-- Location: LCCOMB_X91_Y21_N22
\b2v_inst|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~1_combout\ = (\b2v_inst|Mux2~0_combout\) # ((\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~10_combout\))) # (!\b2v_inst|indice~11_combout\ & ((!\b2v_inst|indice~10_combout\) # (!\b2v_inst|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|Mux2~0_combout\,
	datac => \b2v_inst|Mux14~0_combout\,
	datad => \b2v_inst|indice~10_combout\,
	combout => \b2v_inst|Mux2~1_combout\);

-- Location: LCCOMB_X91_Y21_N20
\b2v_inst|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~2_combout\ = (\b2v_inst|indice~17_combout\ & (((\b2v_inst|indice\(6))))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|Mux2~1_combout\ & ((\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux2~1_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice\(6),
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux2~2_combout\);

-- Location: LCCOMB_X88_Y25_N26
\b2v_inst|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~3_combout\ = ((\b2v_inst|indice\(3) & \b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(3),
	datab => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux2~3_combout\);

-- Location: LCCOMB_X88_Y25_N16
\b2v_inst|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~4_combout\ = (\b2v_inst|indice~10_combout\ & (((\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~8_combout\ & ((\b2v_inst|Mux13~2_combout\))) # (!\b2v_inst|indice~8_combout\ & 
-- (!\b2v_inst|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux2~3_combout\,
	datab => \b2v_inst|Mux13~2_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux2~4_combout\);

-- Location: LCCOMB_X88_Y25_N14
\b2v_inst|Mux2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~5_combout\ = (\b2v_inst|Mux2~4_combout\ & ((\b2v_inst|Mux13~3_combout\) # ((!\b2v_inst|indice~10_combout\)))) # (!\b2v_inst|Mux2~4_combout\ & (((\b2v_inst|indice~10_combout\ & \b2v_inst|Mux16~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux13~3_combout\,
	datab => \b2v_inst|Mux2~4_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|Mux16~21_combout\,
	combout => \b2v_inst|Mux2~5_combout\);

-- Location: LCCOMB_X91_Y22_N22
\b2v_inst|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux11~0_combout\ = (\b2v_inst|indice~16_combout\) # ((\b2v_inst|Mux12~0_combout\ & \b2v_inst|indice~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux12~0_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux11~0_combout\);

-- Location: LCCOMB_X89_Y24_N16
\b2v_inst|salida1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~40_combout\ = (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|LessThan0~2_combout\ & ((!\b2v_inst|LessThan6~0_combout\) # (!\b2v_inst|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|LessThan0~1_combout\,
	datac => \b2v_inst|LessThan6~0_combout\,
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|salida1~40_combout\);

-- Location: LCCOMB_X89_Y23_N30
\b2v_inst|salida1~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~41_combout\ = (\b2v_inst|salida1\(11) & ((\b2v_inst|indice~18_combout\) # ((\b2v_inst|salida1~40_combout\ & \b2v_inst|LessThan8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1~40_combout\,
	datab => \b2v_inst|salida1\(11),
	datac => \b2v_inst|indice~18_combout\,
	datad => \b2v_inst|LessThan8~2_combout\,
	combout => \b2v_inst|salida1~41_combout\);

-- Location: LCCOMB_X89_Y24_N30
\b2v_inst|LessThan8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan8~3_combout\ = (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|LessThan0~2_combout\ & ((\b2v_inst|indice\(8)) # (\b2v_inst|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|indice\(8),
	datac => \b2v_inst|LessThan0~0_combout\,
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|LessThan8~3_combout\);

-- Location: LCCOMB_X88_Y25_N10
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

-- Location: LCCOMB_X91_Y21_N14
\b2v_inst|Mux15~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~20_combout\ = (\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~6_combout\) # ((\b2v_inst|indice~7_combout\) # (!\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~8_combout\ & (!\b2v_inst|indice~16_combout\ & 
-- ((\b2v_inst|indice~6_combout\) # (\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~6_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~8_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux15~20_combout\);

-- Location: LCCOMB_X91_Y21_N12
\b2v_inst|Mux15~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~21_combout\ = (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~9_combout\ $ ((\b2v_inst|Mux15~20_combout\)))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~9_combout\ & (\b2v_inst|Mux15~20_combout\ & \b2v_inst|indice~10_combout\)) 
-- # (!\b2v_inst|indice~9_combout\ & ((!\b2v_inst|indice~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|Mux15~20_combout\,
	datad => \b2v_inst|indice~10_combout\,
	combout => \b2v_inst|Mux15~21_combout\);

-- Location: LCCOMB_X89_Y23_N10
\b2v_inst|indice[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice[9]~1_combout\ = (\b2v_inst5|altpll_component|auto_generated|locked~combout\ & ((!\b2v_inst9|data_out~0_combout\))) # (!\b2v_inst5|altpll_component|auto_generated|locked~combout\ & (\b2v_inst|indice[9]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice[9]~1_combout\,
	datab => \b2v_inst5|altpll_component|auto_generated|locked~combout\,
	datad => \b2v_inst9|data_out~0_combout\,
	combout => \b2v_inst|indice[9]~1_combout\);

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

-- Location: IOIBUF_X115_Y51_N1
\datos_ext~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datos_ext,
	o => \datos_ext~input_o\);

-- Location: CLKCTRL_G18
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

-- Location: CLKCTRL_G15
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

-- Location: CLKCTRL_G12
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

-- Location: LCCOMB_X84_Y23_N28
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

-- Location: LCCOMB_X86_Y23_N4
\b2v_inst11|SHIFT_PB[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst11|SHIFT_PB[2]~feeder_combout\ = \b2v_inst11|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst11|SHIFT_PB\(3),
	combout => \b2v_inst11|SHIFT_PB[2]~feeder_combout\);

-- Location: LCCOMB_X86_Y23_N12
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

-- Location: LCCOMB_X86_Y23_N0
\b2v_inst11|SHIFT_PB[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst11|SHIFT_PB[3]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \b2v_inst11|SHIFT_PB[3]~feeder_combout\);

-- Location: IOOBUF_X115_Y29_N2
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

-- Location: IOOBUF_X115_Y22_N2
\dato_o~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|dato_o~q\,
	devoe => ww_devoe,
	o => ww_dato_o);

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

-- Location: IOOBUF_X72_Y0_N9
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

-- Location: IOOBUF_X115_Y69_N23
\prng_o~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst4|pseudo_reg\(7),
	devoe => ww_devoe,
	o => ww_prng_o);

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

-- Location: IOOBUF_X115_Y22_N23
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

-- Location: IOOBUF_X85_Y0_N16
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

-- Location: IOOBUF_X115_Y24_N9
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

-- Location: IOOBUF_X85_Y0_N2
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

-- Location: IOOBUF_X115_Y25_N16
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

-- Location: IOOBUF_X115_Y24_N2
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

-- Location: IOOBUF_X87_Y0_N16
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

-- Location: IOOBUF_X115_Y25_N23
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

-- Location: IOOBUF_X115_Y21_N16
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

-- Location: IOOBUF_X83_Y0_N9
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

-- Location: IOOBUF_X85_Y0_N23
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

-- Location: IOOBUF_X115_Y27_N2
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

-- Location: IOOBUF_X89_Y0_N23
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

-- Location: IOOBUF_X115_Y27_N9
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

-- Location: IOOBUF_X89_Y0_N16
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

-- Location: IOOBUF_X89_Y0_N9
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

-- Location: IOOBUF_X115_Y23_N2
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

-- Location: IOOBUF_X115_Y26_N16
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

-- Location: IOOBUF_X115_Y23_N9
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

-- Location: IOOBUF_X115_Y22_N16
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

-- Location: IOOBUF_X87_Y0_N23
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

-- Location: IOOBUF_X115_Y26_N23
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

-- Location: LCCOMB_X87_Y23_N6
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

-- Location: FF_X87_Y23_N7
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

-- Location: LCCOMB_X87_Y23_N30
\b2v_inst5|altpll_component|auto_generated|locked\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst5|altpll_component|auto_generated|locked~combout\ = (!\b2v_inst5|altpll_component|auto_generated|pll_lock_sync~q\) # (!\b2v_inst5|altpll_component|auto_generated|wire_pll1_locked\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|altpll_component|auto_generated|wire_pll1_locked\,
	datad => \b2v_inst5|altpll_component|auto_generated|pll_lock_sync~q\,
	combout => \b2v_inst5|altpll_component|auto_generated|locked~combout\);

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

-- Location: LCCOMB_X87_Y23_N8
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

-- Location: FF_X87_Y23_N9
\b2v_inst12|SALIDA_PB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst11|PB_SIN_REBOTE~q\,
	d => \b2v_inst12|SALIDA_PB~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst12|SALIDA_PB~q\);

-- Location: LCCOMB_X90_Y23_N8
\b2v_inst4|pseudo_reg[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|pseudo_reg[0]~8_combout\ = !\b2v_inst4|pseudo_reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst4|pseudo_reg\(7),
	combout => \b2v_inst4|pseudo_reg[0]~8_combout\);

-- Location: FF_X90_Y23_N9
\b2v_inst4|pseudo_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst4|pseudo_reg[0]~8_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|pseudo_reg\(0));

-- Location: LCCOMB_X90_Y23_N22
\b2v_inst4|pseudo_reg[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|pseudo_reg[1]~7_combout\ = !\b2v_inst4|pseudo_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|pseudo_reg\(0),
	combout => \b2v_inst4|pseudo_reg[1]~7_combout\);

-- Location: FF_X90_Y23_N23
\b2v_inst4|pseudo_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst4|pseudo_reg[1]~7_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|pseudo_reg\(1));

-- Location: LCCOMB_X90_Y23_N28
\b2v_inst4|pseudo_reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|pseudo_reg~2_combout\ = \b2v_inst4|pseudo_reg\(1) $ (\b2v_inst4|pseudo_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|pseudo_reg\(1),
	datad => \b2v_inst4|pseudo_reg\(7),
	combout => \b2v_inst4|pseudo_reg~2_combout\);

-- Location: FF_X90_Y23_N29
\b2v_inst4|pseudo_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst4|pseudo_reg~2_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|pseudo_reg\(2));

-- Location: LCCOMB_X90_Y23_N14
\b2v_inst4|pseudo_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|pseudo_reg~1_combout\ = \b2v_inst4|pseudo_reg\(2) $ (\b2v_inst4|pseudo_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|pseudo_reg\(2),
	datad => \b2v_inst4|pseudo_reg\(7),
	combout => \b2v_inst4|pseudo_reg~1_combout\);

-- Location: FF_X90_Y23_N15
\b2v_inst4|pseudo_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst4|pseudo_reg~1_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|pseudo_reg\(3));

-- Location: LCCOMB_X90_Y23_N12
\b2v_inst4|pseudo_reg~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|pseudo_reg~0_combout\ = \b2v_inst4|pseudo_reg\(3) $ (!\b2v_inst4|pseudo_reg\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|pseudo_reg\(3),
	datad => \b2v_inst4|pseudo_reg\(7),
	combout => \b2v_inst4|pseudo_reg~0_combout\);

-- Location: FF_X90_Y23_N13
\b2v_inst4|pseudo_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst4|pseudo_reg~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|pseudo_reg\(4));

-- Location: LCCOMB_X90_Y23_N20
\b2v_inst4|pseudo_reg[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|pseudo_reg[5]~4_combout\ = !\b2v_inst4|pseudo_reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst4|pseudo_reg\(4),
	combout => \b2v_inst4|pseudo_reg[5]~4_combout\);

-- Location: FF_X90_Y23_N21
\b2v_inst4|pseudo_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst4|pseudo_reg[5]~4_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|pseudo_reg\(5));

-- Location: LCCOMB_X90_Y23_N30
\b2v_inst4|pseudo_reg[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|pseudo_reg[6]~3_combout\ = !\b2v_inst4|pseudo_reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst4|pseudo_reg\(5),
	combout => \b2v_inst4|pseudo_reg[6]~3_combout\);

-- Location: FF_X90_Y23_N31
\b2v_inst4|pseudo_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst4|pseudo_reg[6]~3_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|pseudo_reg\(6));

-- Location: LCCOMB_X90_Y23_N16
\b2v_inst4|pseudo_reg[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst4|pseudo_reg[7]~feeder_combout\ = \b2v_inst4|pseudo_reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|pseudo_reg\(6),
	combout => \b2v_inst4|pseudo_reg[7]~feeder_combout\);

-- Location: FF_X90_Y23_N17
\b2v_inst4|pseudo_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst1|q~2clkctrl_outclk\,
	d => \b2v_inst4|pseudo_reg[7]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|pseudo_reg\(7));

-- Location: LCCOMB_X89_Y23_N0
\b2v_inst9|data_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst9|data_out~0_combout\ = (\b2v_inst12|SALIDA_PB~q\ & ((\b2v_inst4|pseudo_reg\(7)))) # (!\b2v_inst12|SALIDA_PB~q\ & (\datos_ext~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datos_ext~input_o\,
	datac => \b2v_inst12|SALIDA_PB~q\,
	datad => \b2v_inst4|pseudo_reg\(7),
	combout => \b2v_inst9|data_out~0_combout\);

-- Location: FF_X89_Y23_N1
\b2v_inst|dato_o\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst9|data_out~0_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|dato_o~q\);

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

-- Location: LCCOMB_X84_Y24_N2
\b2v_inst|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~3_combout\ = (\F_in[3]~input_o\ & (\F_in[2]~input_o\ & (\F_in[1]~input_o\ & \F_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_in[3]~input_o\,
	datab => \F_in[2]~input_o\,
	datac => \F_in[1]~input_o\,
	datad => \F_in[0]~input_o\,
	combout => \b2v_inst|Add0~3_combout\);

-- Location: LCCOMB_X84_Y24_N6
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

-- Location: LCCOMB_X84_Y24_N30
\b2v_inst|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~1_combout\ = \F_in[2]~input_o\ $ (((\F_in[1]~input_o\ & \F_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F_in[2]~input_o\,
	datac => \F_in[1]~input_o\,
	datad => \F_in[0]~input_o\,
	combout => \b2v_inst|Add0~1_combout\);

-- Location: LCCOMB_X85_Y24_N0
\b2v_inst|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~0_combout\ = (\b2v_inst|cuenta~0_combout\ & (\F_in[0]~input_o\ $ (GND))) # (!\b2v_inst|cuenta~0_combout\ & (!\F_in[0]~input_o\ & VCC))
-- \b2v_inst|Add4~1\ = CARRY((\b2v_inst|cuenta~0_combout\ & !\F_in[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta~0_combout\,
	datab => \F_in[0]~input_o\,
	datad => VCC,
	combout => \b2v_inst|Add4~0_combout\,
	cout => \b2v_inst|Add4~1\);

-- Location: LCCOMB_X85_Y24_N2
\b2v_inst|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~2_combout\ = (\b2v_inst|Add0~0_combout\ & ((\b2v_inst|cuenta~1_combout\ & (\b2v_inst|Add4~1\ & VCC)) # (!\b2v_inst|cuenta~1_combout\ & (!\b2v_inst|Add4~1\)))) # (!\b2v_inst|Add0~0_combout\ & ((\b2v_inst|cuenta~1_combout\ & 
-- (!\b2v_inst|Add4~1\)) # (!\b2v_inst|cuenta~1_combout\ & ((\b2v_inst|Add4~1\) # (GND)))))
-- \b2v_inst|Add4~3\ = CARRY((\b2v_inst|Add0~0_combout\ & (!\b2v_inst|cuenta~1_combout\ & !\b2v_inst|Add4~1\)) # (!\b2v_inst|Add0~0_combout\ & ((!\b2v_inst|Add4~1\) # (!\b2v_inst|cuenta~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~0_combout\,
	datab => \b2v_inst|cuenta~1_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~1\,
	combout => \b2v_inst|Add4~2_combout\,
	cout => \b2v_inst|Add4~3\);

-- Location: FF_X84_Y23_N31
\b2v_inst|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~2_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(1));

-- Location: LCCOMB_X84_Y23_N6
\b2v_inst|cuenta~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta~1_combout\ = (!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(1),
	combout => \b2v_inst|cuenta~1_combout\);

-- Location: LCCOMB_X85_Y24_N4
\b2v_inst|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~4_combout\ = ((\b2v_inst|cuenta~2_combout\ $ (\b2v_inst|Add0~1_combout\ $ (!\b2v_inst|Add4~3\)))) # (GND)
-- \b2v_inst|Add4~5\ = CARRY((\b2v_inst|cuenta~2_combout\ & ((\b2v_inst|Add0~1_combout\) # (!\b2v_inst|Add4~3\))) # (!\b2v_inst|cuenta~2_combout\ & (\b2v_inst|Add0~1_combout\ & !\b2v_inst|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta~2_combout\,
	datab => \b2v_inst|Add0~1_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~3\,
	combout => \b2v_inst|Add4~4_combout\,
	cout => \b2v_inst|Add4~5\);

-- Location: LCCOMB_X85_Y24_N6
\b2v_inst|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~6_combout\ = (\b2v_inst|Add0~2_combout\ & ((\b2v_inst|cuenta~3_combout\ & (\b2v_inst|Add4~5\ & VCC)) # (!\b2v_inst|cuenta~3_combout\ & (!\b2v_inst|Add4~5\)))) # (!\b2v_inst|Add0~2_combout\ & ((\b2v_inst|cuenta~3_combout\ & 
-- (!\b2v_inst|Add4~5\)) # (!\b2v_inst|cuenta~3_combout\ & ((\b2v_inst|Add4~5\) # (GND)))))
-- \b2v_inst|Add4~7\ = CARRY((\b2v_inst|Add0~2_combout\ & (!\b2v_inst|cuenta~3_combout\ & !\b2v_inst|Add4~5\)) # (!\b2v_inst|Add0~2_combout\ & ((!\b2v_inst|Add4~5\) # (!\b2v_inst|cuenta~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~2_combout\,
	datab => \b2v_inst|cuenta~3_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~5\,
	combout => \b2v_inst|Add4~6_combout\,
	cout => \b2v_inst|Add4~7\);

-- Location: FF_X84_Y23_N11
\b2v_inst|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~6_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(3));

-- Location: LCCOMB_X84_Y23_N10
\b2v_inst|cuenta~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta~3_combout\ = (!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datac => \b2v_inst|cuenta\(3),
	combout => \b2v_inst|cuenta~3_combout\);

-- Location: LCCOMB_X85_Y24_N8
\b2v_inst|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~8_combout\ = ((\b2v_inst|Add0~4_combout\ $ (\b2v_inst|cuenta~4_combout\ $ (!\b2v_inst|Add4~7\)))) # (GND)
-- \b2v_inst|Add4~9\ = CARRY((\b2v_inst|Add0~4_combout\ & ((\b2v_inst|cuenta~4_combout\) # (!\b2v_inst|Add4~7\))) # (!\b2v_inst|Add0~4_combout\ & (\b2v_inst|cuenta~4_combout\ & !\b2v_inst|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~4_combout\,
	datab => \b2v_inst|cuenta~4_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~7\,
	combout => \b2v_inst|Add4~8_combout\,
	cout => \b2v_inst|Add4~9\);

-- Location: LCCOMB_X84_Y23_N20
\b2v_inst|cuenta[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta[4]~feeder_combout\ = \b2v_inst|Add4~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add4~8_combout\,
	combout => \b2v_inst|cuenta[4]~feeder_combout\);

-- Location: FF_X84_Y23_N21
\b2v_inst|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|cuenta[4]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(4));

-- Location: LCCOMB_X84_Y23_N2
\b2v_inst|cuenta~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta~4_combout\ = (!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|cuenta\(4),
	combout => \b2v_inst|cuenta~4_combout\);

-- Location: LCCOMB_X85_Y24_N10
\b2v_inst|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~10_combout\ = (\b2v_inst|cuenta~5_combout\ & ((\b2v_inst|Add0~5_combout\ & (\b2v_inst|Add4~9\ & VCC)) # (!\b2v_inst|Add0~5_combout\ & (!\b2v_inst|Add4~9\)))) # (!\b2v_inst|cuenta~5_combout\ & ((\b2v_inst|Add0~5_combout\ & 
-- (!\b2v_inst|Add4~9\)) # (!\b2v_inst|Add0~5_combout\ & ((\b2v_inst|Add4~9\) # (GND)))))
-- \b2v_inst|Add4~11\ = CARRY((\b2v_inst|cuenta~5_combout\ & (!\b2v_inst|Add0~5_combout\ & !\b2v_inst|Add4~9\)) # (!\b2v_inst|cuenta~5_combout\ & ((!\b2v_inst|Add4~9\) # (!\b2v_inst|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta~5_combout\,
	datab => \b2v_inst|Add0~5_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~9\,
	combout => \b2v_inst|Add4~10_combout\,
	cout => \b2v_inst|Add4~11\);

-- Location: LCCOMB_X85_Y24_N12
\b2v_inst|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~12_combout\ = (\b2v_inst|Add4~11\ & (\b2v_inst|cuenta\(6) & (!\b2v_inst|LessThan2~0_combout\ & VCC))) # (!\b2v_inst|Add4~11\ & ((((\b2v_inst|cuenta\(6) & !\b2v_inst|LessThan2~0_combout\)))))
-- \b2v_inst|Add4~13\ = CARRY((\b2v_inst|cuenta\(6) & (!\b2v_inst|LessThan2~0_combout\ & !\b2v_inst|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(6),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~11\,
	combout => \b2v_inst|Add4~12_combout\,
	cout => \b2v_inst|Add4~13\);

-- Location: LCCOMB_X85_Y24_N14
\b2v_inst|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~14_combout\ = (\b2v_inst|Add4~13\ & (((\b2v_inst|LessThan2~0_combout\)) # (!\b2v_inst|cuenta\(7)))) # (!\b2v_inst|Add4~13\ & (((\b2v_inst|cuenta\(7) & !\b2v_inst|LessThan2~0_combout\)) # (GND)))
-- \b2v_inst|Add4~15\ = CARRY(((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|Add4~13\)) # (!\b2v_inst|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(7),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~13\,
	combout => \b2v_inst|Add4~14_combout\,
	cout => \b2v_inst|Add4~15\);

-- Location: LCCOMB_X85_Y24_N16
\b2v_inst|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~16_combout\ = (\b2v_inst|Add4~15\ & (\b2v_inst|cuenta\(8) & (!\b2v_inst|LessThan2~0_combout\ & VCC))) # (!\b2v_inst|Add4~15\ & ((((\b2v_inst|cuenta\(8) & !\b2v_inst|LessThan2~0_combout\)))))
-- \b2v_inst|Add4~17\ = CARRY((\b2v_inst|cuenta\(8) & (!\b2v_inst|LessThan2~0_combout\ & !\b2v_inst|Add4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(8),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~15\,
	combout => \b2v_inst|Add4~16_combout\,
	cout => \b2v_inst|Add4~17\);

-- Location: LCCOMB_X85_Y24_N18
\b2v_inst|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~18_combout\ = (\b2v_inst|Add4~17\ & (((\b2v_inst|LessThan2~0_combout\)) # (!\b2v_inst|cuenta\(9)))) # (!\b2v_inst|Add4~17\ & (((\b2v_inst|cuenta\(9) & !\b2v_inst|LessThan2~0_combout\)) # (GND)))
-- \b2v_inst|Add4~19\ = CARRY(((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|Add4~17\)) # (!\b2v_inst|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(9),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~17\,
	combout => \b2v_inst|Add4~18_combout\,
	cout => \b2v_inst|Add4~19\);

-- Location: LCCOMB_X85_Y24_N20
\b2v_inst|Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~20_combout\ = (\b2v_inst|Add4~19\ & (\b2v_inst|cuenta\(10) & (!\b2v_inst|LessThan2~0_combout\ & VCC))) # (!\b2v_inst|Add4~19\ & ((((\b2v_inst|cuenta\(10) & !\b2v_inst|LessThan2~0_combout\)))))
-- \b2v_inst|Add4~21\ = CARRY((\b2v_inst|cuenta\(10) & (!\b2v_inst|LessThan2~0_combout\ & !\b2v_inst|Add4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(10),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~19\,
	combout => \b2v_inst|Add4~20_combout\,
	cout => \b2v_inst|Add4~21\);

-- Location: FF_X84_Y23_N1
\b2v_inst|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~20_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(10));

-- Location: LCCOMB_X85_Y24_N22
\b2v_inst|Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~22_combout\ = (\b2v_inst|Add4~21\ & (((\b2v_inst|LessThan2~0_combout\)) # (!\b2v_inst|cuenta\(11)))) # (!\b2v_inst|Add4~21\ & (((\b2v_inst|cuenta\(11) & !\b2v_inst|LessThan2~0_combout\)) # (GND)))
-- \b2v_inst|Add4~23\ = CARRY(((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|Add4~21\)) # (!\b2v_inst|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(11),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~21\,
	combout => \b2v_inst|Add4~22_combout\,
	cout => \b2v_inst|Add4~23\);

-- Location: LCCOMB_X85_Y24_N24
\b2v_inst|Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~24_combout\ = (\b2v_inst|Add4~23\ & (\b2v_inst|cuenta\(12) & (!\b2v_inst|LessThan2~0_combout\ & VCC))) # (!\b2v_inst|Add4~23\ & ((((\b2v_inst|cuenta\(12) & !\b2v_inst|LessThan2~0_combout\)))))
-- \b2v_inst|Add4~25\ = CARRY((\b2v_inst|cuenta\(12) & (!\b2v_inst|LessThan2~0_combout\ & !\b2v_inst|Add4~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(12),
	datab => \b2v_inst|LessThan2~0_combout\,
	datad => VCC,
	cin => \b2v_inst|Add4~23\,
	combout => \b2v_inst|Add4~24_combout\,
	cout => \b2v_inst|Add4~25\);

-- Location: LCCOMB_X85_Y24_N26
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

-- Location: LCCOMB_X85_Y23_N2
\b2v_inst|Add4~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~34_combout\ = (\b2v_inst|Add4~33\ & ((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|cuenta\(17))))) # (!\b2v_inst|Add4~33\ & (((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(17))) # (GND)))
-- \b2v_inst|Add4~35\ = CARRY((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|Add4~33\) # (!\b2v_inst|cuenta\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(17),
	datad => VCC,
	cin => \b2v_inst|Add4~33\,
	combout => \b2v_inst|Add4~34_combout\,
	cout => \b2v_inst|Add4~35\);

-- Location: FF_X84_Y23_N25
\b2v_inst|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~34_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(17));

-- Location: LCCOMB_X85_Y23_N4
\b2v_inst|Add4~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~36_combout\ = (\b2v_inst|Add4~35\ & (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(18) & VCC))) # (!\b2v_inst|Add4~35\ & ((((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(18))))))
-- \b2v_inst|Add4~37\ = CARRY((!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(18) & !\b2v_inst|Add4~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(18),
	datad => VCC,
	cin => \b2v_inst|Add4~35\,
	combout => \b2v_inst|Add4~36_combout\,
	cout => \b2v_inst|Add4~37\);

-- Location: FF_X85_Y23_N5
\b2v_inst|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~36_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(18));

-- Location: LCCOMB_X85_Y23_N6
\b2v_inst|Add4~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~38_combout\ = (\b2v_inst|Add4~37\ & ((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|cuenta\(19))))) # (!\b2v_inst|Add4~37\ & (((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(19))) # (GND)))
-- \b2v_inst|Add4~39\ = CARRY((\b2v_inst|LessThan2~0_combout\) # ((!\b2v_inst|Add4~37\) # (!\b2v_inst|cuenta\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(19),
	datad => VCC,
	cin => \b2v_inst|Add4~37\,
	combout => \b2v_inst|Add4~38_combout\,
	cout => \b2v_inst|Add4~39\);

-- Location: FF_X85_Y23_N7
\b2v_inst|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~38_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(19));

-- Location: LCCOMB_X85_Y23_N8
\b2v_inst|Add4~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~40_combout\ = (\b2v_inst|Add4~39\ & (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(20) & VCC))) # (!\b2v_inst|Add4~39\ & ((((!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|cuenta\(20))))))
-- \b2v_inst|Add4~41\ = CARRY((!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|cuenta\(20) & !\b2v_inst|Add4~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|cuenta\(20),
	datad => VCC,
	cin => \b2v_inst|Add4~39\,
	combout => \b2v_inst|Add4~40_combout\,
	cout => \b2v_inst|Add4~41\);

-- Location: FF_X85_Y23_N9
\b2v_inst|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~40_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(20));

-- Location: LCCOMB_X85_Y23_N20
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

-- Location: FF_X85_Y23_N21
\b2v_inst|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~52_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(26));

-- Location: LCCOMB_X85_Y23_N22
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

-- Location: FF_X85_Y23_N23
\b2v_inst|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~54_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(27));

-- Location: LCCOMB_X85_Y23_N24
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

-- Location: FF_X85_Y23_N25
\b2v_inst|cuenta[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~56_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(28));

-- Location: LCCOMB_X85_Y23_N26
\b2v_inst|Add4~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add4~58_combout\ = (\b2v_inst|Add4~57\ & (((!\b2v_inst|cuenta\(29))) # (!\b2v_inst|cuenta\(31)))) # (!\b2v_inst|Add4~57\ & (((\b2v_inst|cuenta\(31) & \b2v_inst|cuenta\(29))) # (GND)))
-- \b2v_inst|Add4~59\ = CARRY(((!\b2v_inst|Add4~57\) # (!\b2v_inst|cuenta\(29))) # (!\b2v_inst|cuenta\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(31),
	datab => \b2v_inst|cuenta\(29),
	datad => VCC,
	cin => \b2v_inst|Add4~57\,
	combout => \b2v_inst|Add4~58_combout\,
	cout => \b2v_inst|Add4~59\);

-- Location: FF_X85_Y23_N27
\b2v_inst|cuenta[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~58_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(29));

-- Location: LCCOMB_X85_Y23_N28
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

-- Location: FF_X85_Y23_N29
\b2v_inst|cuenta[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~60_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(30));

-- Location: LCCOMB_X85_Y23_N30
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

-- Location: FF_X85_Y23_N31
\b2v_inst|cuenta[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add4~62_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(31));

-- Location: FF_X89_Y23_N17
\b2v_inst|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~22_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(11));

-- Location: FF_X91_Y23_N15
\b2v_inst|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~24_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(12));

-- Location: FF_X85_Y23_N3
\b2v_inst|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~26_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(13));

-- Location: LCCOMB_X87_Y23_N10
\b2v_inst|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~5_combout\ = (!\b2v_inst|cuenta\(14) & (!\b2v_inst|cuenta\(11) & (!\b2v_inst|cuenta\(12) & !\b2v_inst|cuenta\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(14),
	datab => \b2v_inst|cuenta\(11),
	datac => \b2v_inst|cuenta\(12),
	datad => \b2v_inst|cuenta\(13),
	combout => \b2v_inst|LessThan1~5_combout\);

-- Location: LCCOMB_X84_Y23_N26
\b2v_inst|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan2~0_combout\ = (!\b2v_inst|cuenta\(31) & (((\b2v_inst|cuenta\(10)) # (!\b2v_inst|LessThan1~5_combout\)) # (!\b2v_inst|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan1~4_combout\,
	datab => \b2v_inst|cuenta\(10),
	datac => \b2v_inst|cuenta\(31),
	datad => \b2v_inst|LessThan1~5_combout\,
	combout => \b2v_inst|LessThan2~0_combout\);

-- Location: FF_X86_Y24_N13
\b2v_inst|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~16_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(8));

-- Location: LCCOMB_X86_Y24_N4
\b2v_inst|cuenta[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta[6]~feeder_combout\ = \b2v_inst|Add4~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add4~12_combout\,
	combout => \b2v_inst|cuenta[6]~feeder_combout\);

-- Location: FF_X86_Y24_N5
\b2v_inst|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|cuenta[6]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(6));

-- Location: LCCOMB_X86_Y24_N6
\b2v_inst|cuenta[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta[7]~feeder_combout\ = \b2v_inst|Add4~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add4~14_combout\,
	combout => \b2v_inst|cuenta[7]~feeder_combout\);

-- Location: FF_X86_Y24_N7
\b2v_inst|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|cuenta[7]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(7));

-- Location: LCCOMB_X86_Y24_N30
\b2v_inst|LessThan1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~6_combout\ = (((!\b2v_inst|cuenta\(7)) # (!\b2v_inst|cuenta\(6))) # (!\b2v_inst|cuenta\(8))) # (!\b2v_inst|cuenta\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|cuenta\(9),
	datab => \b2v_inst|cuenta\(8),
	datac => \b2v_inst|cuenta\(6),
	datad => \b2v_inst|cuenta\(7),
	combout => \b2v_inst|LessThan1~6_combout\);

-- Location: FF_X84_Y23_N19
\b2v_inst|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~10_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta\(5));

-- Location: LCCOMB_X84_Y23_N0
\b2v_inst|LessThan1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~8_combout\ = (\b2v_inst|cuenta\(10)) # ((!\b2v_inst|LessThan1~6_combout\ & ((\b2v_inst|LessThan1~7_combout\) # (\b2v_inst|cuenta\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan1~7_combout\,
	datab => \b2v_inst|LessThan1~6_combout\,
	datac => \b2v_inst|cuenta\(10),
	datad => \b2v_inst|cuenta\(5),
	combout => \b2v_inst|LessThan1~8_combout\);

-- Location: LCCOMB_X84_Y23_N16
\b2v_inst|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan1~9_combout\ = (!\b2v_inst|cuenta\(31) & (((\b2v_inst|LessThan1~8_combout\) # (!\b2v_inst|LessThan1~5_combout\)) # (!\b2v_inst|LessThan1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan1~4_combout\,
	datab => \b2v_inst|LessThan1~8_combout\,
	datac => \b2v_inst|cuenta\(31),
	datad => \b2v_inst|LessThan1~5_combout\,
	combout => \b2v_inst|LessThan1~9_combout\);

-- Location: FF_X86_Y2_N23
\b2v_inst|rlj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|LessThan1~9_combout\,
	sload => VCC,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|rlj~q\);

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

-- Location: LCCOMB_X87_Y2_N26
\b2v_inst1|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux1~1_combout\ = (\periodos[1]~input_o\ & !\periodos[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \periodos[1]~input_o\,
	datad => \periodos[0]~input_o\,
	combout => \b2v_inst1|Mux1~1_combout\);

-- Location: FF_X87_Y2_N27
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

-- Location: LCCOMB_X87_Y2_N16
\b2v_inst1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux1~0_combout\ = (\periodos[1]~input_o\ & \periodos[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \periodos[1]~input_o\,
	datad => \periodos[0]~input_o\,
	combout => \b2v_inst1|Mux1~0_combout\);

-- Location: FF_X87_Y2_N17
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

-- Location: LCCOMB_X87_Y2_N28
\b2v_inst1|Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Equal9~0_combout\ = (!\b2v_inst1|MAX_cont\(1) & (!\b2v_inst1|MAX_cont\(2) & !\b2v_inst1|MAX_cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MAX_cont\(1),
	datac => \b2v_inst1|MAX_cont\(2),
	datad => \b2v_inst1|MAX_cont\(3),
	combout => \b2v_inst1|Equal9~0_combout\);

-- Location: LCCOMB_X85_Y2_N22
\b2v_inst1|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~3_combout\ = \b2v_inst1|cnt\(3) $ (((\b2v_inst1|cnt\(0) & (\b2v_inst1|cnt\(1) & \b2v_inst1|cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cnt\(0),
	datab => \b2v_inst1|cnt\(1),
	datac => \b2v_inst1|cnt\(3),
	datad => \b2v_inst1|cnt\(2),
	combout => \b2v_inst1|Add0~3_combout\);

-- Location: LCCOMB_X87_Y2_N30
\b2v_inst1|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux1~2_combout\ = (!\periodos[1]~input_o\ & \periodos[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \periodos[1]~input_o\,
	datad => \periodos[0]~input_o\,
	combout => \b2v_inst1|Mux1~2_combout\);

-- Location: FF_X87_Y2_N31
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

-- Location: LCCOMB_X85_Y2_N30
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

-- Location: LCCOMB_X85_Y2_N12
\b2v_inst1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux4~0_combout\ = (\periodos[0]~input_o\) # (\periodos[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \periodos[0]~input_o\,
	datac => \periodos[1]~input_o\,
	combout => \b2v_inst1|Mux4~0_combout\);

-- Location: FF_X85_Y2_N31
\b2v_inst1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|rlj~clkctrl_outclk\,
	d => \b2v_inst1|cnt[0]~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	ena => \b2v_inst1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cnt\(0));

-- Location: LCCOMB_X86_Y2_N22
\b2v_inst1|Equal8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Equal8~2_combout\ = (\b2v_inst1|cnt\(0) & (\b2v_inst1|cnt\(1) $ (\b2v_inst1|MAX_cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cnt\(1),
	datab => \b2v_inst1|MAX_cont\(1),
	datad => \b2v_inst1|cnt\(0),
	combout => \b2v_inst1|Equal8~2_combout\);

-- Location: LCCOMB_X85_Y2_N20
\b2v_inst1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux6~0_combout\ = (\b2v_inst1|Add0~3_combout\ & (((!\b2v_inst1|Equal8~2_combout\) # (!\b2v_inst1|Equal8~1_combout\)) # (!\b2v_inst1|MAX_cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MAX_cont\(3),
	datab => \b2v_inst1|Equal8~1_combout\,
	datac => \b2v_inst1|Add0~3_combout\,
	datad => \b2v_inst1|Equal8~2_combout\,
	combout => \b2v_inst1|Mux6~0_combout\);

-- Location: FF_X85_Y2_N21
\b2v_inst1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|rlj~clkctrl_outclk\,
	d => \b2v_inst1|Mux6~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	ena => \b2v_inst1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cnt\(3));

-- Location: LCCOMB_X85_Y2_N2
\b2v_inst1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~0_combout\ = (\b2v_inst1|cnt\(0) & (\b2v_inst1|cnt\(1) & (\b2v_inst1|cnt\(2) & \b2v_inst1|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cnt\(0),
	datab => \b2v_inst1|cnt\(1),
	datac => \b2v_inst1|cnt\(2),
	datad => \b2v_inst1|cnt\(3),
	combout => \b2v_inst1|Add0~0_combout\);

-- Location: LCCOMB_X85_Y2_N0
\b2v_inst1|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~1_combout\ = \b2v_inst1|cnt\(5) $ (((\b2v_inst1|cnt\(4) & \b2v_inst1|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cnt\(4),
	datac => \b2v_inst1|cnt\(5),
	datad => \b2v_inst1|Add0~0_combout\,
	combout => \b2v_inst1|Add0~1_combout\);

-- Location: FF_X85_Y2_N1
\b2v_inst1|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|rlj~clkctrl_outclk\,
	d => \b2v_inst1|Add0~1_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	ena => \b2v_inst1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cnt\(5));

-- Location: LCCOMB_X85_Y2_N4
\b2v_inst1|Equal8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Equal8~0_combout\ = \b2v_inst1|MAX_cont\(2) $ (\b2v_inst1|cnt\(2) $ (((\b2v_inst1|cnt\(0) & \b2v_inst1|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cnt\(0),
	datab => \b2v_inst1|MAX_cont\(2),
	datac => \b2v_inst1|cnt\(2),
	datad => \b2v_inst1|cnt\(1),
	combout => \b2v_inst1|Equal8~0_combout\);

-- Location: LCCOMB_X85_Y2_N14
\b2v_inst1|Equal8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Equal8~1_combout\ = (!\b2v_inst1|Equal8~0_combout\ & ((\b2v_inst1|cnt\(4) & (\b2v_inst1|cnt\(5) & \b2v_inst1|Add0~0_combout\)) # (!\b2v_inst1|cnt\(4) & (!\b2v_inst1|cnt\(5) & !\b2v_inst1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cnt\(4),
	datab => \b2v_inst1|cnt\(5),
	datac => \b2v_inst1|Equal8~0_combout\,
	datad => \b2v_inst1|Add0~0_combout\,
	combout => \b2v_inst1|Equal8~1_combout\);

-- Location: LCCOMB_X85_Y2_N10
\b2v_inst1|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux8~0_combout\ = (\b2v_inst1|Equal8~2_combout\ & (\b2v_inst1|MAX_cont\(3) $ (!\b2v_inst1|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|MAX_cont\(3),
	datac => \b2v_inst1|Add0~3_combout\,
	datad => \b2v_inst1|Equal8~2_combout\,
	combout => \b2v_inst1|Mux8~0_combout\);

-- Location: LCCOMB_X85_Y2_N16
\b2v_inst1|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux8~1_combout\ = (\b2v_inst1|Equal8~1_combout\ & (!\b2v_inst1|Mux8~0_combout\ & (\b2v_inst1|cnt\(0) $ (\b2v_inst1|cnt\(1))))) # (!\b2v_inst1|Equal8~1_combout\ & (\b2v_inst1|cnt\(0) $ ((\b2v_inst1|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cnt\(0),
	datab => \b2v_inst1|Equal8~1_combout\,
	datac => \b2v_inst1|cnt\(1),
	datad => \b2v_inst1|Mux8~0_combout\,
	combout => \b2v_inst1|Mux8~1_combout\);

-- Location: FF_X85_Y2_N17
\b2v_inst1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|rlj~clkctrl_outclk\,
	d => \b2v_inst1|Mux8~1_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	ena => \b2v_inst1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cnt\(1));

-- Location: LCCOMB_X85_Y2_N28
\b2v_inst1|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux7~0_combout\ = (\b2v_inst1|Equal8~1_combout\ & (\b2v_inst1|Equal8~2_combout\ & (\b2v_inst1|Add0~3_combout\ $ (!\b2v_inst1|MAX_cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|Add0~3_combout\,
	datab => \b2v_inst1|MAX_cont\(3),
	datac => \b2v_inst1|Equal8~1_combout\,
	datad => \b2v_inst1|Equal8~2_combout\,
	combout => \b2v_inst1|Mux7~0_combout\);

-- Location: LCCOMB_X85_Y2_N8
\b2v_inst1|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Mux7~1_combout\ = (!\b2v_inst1|Mux7~0_combout\ & (\b2v_inst1|cnt\(2) $ (((\b2v_inst1|cnt\(0) & \b2v_inst1|cnt\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|cnt\(0),
	datab => \b2v_inst1|cnt\(1),
	datac => \b2v_inst1|cnt\(2),
	datad => \b2v_inst1|Mux7~0_combout\,
	combout => \b2v_inst1|Mux7~1_combout\);

-- Location: FF_X85_Y2_N9
\b2v_inst1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|rlj~clkctrl_outclk\,
	d => \b2v_inst1|Mux7~1_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	ena => \b2v_inst1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cnt\(2));

-- Location: LCCOMB_X85_Y2_N18
\b2v_inst1|q~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~9_combout\ = (\b2v_inst1|cnt\(1) & ((\periodos[0]~input_o\ $ (\b2v_inst1|cnt\(2))) # (!\periodos[1]~input_o\))) # (!\b2v_inst1|cnt\(1) & ((\periodos[1]~input_o\ $ (\b2v_inst1|cnt\(2))) # (!\periodos[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \periodos[0]~input_o\,
	datab => \periodos[1]~input_o\,
	datac => \b2v_inst1|cnt\(2),
	datad => \b2v_inst1|cnt\(1),
	combout => \b2v_inst1|q~9_combout\);

-- Location: LCCOMB_X85_Y2_N24
\b2v_inst1|q~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~10_combout\ = (\periodos[1]~input_o\ & ((\b2v_inst1|cnt\(2)) # ((!\b2v_inst1|q~9_combout\)))) # (!\periodos[1]~input_o\ & (((\b2v_inst1|cnt\(0)) # (\b2v_inst1|q~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \periodos[1]~input_o\,
	datab => \b2v_inst1|cnt\(2),
	datac => \b2v_inst1|cnt\(0),
	datad => \b2v_inst1|q~9_combout\,
	combout => \b2v_inst1|q~10_combout\);

-- Location: LCCOMB_X85_Y2_N26
\b2v_inst1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|Add0~2_combout\ = \b2v_inst1|cnt\(4) $ (\b2v_inst1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|cnt\(4),
	datad => \b2v_inst1|Add0~0_combout\,
	combout => \b2v_inst1|Add0~2_combout\);

-- Location: FF_X85_Y2_N27
\b2v_inst1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|rlj~clkctrl_outclk\,
	d => \b2v_inst1|Add0~2_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	ena => \b2v_inst1|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst1|cnt\(4));

-- Location: LCCOMB_X85_Y2_N6
\b2v_inst1|q~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~8_combout\ = (\b2v_inst1|cnt\(5)) # ((\b2v_inst1|cnt\(4)) # (\b2v_inst1|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|cnt\(5),
	datac => \b2v_inst1|cnt\(4),
	datad => \b2v_inst1|cnt\(3),
	combout => \b2v_inst1|q~8_combout\);

-- Location: LCCOMB_X86_Y2_N30
\b2v_inst1|q~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~11_combout\ = (\b2v_inst1|q~8_combout\) # ((\b2v_inst1|q~1_combout\ & ((\b2v_inst1|q~10_combout\))) # (!\b2v_inst1|q~1_combout\ & ((\b2v_inst1|q~9_combout\) # (!\b2v_inst1|q~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|q~1_combout\,
	datab => \b2v_inst1|q~9_combout\,
	datac => \b2v_inst1|q~8_combout\,
	datad => \b2v_inst1|q~10_combout\,
	combout => \b2v_inst1|q~11_combout\);

-- Location: LCCOMB_X86_Y2_N16
\b2v_inst1|q~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~12_combout\ = (\b2v_inst1|q~1_combout\ & (((!\b2v_inst1|q~9_combout\ & !\b2v_inst1|q~8_combout\)) # (!\b2v_inst1|q~2_combout\))) # (!\b2v_inst1|q~1_combout\ & (((\b2v_inst1|q~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|q~1_combout\,
	datab => \b2v_inst1|q~9_combout\,
	datac => \b2v_inst1|q~8_combout\,
	datad => \b2v_inst1|q~2_combout\,
	combout => \b2v_inst1|q~12_combout\);

-- Location: LCCOMB_X86_Y2_N14
\b2v_inst1|q~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~4_combout\ = (\b2v_inst1|q~8_combout\ & (((\b2v_inst1|q~12_combout\)))) # (!\b2v_inst1|q~8_combout\ & (\b2v_inst1|q~11_combout\ & ((\b2v_inst1|q~12_combout\) # (!\b2v_inst1|q~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|q~8_combout\,
	datab => \b2v_inst1|q~10_combout\,
	datac => \b2v_inst1|q~11_combout\,
	datad => \b2v_inst1|q~12_combout\,
	combout => \b2v_inst1|q~4_combout\);

-- Location: LCCOMB_X86_Y2_N28
\b2v_inst1|q~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~13_combout\ = (\b2v_inst5|altpll_component|auto_generated|locked~combout\ & !\b2v_inst1|Equal9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst5|altpll_component|auto_generated|locked~combout\,
	datad => \b2v_inst1|Equal9~0_combout\,
	combout => \b2v_inst1|q~13_combout\);

-- Location: LCCOMB_X86_Y2_N18
\b2v_inst1|q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~0_combout\ = (\b2v_inst1|Equal9~0_combout\) # (\b2v_inst1|q~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|Equal9~0_combout\,
	datad => \b2v_inst1|q~13_combout\,
	combout => \b2v_inst1|q~0_combout\);

-- Location: FF_X86_Y2_N15
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

-- Location: LCCOMB_X86_Y2_N20
\b2v_inst1|q~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~1_combout\ = (!\b2v_inst1|q~13_combout\ & ((\b2v_inst1|Equal9~0_combout\ & ((\b2v_inst|rlj~q\))) # (!\b2v_inst1|Equal9~0_combout\ & (\b2v_inst1|q~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|q~1_combout\,
	datab => \b2v_inst1|Equal9~0_combout\,
	datac => \b2v_inst|rlj~q\,
	datad => \b2v_inst1|q~13_combout\,
	combout => \b2v_inst1|q~1_combout\);

-- Location: LCCOMB_X86_Y2_N26
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

-- Location: LCCOMB_X86_Y2_N24
\b2v_inst1|q~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|q~2_combout\ = (!\b2v_inst1|q~13_combout\ & ((\b2v_inst1|Equal9~0_combout\ & (\b2v_inst|rlj~q\)) # (!\b2v_inst1|Equal9~0_combout\ & ((\b2v_inst1|q~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|rlj~q\,
	datab => \b2v_inst1|Equal9~0_combout\,
	datac => \b2v_inst1|q~3_combout\,
	datad => \b2v_inst1|q~13_combout\,
	combout => \b2v_inst1|q~2_combout\);

-- Location: FF_X86_Y24_N29
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

-- Location: FF_X85_Y24_N13
\b2v_inst|cuenta_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~2_combout\,
	sload => VCC,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(1));

-- Location: FF_X85_Y24_N19
\b2v_inst|cuenta_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~4_combout\,
	sload => VCC,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(2));

-- Location: FF_X85_Y24_N17
\b2v_inst|cuenta_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~6_combout\,
	sload => VCC,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(3));

-- Location: FF_X85_Y24_N5
\b2v_inst|cuenta_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~8_combout\,
	sload => VCC,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(4));

-- Location: FF_X85_Y24_N11
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

-- Location: LCCOMB_X86_Y24_N14
\b2v_inst|cuenta_o[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|cuenta_o[6]~feeder_combout\ = \b2v_inst|Add4~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add4~12_combout\,
	combout => \b2v_inst|cuenta_o[6]~feeder_combout\);

-- Location: FF_X86_Y24_N15
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

-- Location: LCCOMB_X86_Y24_N20
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

-- Location: FF_X86_Y24_N21
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

-- Location: FF_X86_Y24_N3
\b2v_inst|cuenta_o[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~16_combout\,
	sload => VCC,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(8));

-- Location: FF_X85_Y24_N9
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

-- Location: FF_X85_Y24_N15
\b2v_inst|cuenta_o[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add4~20_combout\,
	sload => VCC,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|cuenta_o\(10));

-- Location: LCCOMB_X88_Y23_N0
\b2v_inst|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~0_combout\ = (\b2v_inst|indice~6_combout\ & (\F_in[0]~input_o\ $ (GND))) # (!\b2v_inst|indice~6_combout\ & (!\F_in[0]~input_o\ & VCC))
-- \b2v_inst|Add3~1\ = CARRY((\b2v_inst|indice~6_combout\ & !\F_in[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~6_combout\,
	datab => \F_in[0]~input_o\,
	datad => VCC,
	combout => \b2v_inst|Add3~0_combout\,
	cout => \b2v_inst|Add3~1\);

-- Location: FF_X90_Y23_N3
\b2v_inst|indice_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~0_combout\,
	sload => VCC,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(0));

-- Location: LCCOMB_X88_Y24_N30
\b2v_inst|indice~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~12_combout\ = (!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|indice~12_combout\);

-- Location: LCCOMB_X84_Y24_N12
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

-- Location: LCCOMB_X88_Y25_N12
\b2v_inst|indice~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~8_combout\ = (\b2v_inst|indice\(2) & (\b2v_inst|LessThan0~2_combout\ & !\b2v_inst|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(2),
	datab => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|indice~8_combout\);

-- Location: LCCOMB_X88_Y23_N2
\b2v_inst|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~2_combout\ = (\b2v_inst|Add0~0_combout\ & ((\b2v_inst|indice~7_combout\ & (\b2v_inst|Add3~1\ & VCC)) # (!\b2v_inst|indice~7_combout\ & (!\b2v_inst|Add3~1\)))) # (!\b2v_inst|Add0~0_combout\ & ((\b2v_inst|indice~7_combout\ & 
-- (!\b2v_inst|Add3~1\)) # (!\b2v_inst|indice~7_combout\ & ((\b2v_inst|Add3~1\) # (GND)))))
-- \b2v_inst|Add3~3\ = CARRY((\b2v_inst|Add0~0_combout\ & (!\b2v_inst|indice~7_combout\ & !\b2v_inst|Add3~1\)) # (!\b2v_inst|Add0~0_combout\ & ((!\b2v_inst|Add3~1\) # (!\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~0_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~1\,
	combout => \b2v_inst|Add3~2_combout\,
	cout => \b2v_inst|Add3~3\);

-- Location: LCCOMB_X88_Y23_N4
\b2v_inst|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~4_combout\ = ((\b2v_inst|Add0~1_combout\ $ (\b2v_inst|indice~8_combout\ $ (!\b2v_inst|Add3~3\)))) # (GND)
-- \b2v_inst|Add3~5\ = CARRY((\b2v_inst|Add0~1_combout\ & ((\b2v_inst|indice~8_combout\) # (!\b2v_inst|Add3~3\))) # (!\b2v_inst|Add0~1_combout\ & (\b2v_inst|indice~8_combout\ & !\b2v_inst|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~1_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~3\,
	combout => \b2v_inst|Add3~4_combout\,
	cout => \b2v_inst|Add3~5\);

-- Location: LCCOMB_X88_Y23_N6
\b2v_inst|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~6_combout\ = (\b2v_inst|Add0~2_combout\ & ((\b2v_inst|indice~9_combout\ & (\b2v_inst|Add3~5\ & VCC)) # (!\b2v_inst|indice~9_combout\ & (!\b2v_inst|Add3~5\)))) # (!\b2v_inst|Add0~2_combout\ & ((\b2v_inst|indice~9_combout\ & 
-- (!\b2v_inst|Add3~5\)) # (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|Add3~5\) # (GND)))))
-- \b2v_inst|Add3~7\ = CARRY((\b2v_inst|Add0~2_combout\ & (!\b2v_inst|indice~9_combout\ & !\b2v_inst|Add3~5\)) # (!\b2v_inst|Add0~2_combout\ & ((!\b2v_inst|Add3~5\) # (!\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~2_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~5\,
	combout => \b2v_inst|Add3~6_combout\,
	cout => \b2v_inst|Add3~7\);

-- Location: FF_X88_Y23_N5
\b2v_inst|indice[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~6_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(3));

-- Location: LCCOMB_X87_Y24_N6
\b2v_inst|indice~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~9_combout\ = (\b2v_inst|LessThan0~2_combout\ & (\b2v_inst|indice\(3) & !\b2v_inst|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan0~2_combout\,
	datab => \b2v_inst|indice\(3),
	datac => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|indice~9_combout\);

-- Location: LCCOMB_X88_Y23_N8
\b2v_inst|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~8_combout\ = ((\b2v_inst|indice~10_combout\ $ (\b2v_inst|Add0~4_combout\ $ (!\b2v_inst|Add3~7\)))) # (GND)
-- \b2v_inst|Add3~9\ = CARRY((\b2v_inst|indice~10_combout\ & ((\b2v_inst|Add0~4_combout\) # (!\b2v_inst|Add3~7\))) # (!\b2v_inst|indice~10_combout\ & (\b2v_inst|Add0~4_combout\ & !\b2v_inst|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|Add0~4_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~7\,
	combout => \b2v_inst|Add3~8_combout\,
	cout => \b2v_inst|Add3~9\);

-- Location: LCCOMB_X88_Y23_N10
\b2v_inst|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~10_combout\ = (\b2v_inst|Add0~5_combout\ & ((\b2v_inst|indice~11_combout\ & (\b2v_inst|Add3~9\ & VCC)) # (!\b2v_inst|indice~11_combout\ & (!\b2v_inst|Add3~9\)))) # (!\b2v_inst|Add0~5_combout\ & ((\b2v_inst|indice~11_combout\ & 
-- (!\b2v_inst|Add3~9\)) # (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|Add3~9\) # (GND)))))
-- \b2v_inst|Add3~11\ = CARRY((\b2v_inst|Add0~5_combout\ & (!\b2v_inst|indice~11_combout\ & !\b2v_inst|Add3~9\)) # (!\b2v_inst|Add0~5_combout\ & ((!\b2v_inst|Add3~9\) # (!\b2v_inst|indice~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add0~5_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~9\,
	combout => \b2v_inst|Add3~10_combout\,
	cout => \b2v_inst|Add3~11\);

-- Location: FF_X88_Y23_N17
\b2v_inst|indice[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~10_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(5));

-- Location: LCCOMB_X88_Y25_N6
\b2v_inst|indice~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~11_combout\ = (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|LessThan0~2_combout\ & \b2v_inst|indice\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|indice\(5),
	combout => \b2v_inst|indice~11_combout\);

-- Location: LCCOMB_X88_Y23_N12
\b2v_inst|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~12_combout\ = (\b2v_inst|Add3~11\ & (\b2v_inst|indice\(6) & (\b2v_inst|indice~12_combout\ & VCC))) # (!\b2v_inst|Add3~11\ & ((((\b2v_inst|indice\(6) & \b2v_inst|indice~12_combout\)))))
-- \b2v_inst|Add3~13\ = CARRY((\b2v_inst|indice\(6) & (\b2v_inst|indice~12_combout\ & !\b2v_inst|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(6),
	datab => \b2v_inst|indice~12_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~11\,
	combout => \b2v_inst|Add3~12_combout\,
	cout => \b2v_inst|Add3~13\);

-- Location: LCCOMB_X88_Y23_N14
\b2v_inst|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~14_combout\ = (\b2v_inst|Add3~13\ & (((!\b2v_inst|indice\(7))) # (!\b2v_inst|indice~12_combout\))) # (!\b2v_inst|Add3~13\ & (((\b2v_inst|indice~12_combout\ & \b2v_inst|indice\(7))) # (GND)))
-- \b2v_inst|Add3~15\ = CARRY(((!\b2v_inst|Add3~13\) # (!\b2v_inst|indice\(7))) # (!\b2v_inst|indice~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|indice\(7),
	datad => VCC,
	cin => \b2v_inst|Add3~13\,
	combout => \b2v_inst|Add3~14_combout\,
	cout => \b2v_inst|Add3~15\);

-- Location: FF_X88_Y23_N1
\b2v_inst|indice[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~14_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(7));

-- Location: LCCOMB_X88_Y23_N16
\b2v_inst|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~16_combout\ = (\b2v_inst|Add3~15\ & (\b2v_inst|indice\(8) & (\b2v_inst|indice~12_combout\ & VCC))) # (!\b2v_inst|Add3~15\ & ((((\b2v_inst|indice\(8) & \b2v_inst|indice~12_combout\)))))
-- \b2v_inst|Add3~17\ = CARRY((\b2v_inst|indice\(8) & (\b2v_inst|indice~12_combout\ & !\b2v_inst|Add3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(8),
	datab => \b2v_inst|indice~12_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~15\,
	combout => \b2v_inst|Add3~16_combout\,
	cout => \b2v_inst|Add3~17\);

-- Location: LCCOMB_X88_Y23_N18
\b2v_inst|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~18_combout\ = (\b2v_inst|indice~14_combout\ & (!\b2v_inst|Add3~17\)) # (!\b2v_inst|indice~14_combout\ & ((\b2v_inst|Add3~17\) # (GND)))
-- \b2v_inst|Add3~19\ = CARRY((!\b2v_inst|Add3~17\) # (!\b2v_inst|indice~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~14_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~17\,
	combout => \b2v_inst|Add3~18_combout\,
	cout => \b2v_inst|Add3~19\);

-- Location: LCCOMB_X88_Y23_N20
\b2v_inst|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~20_combout\ = (\b2v_inst|Add3~19\ & (\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(10) & VCC))) # (!\b2v_inst|Add3~19\ & ((((\b2v_inst|indice~12_combout\ & \b2v_inst|indice\(10))))))
-- \b2v_inst|Add3~21\ = CARRY((\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(10) & !\b2v_inst|Add3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|indice\(10),
	datad => VCC,
	cin => \b2v_inst|Add3~19\,
	combout => \b2v_inst|Add3~20_combout\,
	cout => \b2v_inst|Add3~21\);

-- Location: FF_X88_Y23_N9
\b2v_inst|indice[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~20_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(10));

-- Location: LCCOMB_X88_Y23_N22
\b2v_inst|Add3~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~22_combout\ = (\b2v_inst|Add3~21\ & (((!\b2v_inst|indice~12_combout\)) # (!\b2v_inst|indice\(11)))) # (!\b2v_inst|Add3~21\ & (((\b2v_inst|indice\(11) & \b2v_inst|indice~12_combout\)) # (GND)))
-- \b2v_inst|Add3~23\ = CARRY(((!\b2v_inst|Add3~21\) # (!\b2v_inst|indice~12_combout\)) # (!\b2v_inst|indice\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(11),
	datab => \b2v_inst|indice~12_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~21\,
	combout => \b2v_inst|Add3~22_combout\,
	cout => \b2v_inst|Add3~23\);

-- Location: LCCOMB_X88_Y23_N24
\b2v_inst|Add3~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~24_combout\ = (\b2v_inst|Add3~23\ & (\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(12) & VCC))) # (!\b2v_inst|Add3~23\ & ((((\b2v_inst|indice~12_combout\ & \b2v_inst|indice\(12))))))
-- \b2v_inst|Add3~25\ = CARRY((\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(12) & !\b2v_inst|Add3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|indice\(12),
	datad => VCC,
	cin => \b2v_inst|Add3~23\,
	combout => \b2v_inst|Add3~24_combout\,
	cout => \b2v_inst|Add3~25\);

-- Location: FF_X88_Y23_N25
\b2v_inst|indice[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~24_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(12));

-- Location: LCCOMB_X88_Y23_N26
\b2v_inst|Add3~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~26_combout\ = (\b2v_inst|Add3~25\ & (((!\b2v_inst|indice~12_combout\)) # (!\b2v_inst|indice\(13)))) # (!\b2v_inst|Add3~25\ & (((\b2v_inst|indice\(13) & \b2v_inst|indice~12_combout\)) # (GND)))
-- \b2v_inst|Add3~27\ = CARRY(((!\b2v_inst|Add3~25\) # (!\b2v_inst|indice~12_combout\)) # (!\b2v_inst|indice\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(13),
	datab => \b2v_inst|indice~12_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~25\,
	combout => \b2v_inst|Add3~26_combout\,
	cout => \b2v_inst|Add3~27\);

-- Location: FF_X88_Y23_N27
\b2v_inst|indice[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~26_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(13));

-- Location: FF_X88_Y23_N23
\b2v_inst|indice[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~22_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(11));

-- Location: LCCOMB_X89_Y23_N18
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

-- Location: LCCOMB_X88_Y23_N28
\b2v_inst|Add3~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~28_combout\ = (\b2v_inst|Add3~27\ & (\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(14) & VCC))) # (!\b2v_inst|Add3~27\ & ((((\b2v_inst|indice~12_combout\ & \b2v_inst|indice\(14))))))
-- \b2v_inst|Add3~29\ = CARRY((\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(14) & !\b2v_inst|Add3~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|indice\(14),
	datad => VCC,
	cin => \b2v_inst|Add3~27\,
	combout => \b2v_inst|Add3~28_combout\,
	cout => \b2v_inst|Add3~29\);

-- Location: FF_X88_Y23_N29
\b2v_inst|indice[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~28_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(14));

-- Location: LCCOMB_X88_Y23_N30
\b2v_inst|Add3~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~30_combout\ = (\b2v_inst|Add3~29\ & (((!\b2v_inst|indice~12_combout\)) # (!\b2v_inst|indice\(15)))) # (!\b2v_inst|Add3~29\ & (((\b2v_inst|indice\(15) & \b2v_inst|indice~12_combout\)) # (GND)))
-- \b2v_inst|Add3~31\ = CARRY(((!\b2v_inst|Add3~29\) # (!\b2v_inst|indice~12_combout\)) # (!\b2v_inst|indice\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(15),
	datab => \b2v_inst|indice~12_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~29\,
	combout => \b2v_inst|Add3~30_combout\,
	cout => \b2v_inst|Add3~31\);

-- Location: LCCOMB_X88_Y22_N0
\b2v_inst|Add3~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~32_combout\ = (\b2v_inst|Add3~31\ & (\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(16) & VCC))) # (!\b2v_inst|Add3~31\ & ((((\b2v_inst|indice~12_combout\ & \b2v_inst|indice\(16))))))
-- \b2v_inst|Add3~33\ = CARRY((\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(16) & !\b2v_inst|Add3~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|indice\(16),
	datad => VCC,
	cin => \b2v_inst|Add3~31\,
	combout => \b2v_inst|Add3~32_combout\,
	cout => \b2v_inst|Add3~33\);

-- Location: FF_X88_Y22_N1
\b2v_inst|indice[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~32_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(16));

-- Location: LCCOMB_X88_Y22_N2
\b2v_inst|Add3~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~34_combout\ = (\b2v_inst|Add3~33\ & (((!\b2v_inst|indice\(17))) # (!\b2v_inst|indice~12_combout\))) # (!\b2v_inst|Add3~33\ & (((\b2v_inst|indice~12_combout\ & \b2v_inst|indice\(17))) # (GND)))
-- \b2v_inst|Add3~35\ = CARRY(((!\b2v_inst|Add3~33\) # (!\b2v_inst|indice\(17))) # (!\b2v_inst|indice~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|indice\(17),
	datad => VCC,
	cin => \b2v_inst|Add3~33\,
	combout => \b2v_inst|Add3~34_combout\,
	cout => \b2v_inst|Add3~35\);

-- Location: FF_X88_Y22_N3
\b2v_inst|indice[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~34_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(17));

-- Location: LCCOMB_X88_Y22_N4
\b2v_inst|Add3~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~36_combout\ = (\b2v_inst|Add3~35\ & (\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(18) & VCC))) # (!\b2v_inst|Add3~35\ & ((((\b2v_inst|indice~12_combout\ & \b2v_inst|indice\(18))))))
-- \b2v_inst|Add3~37\ = CARRY((\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(18) & !\b2v_inst|Add3~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|indice\(18),
	datad => VCC,
	cin => \b2v_inst|Add3~35\,
	combout => \b2v_inst|Add3~36_combout\,
	cout => \b2v_inst|Add3~37\);

-- Location: FF_X88_Y22_N5
\b2v_inst|indice[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~36_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(18));

-- Location: LCCOMB_X88_Y22_N12
\b2v_inst|Add3~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~44_combout\ = (\b2v_inst|Add3~43\ & (\b2v_inst|indice\(22) & (\b2v_inst|indice~12_combout\ & VCC))) # (!\b2v_inst|Add3~43\ & ((((\b2v_inst|indice\(22) & \b2v_inst|indice~12_combout\)))))
-- \b2v_inst|Add3~45\ = CARRY((\b2v_inst|indice\(22) & (\b2v_inst|indice~12_combout\ & !\b2v_inst|Add3~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(22),
	datab => \b2v_inst|indice~12_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~43\,
	combout => \b2v_inst|Add3~44_combout\,
	cout => \b2v_inst|Add3~45\);

-- Location: LCCOMB_X88_Y22_N16
\b2v_inst|Add3~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~48_combout\ = (\b2v_inst|Add3~47\ & (\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(24) & VCC))) # (!\b2v_inst|Add3~47\ & ((((\b2v_inst|indice~12_combout\ & \b2v_inst|indice\(24))))))
-- \b2v_inst|Add3~49\ = CARRY((\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(24) & !\b2v_inst|Add3~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|indice\(24),
	datad => VCC,
	cin => \b2v_inst|Add3~47\,
	combout => \b2v_inst|Add3~48_combout\,
	cout => \b2v_inst|Add3~49\);

-- Location: FF_X88_Y22_N17
\b2v_inst|indice[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~48_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(24));

-- Location: LCCOMB_X88_Y22_N18
\b2v_inst|Add3~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~50_combout\ = (\b2v_inst|Add3~49\ & (((!\b2v_inst|indice~12_combout\)) # (!\b2v_inst|indice\(25)))) # (!\b2v_inst|Add3~49\ & (((\b2v_inst|indice\(25) & \b2v_inst|indice~12_combout\)) # (GND)))
-- \b2v_inst|Add3~51\ = CARRY(((!\b2v_inst|Add3~49\) # (!\b2v_inst|indice~12_combout\)) # (!\b2v_inst|indice\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(25),
	datab => \b2v_inst|indice~12_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~49\,
	combout => \b2v_inst|Add3~50_combout\,
	cout => \b2v_inst|Add3~51\);

-- Location: LCCOMB_X88_Y22_N20
\b2v_inst|Add3~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~52_combout\ = (\b2v_inst|Add3~51\ & (\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(26) & VCC))) # (!\b2v_inst|Add3~51\ & ((((\b2v_inst|indice~12_combout\ & \b2v_inst|indice\(26))))))
-- \b2v_inst|Add3~53\ = CARRY((\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(26) & !\b2v_inst|Add3~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|indice\(26),
	datad => VCC,
	cin => \b2v_inst|Add3~51\,
	combout => \b2v_inst|Add3~52_combout\,
	cout => \b2v_inst|Add3~53\);

-- Location: FF_X88_Y22_N21
\b2v_inst|indice[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~52_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(26));

-- Location: LCCOMB_X88_Y22_N22
\b2v_inst|Add3~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~54_combout\ = (\b2v_inst|Add3~53\ & (((!\b2v_inst|indice~12_combout\)) # (!\b2v_inst|indice\(27)))) # (!\b2v_inst|Add3~53\ & (((\b2v_inst|indice\(27) & \b2v_inst|indice~12_combout\)) # (GND)))
-- \b2v_inst|Add3~55\ = CARRY(((!\b2v_inst|Add3~53\) # (!\b2v_inst|indice~12_combout\)) # (!\b2v_inst|indice\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(27),
	datab => \b2v_inst|indice~12_combout\,
	datad => VCC,
	cin => \b2v_inst|Add3~53\,
	combout => \b2v_inst|Add3~54_combout\,
	cout => \b2v_inst|Add3~55\);

-- Location: LCCOMB_X88_Y22_N24
\b2v_inst|Add3~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~56_combout\ = (\b2v_inst|Add3~55\ & (\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(28) & VCC))) # (!\b2v_inst|Add3~55\ & ((((\b2v_inst|indice~12_combout\ & \b2v_inst|indice\(28))))))
-- \b2v_inst|Add3~57\ = CARRY((\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(28) & !\b2v_inst|Add3~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|indice\(28),
	datad => VCC,
	cin => \b2v_inst|Add3~55\,
	combout => \b2v_inst|Add3~56_combout\,
	cout => \b2v_inst|Add3~57\);

-- Location: FF_X88_Y22_N25
\b2v_inst|indice[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~56_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(28));

-- Location: LCCOMB_X88_Y22_N26
\b2v_inst|Add3~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~58_combout\ = (\b2v_inst|Add3~57\ & (((!\b2v_inst|indice\(29))) # (!\b2v_inst|indice~12_combout\))) # (!\b2v_inst|Add3~57\ & (((\b2v_inst|indice~12_combout\ & \b2v_inst|indice\(29))) # (GND)))
-- \b2v_inst|Add3~59\ = CARRY(((!\b2v_inst|Add3~57\) # (!\b2v_inst|indice\(29))) # (!\b2v_inst|indice~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|indice\(29),
	datad => VCC,
	cin => \b2v_inst|Add3~57\,
	combout => \b2v_inst|Add3~58_combout\,
	cout => \b2v_inst|Add3~59\);

-- Location: FF_X88_Y22_N27
\b2v_inst|indice[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~58_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(29));

-- Location: FF_X88_Y22_N23
\b2v_inst|indice[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~54_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(27));

-- Location: LCCOMB_X87_Y22_N4
\b2v_inst|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan6~1_combout\ = (!\b2v_inst|indice\(26) & (!\b2v_inst|indice\(28) & (!\b2v_inst|indice\(29) & !\b2v_inst|indice\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(26),
	datab => \b2v_inst|indice\(28),
	datac => \b2v_inst|indice\(29),
	datad => \b2v_inst|indice\(27),
	combout => \b2v_inst|LessThan6~1_combout\);

-- Location: FF_X88_Y22_N13
\b2v_inst|indice[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~44_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(22));

-- Location: FF_X88_Y22_N19
\b2v_inst|indice[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~50_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(25));

-- Location: LCCOMB_X88_Y24_N18
\b2v_inst|LessThan6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan6~2_combout\ = (!\b2v_inst|indice\(23) & (!\b2v_inst|indice\(24) & (!\b2v_inst|indice\(22) & !\b2v_inst|indice\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(23),
	datab => \b2v_inst|indice\(24),
	datac => \b2v_inst|indice\(22),
	datad => \b2v_inst|indice\(25),
	combout => \b2v_inst|LessThan6~2_combout\);

-- Location: LCCOMB_X89_Y24_N12
\b2v_inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~1_combout\ = (\b2v_inst|LessThan6~3_combout\ & (!\b2v_inst|LessThan0~0_combout\ & (\b2v_inst|LessThan6~1_combout\ & \b2v_inst|LessThan6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan6~3_combout\,
	datab => \b2v_inst|LessThan0~0_combout\,
	datac => \b2v_inst|LessThan6~1_combout\,
	datad => \b2v_inst|LessThan6~2_combout\,
	combout => \b2v_inst|LessThan0~1_combout\);

-- Location: FF_X88_Y23_N31
\b2v_inst|indice[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~30_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(15));

-- Location: LCCOMB_X89_Y22_N0
\b2v_inst|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan6~0_combout\ = (!\b2v_inst|indice\(17) & (!\b2v_inst|indice\(15) & (!\b2v_inst|indice\(16) & !\b2v_inst|indice\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(17),
	datab => \b2v_inst|indice\(15),
	datac => \b2v_inst|indice\(16),
	datad => \b2v_inst|indice\(14),
	combout => \b2v_inst|LessThan6~0_combout\);

-- Location: LCCOMB_X88_Y22_N28
\b2v_inst|Add3~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add3~60_combout\ = (\b2v_inst|Add3~59\ & (\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(30) & VCC))) # (!\b2v_inst|Add3~59\ & ((((\b2v_inst|indice~12_combout\ & \b2v_inst|indice\(30))))))
-- \b2v_inst|Add3~61\ = CARRY((\b2v_inst|indice~12_combout\ & (\b2v_inst|indice\(30) & !\b2v_inst|Add3~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|indice\(30),
	datad => VCC,
	cin => \b2v_inst|Add3~59\,
	combout => \b2v_inst|Add3~60_combout\,
	cout => \b2v_inst|Add3~61\);

-- Location: FF_X88_Y22_N29
\b2v_inst|indice[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~60_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(30));

-- Location: LCCOMB_X89_Y24_N2
\b2v_inst|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan0~2_combout\ = (\b2v_inst|indice\(31)) # ((\b2v_inst|LessThan0~1_combout\ & (\b2v_inst|LessThan6~0_combout\ & !\b2v_inst|indice\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(31),
	datab => \b2v_inst|LessThan0~1_combout\,
	datac => \b2v_inst|LessThan6~0_combout\,
	datad => \b2v_inst|indice\(30),
	combout => \b2v_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X87_Y24_N10
\b2v_inst|indice~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~7_combout\ = (\b2v_inst|indice\(1) & (!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(1),
	datac => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|indice~7_combout\);

-- Location: LCCOMB_X88_Y24_N16
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

-- Location: FF_X88_Y24_N17
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

-- Location: LCCOMB_X87_Y24_N24
\b2v_inst|indice_o[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice_o[2]~feeder_combout\ = \b2v_inst|Add3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add3~4_combout\,
	combout => \b2v_inst|indice_o[2]~feeder_combout\);

-- Location: FF_X87_Y24_N25
\b2v_inst|indice_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|indice_o[2]~feeder_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(2));

-- Location: LCCOMB_X89_Y19_N20
\b2v_inst|indice_o[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice_o[3]~feeder_combout\ = \b2v_inst|Add3~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add3~6_combout\,
	combout => \b2v_inst|indice_o[3]~feeder_combout\);

-- Location: FF_X89_Y19_N21
\b2v_inst|indice_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|indice_o[3]~feeder_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(3));

-- Location: FF_X89_Y19_N19
\b2v_inst|indice_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~8_combout\,
	sload => VCC,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(4));

-- Location: LCCOMB_X90_Y23_N24
\b2v_inst|indice_o[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice_o[5]~feeder_combout\ = \b2v_inst|Add3~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add3~10_combout\,
	combout => \b2v_inst|indice_o[5]~feeder_combout\);

-- Location: FF_X90_Y23_N25
\b2v_inst|indice_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|indice_o[5]~feeder_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(5));

-- Location: FF_X90_Y23_N27
\b2v_inst|indice_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~12_combout\,
	sload => VCC,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(6));

-- Location: LCCOMB_X90_Y23_N4
\b2v_inst|indice_o[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice_o[7]~feeder_combout\ = \b2v_inst|Add3~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add3~14_combout\,
	combout => \b2v_inst|indice_o[7]~feeder_combout\);

-- Location: FF_X90_Y23_N5
\b2v_inst|indice_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|indice_o[7]~feeder_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(7));

-- Location: FF_X89_Y23_N11
\b2v_inst|indice_o[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~16_combout\,
	sload => VCC,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(8));

-- Location: FF_X88_Y23_N19
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

-- Location: FF_X88_Y23_N21
\b2v_inst|indice_o[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~20_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice_o\(10));

-- Location: LCCOMB_X88_Y24_N4
\b2v_inst|indice~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~17_combout\ = (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|indice\(7) & \b2v_inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|indice\(7),
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|indice~17_combout\);

-- Location: FF_X88_Y23_N13
\b2v_inst|indice[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~12_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(6));

-- Location: LCCOMB_X91_Y25_N28
\b2v_inst|indice~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~16_combout\ = (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|indice\(6) & \b2v_inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|indice\(6),
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|indice~16_combout\);

-- Location: LCCOMB_X90_Y22_N14
\b2v_inst|Mux21~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~13_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~10_combout\ & (!\b2v_inst|indice~9_combout\)) # (!\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~9_combout\ & !\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux21~13_combout\);

-- Location: LCCOMB_X90_Y22_N16
\b2v_inst|Mux21~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~14_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~9_combout\) # (\b2v_inst|indice~10_combout\ $ (\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~9_combout\ $ 
-- (((\b2v_inst|indice~10_combout\ & !\b2v_inst|indice~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux21~14_combout\);

-- Location: LCCOMB_X90_Y22_N18
\b2v_inst|Mux21~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~15_combout\ = (\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~8_combout\)) # (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~8_combout\ & (\b2v_inst|Mux21~13_combout\)) # (!\b2v_inst|indice~8_combout\ & 
-- ((\b2v_inst|Mux21~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|Mux21~13_combout\,
	datad => \b2v_inst|Mux21~14_combout\,
	combout => \b2v_inst|Mux21~15_combout\);

-- Location: LCCOMB_X90_Y22_N8
\b2v_inst|Mux21~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~16_combout\ = (\b2v_inst|indice~9_combout\ & (((\b2v_inst|indice~10_combout\ & \b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~17_combout\))) # (!\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~10_combout\ $ 
-- (((\b2v_inst|indice~17_combout\ & \b2v_inst|indice~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux21~16_combout\);

-- Location: LCCOMB_X90_Y22_N12
\b2v_inst|Mux21~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~12_combout\ = (\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~10_combout\ $ (!\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~10_combout\ & 
-- ((\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux21~12_combout\);

-- Location: LCCOMB_X90_Y22_N30
\b2v_inst|Mux21~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~17_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|Mux21~15_combout\ & (\b2v_inst|Mux21~16_combout\)) # (!\b2v_inst|Mux21~15_combout\ & ((!\b2v_inst|Mux21~12_combout\))))) # (!\b2v_inst|indice~11_combout\ & 
-- (\b2v_inst|Mux21~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|Mux21~15_combout\,
	datac => \b2v_inst|Mux21~16_combout\,
	datad => \b2v_inst|Mux21~12_combout\,
	combout => \b2v_inst|Mux21~17_combout\);

-- Location: FF_X88_Y23_N3
\b2v_inst|indice[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(0));

-- Location: LCCOMB_X88_Y24_N24
\b2v_inst|indice~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~6_combout\ = (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|indice\(0) & \b2v_inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|indice\(0),
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|indice~6_combout\);

-- Location: LCCOMB_X90_Y21_N4
\b2v_inst|Mux21~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~18_combout\ = (\b2v_inst|indice~7_combout\ & ((\b2v_inst|Mux21~11_combout\) # ((\b2v_inst|indice~6_combout\)))) # (!\b2v_inst|indice~7_combout\ & (((\b2v_inst|Mux21~17_combout\ & !\b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux21~11_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|Mux21~17_combout\,
	datad => \b2v_inst|indice~6_combout\,
	combout => \b2v_inst|Mux21~18_combout\);

-- Location: LCCOMB_X87_Y20_N28
\b2v_inst|Mux21~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~2_combout\ = (\b2v_inst|indice~16_combout\ & (((\b2v_inst|indice~9_combout\)) # (!\b2v_inst|indice~17_combout\))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~17_combout\ & ((!\b2v_inst|indice~11_combout\))) # 
-- (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux21~2_combout\);

-- Location: LCCOMB_X87_Y20_N26
\b2v_inst|Mux21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~1_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~11_combout\ & ((!\b2v_inst|indice~17_combout\))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux21~1_combout\);

-- Location: LCCOMB_X87_Y20_N18
\b2v_inst|Mux21~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~3_combout\ = (\b2v_inst|indice~10_combout\ & (((\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~8_combout\ & ((!\b2v_inst|Mux21~1_combout\))) # (!\b2v_inst|indice~8_combout\ & 
-- (\b2v_inst|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|Mux21~2_combout\,
	datac => \b2v_inst|Mux21~1_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux21~3_combout\);

-- Location: FF_X91_Y23_N17
\b2v_inst|indice[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~8_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(4));

-- Location: LCCOMB_X88_Y24_N12
\b2v_inst|indice~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~10_combout\ = (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|indice\(4) & \b2v_inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|indice\(4),
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|indice~10_combout\);

-- Location: LCCOMB_X87_Y20_N24
\b2v_inst|Mux21~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~4_combout\ = (\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~9_combout\ & (((\b2v_inst|indice~17_combout\) # (\b2v_inst|indice~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux21~4_combout\);

-- Location: LCCOMB_X87_Y20_N6
\b2v_inst|Mux21~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~5_combout\ = (\b2v_inst|Mux21~3_combout\ & (((\b2v_inst|Mux21~4_combout\) # (!\b2v_inst|indice~10_combout\)))) # (!\b2v_inst|Mux21~3_combout\ & (\b2v_inst|Mux21~0_combout\ & (\b2v_inst|indice~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux21~0_combout\,
	datab => \b2v_inst|Mux21~3_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|Mux21~4_combout\,
	combout => \b2v_inst|Mux21~5_combout\);

-- Location: LCCOMB_X92_Y20_N4
\b2v_inst|Mux21~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~23_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~17_combout\) # ((!\b2v_inst|indice~8_combout\) # (!\b2v_inst|indice~9_combout\)))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\ & 
-- (\b2v_inst|indice~17_combout\ $ (\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux21~23_combout\);

-- Location: LCCOMB_X92_Y20_N24
\b2v_inst|Mux21~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~19_combout\ = (\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~11_combout\ $ (\b2v_inst|indice~9_combout\)))) # (!\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\ 
-- $ (\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux21~19_combout\);

-- Location: LCCOMB_X92_Y20_N6
\b2v_inst|Mux21~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~24_combout\ = (\b2v_inst|Mux21~22_combout\ & (((!\b2v_inst|Mux21~23_combout\)) # (!\b2v_inst|indice~10_combout\))) # (!\b2v_inst|Mux21~22_combout\ & (\b2v_inst|indice~10_combout\ & ((!\b2v_inst|Mux21~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux21~22_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|Mux21~23_combout\,
	datad => \b2v_inst|Mux21~19_combout\,
	combout => \b2v_inst|Mux21~24_combout\);

-- Location: LCCOMB_X91_Y20_N28
\b2v_inst|Mux21~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux21~25_combout\ = (\b2v_inst|indice~6_combout\ & ((\b2v_inst|Mux21~18_combout\ & ((\b2v_inst|Mux21~24_combout\))) # (!\b2v_inst|Mux21~18_combout\ & (\b2v_inst|Mux21~5_combout\)))) # (!\b2v_inst|indice~6_combout\ & 
-- (\b2v_inst|Mux21~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~6_combout\,
	datab => \b2v_inst|Mux21~18_combout\,
	datac => \b2v_inst|Mux21~5_combout\,
	datad => \b2v_inst|Mux21~24_combout\,
	combout => \b2v_inst|Mux21~25_combout\);

-- Location: LCCOMB_X88_Y22_N30
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

-- Location: FF_X88_Y22_N31
\b2v_inst|indice[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|Add3~62_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(31));

-- Location: LCCOMB_X89_Y24_N22
\b2v_inst|indice~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~15_combout\ = (\b2v_inst|indice\(31) & !\b2v_inst|LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|indice\(31),
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|indice~15_combout\);

-- Location: FF_X89_Y23_N21
\b2v_inst|indice[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|Add3~16_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(8));

-- Location: LCCOMB_X89_Y24_N20
\b2v_inst|salida1[7]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[7]~47_combout\ = (\b2v_inst|LessThan2~0_combout\) # (((!\b2v_inst|indice\(8) & !\b2v_inst|LessThan0~0_combout\)) # (!\b2v_inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|indice\(8),
	datac => \b2v_inst|LessThan0~0_combout\,
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|salida1[7]~47_combout\);

-- Location: LCCOMB_X89_Y24_N24
\b2v_inst|salida1[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[7]~12_combout\ = (\b2v_inst|LessThan2~0_combout\) # (((\b2v_inst|LessThan6~2_combout\ & \b2v_inst|LessThan6~1_combout\)) # (!\b2v_inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|LessThan6~2_combout\,
	datac => \b2v_inst|LessThan6~1_combout\,
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|salida1[7]~12_combout\);

-- Location: LCCOMB_X89_Y24_N18
\b2v_inst|salida1[7]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[7]~13_combout\ = (\b2v_inst|salida1[7]~12_combout\ & (((\b2v_inst|LessThan6~3_combout\ & \b2v_inst|LessThan6~0_combout\)) # (!\b2v_inst|indice~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan6~3_combout\,
	datab => \b2v_inst|indice~12_combout\,
	datac => \b2v_inst|LessThan6~0_combout\,
	datad => \b2v_inst|salida1[7]~12_combout\,
	combout => \b2v_inst|salida1[7]~13_combout\);

-- Location: LCCOMB_X89_Y24_N28
\b2v_inst|salida1[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[7]~14_combout\ = (\b2v_inst|salida1[7]~47_combout\ & (\b2v_inst|salida1[7]~13_combout\ & ((!\b2v_inst|indice~12_combout\) # (!\b2v_inst|indice\(30)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(30),
	datab => \b2v_inst|salida1[7]~47_combout\,
	datac => \b2v_inst|salida1[7]~13_combout\,
	datad => \b2v_inst|indice~12_combout\,
	combout => \b2v_inst|salida1[7]~14_combout\);

-- Location: LCCOMB_X89_Y24_N8
\b2v_inst|salida1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~15_combout\ = (\b2v_inst|indice~15_combout\ & (\b2v_inst|Mux10~25_combout\)) # (!\b2v_inst|indice~15_combout\ & ((\b2v_inst|salida1[7]~14_combout\ & (\b2v_inst|Mux10~25_combout\)) # (!\b2v_inst|salida1[7]~14_combout\ & 
-- ((\b2v_inst|Mux21~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux10~25_combout\,
	datab => \b2v_inst|Mux21~25_combout\,
	datac => \b2v_inst|indice~15_combout\,
	datad => \b2v_inst|salida1[7]~14_combout\,
	combout => \b2v_inst|salida1~15_combout\);

-- Location: LCCOMB_X89_Y24_N6
\b2v_inst|salida1[7]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[7]~48_combout\ = (\b2v_inst|salida1[7]~13_combout\ & (((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|LessThan0~2_combout\)) # (!\b2v_inst|indice\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(30),
	datab => \b2v_inst|LessThan0~2_combout\,
	datac => \b2v_inst|salida1[7]~13_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|salida1[7]~48_combout\);

-- Location: LCCOMB_X89_Y24_N26
\b2v_inst|salida1[7]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[7]~16_combout\ = (!\b2v_inst|indice~15_combout\ & (((\b2v_inst|indice~12_combout\ & \b2v_inst|LessThan0~0_combout\)) # (!\b2v_inst|salida1[7]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~12_combout\,
	datac => \b2v_inst|LessThan0~0_combout\,
	datad => \b2v_inst|salida1[7]~48_combout\,
	combout => \b2v_inst|salida1[7]~16_combout\);

-- Location: LCCOMB_X90_Y23_N6
\b2v_inst|salida1[0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[0]~17_combout\ = (!\b2v_inst|salida1[7]~16_combout\ & !\b2v_inst5|altpll_component|auto_generated|locked~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|salida1[7]~16_combout\,
	datad => \b2v_inst5|altpll_component|auto_generated|locked~combout\,
	combout => \b2v_inst|salida1[0]~17_combout\);

-- Location: FF_X89_Y24_N9
\b2v_inst|salida1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~15_combout\,
	ena => \b2v_inst|salida1[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(0));

-- Location: FF_X88_Y23_N15
\b2v_inst|salida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida1\(0),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(0));

-- Location: LCCOMB_X89_Y24_N0
\b2v_inst|indice~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~18_combout\ = (\b2v_inst|indice\(30) & (\b2v_inst|LessThan0~2_combout\ & !\b2v_inst|LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(30),
	datab => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|indice~18_combout\);

-- Location: LCCOMB_X89_Y24_N10
\b2v_inst|salida1[7]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[7]~18_combout\ = (\b2v_inst|indice~15_combout\) # ((!\b2v_inst|indice~18_combout\ & (\b2v_inst|salida1[7]~13_combout\ & \b2v_inst|salida1[7]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~15_combout\,
	datab => \b2v_inst|indice~18_combout\,
	datac => \b2v_inst|salida1[7]~13_combout\,
	datad => \b2v_inst|salida1[7]~47_combout\,
	combout => \b2v_inst|salida1[7]~18_combout\);

-- Location: LCCOMB_X89_Y25_N8
\b2v_inst|Mux9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~4_combout\ = (\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~9_combout\ $ ((!\b2v_inst|indice~7_combout\)))) # (!\b2v_inst|indice~10_combout\ & (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\ $ 
-- (\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux9~4_combout\);

-- Location: LCCOMB_X89_Y25_N0
\b2v_inst|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~0_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~11_combout\ & (!\b2v_inst|indice~10_combout\)) # (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~7_combout\))))) # (!\b2v_inst|indice~9_combout\ & 
-- ((\b2v_inst|indice~10_combout\ & (!\b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~7_combout\ & \b2v_inst|indice~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux9~0_combout\);

-- Location: LCCOMB_X89_Y25_N30
\b2v_inst|Mux9~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~5_combout\ = (\b2v_inst|Mux9~3_combout\ & ((\b2v_inst|Mux9~4_combout\) # ((!\b2v_inst|indice~6_combout\)))) # (!\b2v_inst|Mux9~3_combout\ & (((\b2v_inst|indice~6_combout\ & !\b2v_inst|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux9~3_combout\,
	datab => \b2v_inst|Mux9~4_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|Mux9~0_combout\,
	combout => \b2v_inst|Mux9~5_combout\);

-- Location: LCCOMB_X90_Y25_N2
\b2v_inst|Mux9~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~7_combout\ = (\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~7_combout\) # ((!\b2v_inst|indice~8_combout\ & \b2v_inst|indice~6_combout\)))) # (!\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~8_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux9~7_combout\);

-- Location: LCCOMB_X90_Y25_N16
\b2v_inst|Mux9~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~9_combout\ = (\b2v_inst|indice~11_combout\ & (((\b2v_inst|indice~9_combout\)))) # (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~9_combout\ & ((\b2v_inst|Mux9~7_combout\))) # (!\b2v_inst|indice~9_combout\ & 
-- (!\b2v_inst|Mux9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux9~8_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|Mux9~7_combout\,
	combout => \b2v_inst|Mux9~9_combout\);

-- Location: LCCOMB_X90_Y25_N0
\b2v_inst|Mux9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~6_combout\ = (\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~7_combout\ & (\b2v_inst|indice~8_combout\)) # (!\b2v_inst|indice~7_combout\ & ((!\b2v_inst|indice~10_combout\))))) # (!\b2v_inst|indice~6_combout\ & 
-- ((\b2v_inst|indice~8_combout\ & ((!\b2v_inst|indice~7_combout\))) # (!\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~8_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux9~6_combout\);

-- Location: LCCOMB_X90_Y25_N28
\b2v_inst|Mux9~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~11_combout\ = (\b2v_inst|Mux9~9_combout\ & (((!\b2v_inst|indice~11_combout\)) # (!\b2v_inst|Mux9~10_combout\))) # (!\b2v_inst|Mux9~9_combout\ & (((\b2v_inst|indice~11_combout\ & !\b2v_inst|Mux9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux9~10_combout\,
	datab => \b2v_inst|Mux9~9_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|Mux9~6_combout\,
	combout => \b2v_inst|Mux9~11_combout\);

-- Location: LCCOMB_X92_Y24_N4
\b2v_inst|Mux9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~16_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~10_combout\ & !\b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~10_combout\) # 
-- (!\b2v_inst|indice~7_combout\))))) # (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~6_combout\ & (!\b2v_inst|indice~10_combout\ & \b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~10_combout\ & 
-- !\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux9~16_combout\);

-- Location: LCCOMB_X92_Y24_N0
\b2v_inst|Mux9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~12_combout\ = ((\b2v_inst|indice~10_combout\ & !\b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux9~12_combout\);

-- Location: LCCOMB_X92_Y24_N26
\b2v_inst|Mux9~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~17_combout\ = (\b2v_inst|Mux9~15_combout\ & (((!\b2v_inst|Mux9~16_combout\)) # (!\b2v_inst|indice~8_combout\))) # (!\b2v_inst|Mux9~15_combout\ & (\b2v_inst|indice~8_combout\ & ((\b2v_inst|Mux9~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux9~15_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|Mux9~16_combout\,
	datad => \b2v_inst|Mux9~12_combout\,
	combout => \b2v_inst|Mux9~17_combout\);

-- Location: LCCOMB_X90_Y25_N26
\b2v_inst|Mux9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~18_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux9~11_combout\) # ((\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~17_combout\ & (((\b2v_inst|Mux9~17_combout\ & !\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux9~11_combout\,
	datac => \b2v_inst|Mux9~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux9~18_combout\);

-- Location: LCCOMB_X90_Y25_N24
\b2v_inst|Mux9~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux9~24_combout\ = (\b2v_inst|Mux9~18_combout\ & ((\b2v_inst|Mux9~23_combout\) # ((!\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|Mux9~18_combout\ & (((\b2v_inst|Mux9~5_combout\ & \b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux9~23_combout\,
	datab => \b2v_inst|Mux9~5_combout\,
	datac => \b2v_inst|Mux9~18_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux9~24_combout\);

-- Location: LCCOMB_X86_Y22_N2
\b2v_inst|Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~2_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~8_combout\ & !\b2v_inst|indice~10_combout\)) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~8_combout\)))) # 
-- (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~8_combout\) # (!\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~8_combout\,
	datad => \b2v_inst|indice~10_combout\,
	combout => \b2v_inst|Mux10~2_combout\);

-- Location: LCCOMB_X86_Y22_N20
\b2v_inst|Mux10~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~3_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|Mux10~1_combout\) # ((\b2v_inst|indice~11_combout\)))) # (!\b2v_inst|indice~9_combout\ & (((\b2v_inst|Mux10~2_combout\ & !\b2v_inst|indice~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux10~1_combout\,
	datab => \b2v_inst|Mux10~2_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux10~3_combout\);

-- Location: LCCOMB_X87_Y22_N22
\b2v_inst|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~0_combout\ = (\b2v_inst|indice~8_combout\) # ((\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\) # (!\b2v_inst|indice~10_combout\))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~8_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux10~0_combout\);

-- Location: LCCOMB_X87_Y22_N20
\b2v_inst|Mux10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~4_combout\ = (\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~10_combout\) # ((!\b2v_inst|indice~17_combout\ & !\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~17_combout\ & 
-- (!\b2v_inst|indice~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~8_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux10~4_combout\);

-- Location: LCCOMB_X87_Y22_N2
\b2v_inst|Mux10~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~5_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|Mux10~3_combout\ & ((!\b2v_inst|Mux10~4_combout\))) # (!\b2v_inst|Mux10~3_combout\ & (!\b2v_inst|Mux10~0_combout\)))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|Mux10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|Mux10~3_combout\,
	datac => \b2v_inst|Mux10~0_combout\,
	datad => \b2v_inst|Mux10~4_combout\,
	combout => \b2v_inst|Mux10~5_combout\);

-- Location: LCCOMB_X91_Y22_N24
\b2v_inst|Mux10~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~23_combout\ = (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~9_combout\ $ (((!\b2v_inst|indice~10_combout\ & \b2v_inst|indice~17_combout\))))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~9_combout\ & 
-- (\b2v_inst|indice~10_combout\ $ (!\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux10~23_combout\);

-- Location: LCCOMB_X91_Y22_N28
\b2v_inst|Mux10~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~21_combout\ = (\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~10_combout\ $ (((!\b2v_inst|indice~17_combout\ & !\b2v_inst|indice~16_combout\))))) # (!\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~17_combout\ & 
-- ((\b2v_inst|indice~10_combout\) # (\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux10~21_combout\);

-- Location: LCCOMB_X91_Y22_N18
\b2v_inst|Mux10~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~22_combout\ = (\b2v_inst|indice~8_combout\ & (((\b2v_inst|indice~11_combout\)) # (!\b2v_inst|Mux10~20_combout\))) # (!\b2v_inst|indice~8_combout\ & (((!\b2v_inst|indice~11_combout\ & !\b2v_inst|Mux10~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux10~20_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|Mux10~21_combout\,
	combout => \b2v_inst|Mux10~22_combout\);

-- Location: LCCOMB_X91_Y22_N26
\b2v_inst|Mux10~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~24_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|Mux10~22_combout\ & ((!\b2v_inst|Mux10~23_combout\))) # (!\b2v_inst|Mux10~22_combout\ & (\b2v_inst|Mux10~19_combout\)))) # (!\b2v_inst|indice~11_combout\ & 
-- (((\b2v_inst|Mux10~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux10~19_combout\,
	datab => \b2v_inst|Mux10~23_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|Mux10~22_combout\,
	combout => \b2v_inst|Mux10~24_combout\);

-- Location: LCCOMB_X87_Y22_N0
\b2v_inst|Mux10~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux10~25_combout\ = (\b2v_inst|Mux10~18_combout\ & (((\b2v_inst|Mux10~24_combout\) # (!\b2v_inst|indice~6_combout\)))) # (!\b2v_inst|Mux10~18_combout\ & (\b2v_inst|Mux10~5_combout\ & (\b2v_inst|indice~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux10~18_combout\,
	datab => \b2v_inst|Mux10~5_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|Mux10~24_combout\,
	combout => \b2v_inst|Mux10~25_combout\);

-- Location: LCCOMB_X91_Y23_N4
\b2v_inst|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~1_cout\ = CARRY(!\b2v_inst|Mux10~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux10~25_combout\,
	datad => VCC,
	cout => \b2v_inst|Add1~1_cout\);

-- Location: LCCOMB_X91_Y23_N6
\b2v_inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~2_combout\ = (\b2v_inst|Mux9~24_combout\ & ((\b2v_inst|Add1~1_cout\) # (GND))) # (!\b2v_inst|Mux9~24_combout\ & (!\b2v_inst|Add1~1_cout\))
-- \b2v_inst|Add1~3\ = CARRY((\b2v_inst|Mux9~24_combout\) # (!\b2v_inst|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux9~24_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~1_cout\,
	combout => \b2v_inst|Add1~2_combout\,
	cout => \b2v_inst|Add1~3\);

-- Location: LCCOMB_X94_Y23_N6
\b2v_inst|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~1_cout\ = CARRY(!\b2v_inst|Mux21~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux21~25_combout\,
	datad => VCC,
	cout => \b2v_inst|Add2~1_cout\);

-- Location: LCCOMB_X94_Y23_N8
\b2v_inst|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~2_combout\ = (\b2v_inst|Mux20~25_combout\ & ((\b2v_inst|Add2~1_cout\) # (GND))) # (!\b2v_inst|Mux20~25_combout\ & (!\b2v_inst|Add2~1_cout\))
-- \b2v_inst|Add2~3\ = CARRY((\b2v_inst|Mux20~25_combout\) # (!\b2v_inst|Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux20~25_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~1_cout\,
	combout => \b2v_inst|Add2~2_combout\,
	cout => \b2v_inst|Add2~3\);

-- Location: LCCOMB_X89_Y24_N4
\b2v_inst|salida1[7]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[7]~49_combout\ = ((\b2v_inst|LessThan0~2_combout\ & (\b2v_inst|LessThan0~0_combout\ & !\b2v_inst|LessThan2~0_combout\))) # (!\b2v_inst|salida1[7]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1[7]~13_combout\,
	datab => \b2v_inst|LessThan0~2_combout\,
	datac => \b2v_inst|LessThan0~0_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|salida1[7]~49_combout\);

-- Location: LCCOMB_X89_Y23_N26
\b2v_inst|indice[9]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice[9]~3_combout\ = \b2v_inst|indice[9]~1_combout\ $ (\b2v_inst|Add3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice[9]~1_combout\,
	datad => \b2v_inst|Add3~18_combout\,
	combout => \b2v_inst|indice[9]~3_combout\);

-- Location: FF_X89_Y23_N27
\b2v_inst|indice[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|indice[9]~3_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice[9]~_emulated_q\);

-- Location: LCCOMB_X89_Y23_N24
\b2v_inst|indice[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice[9]~2_combout\ = (\b2v_inst5|altpll_component|auto_generated|locked~combout\ & (((!\b2v_inst9|data_out~0_combout\)))) # (!\b2v_inst5|altpll_component|auto_generated|locked~combout\ & (\b2v_inst|indice[9]~1_combout\ $ 
-- ((\b2v_inst|indice[9]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice[9]~1_combout\,
	datab => \b2v_inst|indice[9]~_emulated_q\,
	datac => \b2v_inst5|altpll_component|auto_generated|locked~combout\,
	datad => \b2v_inst9|data_out~0_combout\,
	combout => \b2v_inst|indice[9]~2_combout\);

-- Location: LCCOMB_X89_Y23_N6
\b2v_inst|indice~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice~14_combout\ = (\b2v_inst|LessThan2~0_combout\ & (!\b2v_inst9|data_out~0_combout\)) # (!\b2v_inst|LessThan2~0_combout\ & (((\b2v_inst|LessThan0~2_combout\ & \b2v_inst|indice[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst9|data_out~0_combout\,
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|indice[9]~2_combout\,
	combout => \b2v_inst|indice~14_combout\);

-- Location: LCCOMB_X89_Y23_N14
\b2v_inst|salida1[7]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1[7]~19_combout\ = (\b2v_inst|indice\(31) & (!\b2v_inst|indice~12_combout\ & ((\b2v_inst|salida1[7]~49_combout\) # (\b2v_inst|indice~14_combout\)))) # (!\b2v_inst|indice\(31) & ((\b2v_inst|salida1[7]~49_combout\) # 
-- ((\b2v_inst|indice~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(31),
	datab => \b2v_inst|salida1[7]~49_combout\,
	datac => \b2v_inst|indice~12_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|salida1[7]~19_combout\);

-- Location: LCCOMB_X94_Y23_N0
\b2v_inst|salida1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~20_combout\ = (\b2v_inst|salida1[7]~18_combout\ & (((\b2v_inst|salida1[7]~19_combout\)))) # (!\b2v_inst|salida1[7]~18_combout\ & ((\b2v_inst|salida1[7]~19_combout\ & ((\b2v_inst|Add2~2_combout\))) # (!\b2v_inst|salida1[7]~19_combout\ & 
-- (\b2v_inst|Mux20~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux20~25_combout\,
	datab => \b2v_inst|salida1[7]~18_combout\,
	datac => \b2v_inst|Add2~2_combout\,
	datad => \b2v_inst|salida1[7]~19_combout\,
	combout => \b2v_inst|salida1~20_combout\);

-- Location: LCCOMB_X94_Y23_N4
\b2v_inst|salida1~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~21_combout\ = (\b2v_inst|salida1[7]~18_combout\ & ((\b2v_inst|salida1~20_combout\ & ((\b2v_inst|Add1~2_combout\))) # (!\b2v_inst|salida1~20_combout\ & (\b2v_inst|Mux9~24_combout\)))) # (!\b2v_inst|salida1[7]~18_combout\ & 
-- (((\b2v_inst|salida1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux9~24_combout\,
	datab => \b2v_inst|salida1[7]~18_combout\,
	datac => \b2v_inst|Add1~2_combout\,
	datad => \b2v_inst|salida1~20_combout\,
	combout => \b2v_inst|salida1~21_combout\);

-- Location: FF_X94_Y23_N5
\b2v_inst|salida1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~21_combout\,
	ena => \b2v_inst|salida1[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(1));

-- Location: FF_X91_Y23_N9
\b2v_inst|salida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida1\(1),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(1));

-- Location: LCCOMB_X90_Y24_N0
\b2v_inst|Mux8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~12_combout\ = (\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~6_combout\) # ((\b2v_inst|indice~9_combout\ & !\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~9_combout\ $ (\b2v_inst|indice~6_combout\ $ 
-- (\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux8~12_combout\);

-- Location: LCCOMB_X90_Y24_N24
\b2v_inst|Mux8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~16_combout\ = (\b2v_inst|indice~6_combout\ & (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~9_combout\) # (\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~9_combout\ $ 
-- (!\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux8~16_combout\);

-- Location: LCCOMB_X90_Y24_N2
\b2v_inst|Mux8~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~17_combout\ = (\b2v_inst|Mux8~15_combout\ & (((\b2v_inst|Mux8~16_combout\) # (!\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|Mux8~15_combout\ & (!\b2v_inst|Mux8~12_combout\ & ((\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux8~15_combout\,
	datab => \b2v_inst|Mux8~12_combout\,
	datac => \b2v_inst|Mux8~16_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux8~17_combout\);

-- Location: LCCOMB_X91_Y22_N8
\b2v_inst|Mux8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~18_combout\ = (\b2v_inst|indice~10_combout\ & (((\b2v_inst|indice~7_combout\)))) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~7_combout\ & (\b2v_inst|Mux8~11_combout\)) # (!\b2v_inst|indice~7_combout\ & 
-- ((\b2v_inst|Mux8~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux8~11_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|Mux8~17_combout\,
	combout => \b2v_inst|Mux8~18_combout\);

-- Location: LCCOMB_X92_Y22_N24
\b2v_inst|Mux8~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~21_combout\ = (\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~17_combout\ $ (((!\b2v_inst|indice~11_combout\ & !\b2v_inst|indice~16_combout\))))) # (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~11_combout\ & 
-- ((\b2v_inst|indice~16_combout\))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux8~21_combout\);

-- Location: LCCOMB_X92_Y22_N18
\b2v_inst|Mux8~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~22_combout\ = (\b2v_inst|indice~8_combout\ & ((\b2v_inst|Mux8~20_combout\) # ((\b2v_inst|indice~6_combout\)))) # (!\b2v_inst|indice~8_combout\ & (((!\b2v_inst|indice~6_combout\ & \b2v_inst|Mux8~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux8~20_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|Mux8~21_combout\,
	combout => \b2v_inst|Mux8~22_combout\);

-- Location: LCCOMB_X92_Y22_N16
\b2v_inst|Mux8~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~19_combout\ = (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~17_combout\ $ (((\b2v_inst|indice~9_combout\ & \b2v_inst|indice~11_combout\))))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~9_combout\ & 
-- ((\b2v_inst|indice~17_combout\) # (!\b2v_inst|indice~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux8~19_combout\);

-- Location: LCCOMB_X92_Y22_N6
\b2v_inst|Mux8~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~24_combout\ = (\b2v_inst|Mux8~22_combout\ & (((!\b2v_inst|indice~6_combout\)) # (!\b2v_inst|Mux8~23_combout\))) # (!\b2v_inst|Mux8~22_combout\ & (((\b2v_inst|indice~6_combout\ & !\b2v_inst|Mux8~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux8~23_combout\,
	datab => \b2v_inst|Mux8~22_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|Mux8~19_combout\,
	combout => \b2v_inst|Mux8~24_combout\);

-- Location: LCCOMB_X91_Y22_N30
\b2v_inst|Mux8~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux8~25_combout\ = (\b2v_inst|indice~10_combout\ & ((\b2v_inst|Mux8~18_combout\ & ((\b2v_inst|Mux8~24_combout\))) # (!\b2v_inst|Mux8~18_combout\ & (\b2v_inst|Mux8~5_combout\)))) # (!\b2v_inst|indice~10_combout\ & 
-- (((\b2v_inst|Mux8~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux8~5_combout\,
	datab => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|Mux8~18_combout\,
	datad => \b2v_inst|Mux8~24_combout\,
	combout => \b2v_inst|Mux8~25_combout\);

-- Location: LCCOMB_X91_Y23_N8
\b2v_inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~4_combout\ = (\b2v_inst|Mux8~25_combout\ & (!\b2v_inst|Add1~3\ & VCC)) # (!\b2v_inst|Mux8~25_combout\ & (\b2v_inst|Add1~3\ $ (GND)))
-- \b2v_inst|Add1~5\ = CARRY((!\b2v_inst|Mux8~25_combout\ & !\b2v_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux8~25_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~3\,
	combout => \b2v_inst|Add1~4_combout\,
	cout => \b2v_inst|Add1~5\);

-- Location: LCCOMB_X90_Y20_N10
\b2v_inst|Mux19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~6_combout\ = (\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~11_combout\ $ ((\b2v_inst|indice~6_combout\)))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~6_combout\ & 
-- !\b2v_inst|indice~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux19~6_combout\);

-- Location: LCCOMB_X90_Y24_N14
\b2v_inst|Mux19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~8_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~6_combout\ $ (\b2v_inst|indice~11_combout\)))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux19~8_combout\);

-- Location: LCCOMB_X90_Y24_N20
\b2v_inst|Mux19~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~7_combout\ = (\b2v_inst|indice~6_combout\ & (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\) # (\b2v_inst|indice~11_combout\)))) # (!\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~16_combout\ & 
-- ((\b2v_inst|indice~17_combout\) # (\b2v_inst|indice~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux19~7_combout\);

-- Location: LCCOMB_X90_Y24_N16
\b2v_inst|Mux19~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~9_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~8_combout\) # ((\b2v_inst|Mux19~7_combout\)))) # (!\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~8_combout\ & (!\b2v_inst|Mux19~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|Mux19~8_combout\,
	datad => \b2v_inst|Mux19~7_combout\,
	combout => \b2v_inst|Mux19~9_combout\);

-- Location: LCCOMB_X90_Y24_N8
\b2v_inst|Mux19~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~11_combout\ = (\b2v_inst|indice~8_combout\ & ((\b2v_inst|Mux19~9_combout\ & (!\b2v_inst|Mux19~10_combout\)) # (!\b2v_inst|Mux19~9_combout\ & ((!\b2v_inst|Mux19~6_combout\))))) # (!\b2v_inst|indice~8_combout\ & 
-- (((\b2v_inst|Mux19~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux19~10_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|Mux19~6_combout\,
	datad => \b2v_inst|Mux19~9_combout\,
	combout => \b2v_inst|Mux19~11_combout\);

-- Location: LCCOMB_X90_Y24_N4
\b2v_inst|Mux19~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~16_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~17_combout\)) # (!\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~16_combout\))))) # (!\b2v_inst|indice~9_combout\ & 
-- (\b2v_inst|indice~17_combout\ $ (((\b2v_inst|indice~11_combout\ & \b2v_inst|indice~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux19~16_combout\);

-- Location: LCCOMB_X90_Y24_N30
\b2v_inst|Mux19~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~12_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~17_combout\))) # (!\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~11_combout\)))) # (!\b2v_inst|indice~16_combout\ & 
-- ((\b2v_inst|indice~11_combout\ & ((!\b2v_inst|indice~17_combout\))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux19~12_combout\);

-- Location: LCCOMB_X90_Y24_N26
\b2v_inst|Mux19~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~17_combout\ = (\b2v_inst|Mux19~15_combout\ & (((!\b2v_inst|indice~6_combout\)) # (!\b2v_inst|Mux19~16_combout\))) # (!\b2v_inst|Mux19~15_combout\ & (((!\b2v_inst|Mux19~12_combout\ & \b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux19~15_combout\,
	datab => \b2v_inst|Mux19~16_combout\,
	datac => \b2v_inst|Mux19~12_combout\,
	datad => \b2v_inst|indice~6_combout\,
	combout => \b2v_inst|Mux19~17_combout\);

-- Location: LCCOMB_X88_Y24_N10
\b2v_inst|Mux19~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~18_combout\ = (\b2v_inst|indice~10_combout\ & (((\b2v_inst|indice~7_combout\)))) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~7_combout\ & (\b2v_inst|Mux19~11_combout\)) # (!\b2v_inst|indice~7_combout\ & 
-- ((\b2v_inst|Mux19~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|Mux19~11_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|Mux19~17_combout\,
	combout => \b2v_inst|Mux19~18_combout\);

-- Location: LCCOMB_X90_Y20_N30
\b2v_inst|Mux19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~2_combout\ = (\b2v_inst|indice~16_combout\) # ((\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~11_combout\ $ (!\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux19~2_combout\);

-- Location: LCCOMB_X90_Y20_N28
\b2v_inst|Mux19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~1_combout\ = (\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~16_combout\ $ (((\b2v_inst|indice~9_combout\) # (!\b2v_inst|indice~11_combout\))))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\ & 
-- ((\b2v_inst|indice~9_combout\))) # (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux19~1_combout\);

-- Location: LCCOMB_X90_Y20_N24
\b2v_inst|Mux19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~3_combout\ = (\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~8_combout\)) # (!\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~8_combout\ & ((!\b2v_inst|Mux19~1_combout\))) # (!\b2v_inst|indice~8_combout\ & (\b2v_inst|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~6_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|Mux19~2_combout\,
	datad => \b2v_inst|Mux19~1_combout\,
	combout => \b2v_inst|Mux19~3_combout\);

-- Location: LCCOMB_X87_Y20_N8
\b2v_inst|Mux19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~4_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~11_combout\) # (!\b2v_inst|indice~17_combout\))) # (!\b2v_inst|indice~9_combout\ & ((!\b2v_inst|indice~11_combout\))))) # 
-- (!\b2v_inst|indice~16_combout\ & (\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~9_combout\ & \b2v_inst|indice~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux19~4_combout\);

-- Location: LCCOMB_X87_Y20_N2
\b2v_inst|Mux19~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~5_combout\ = (\b2v_inst|Mux19~3_combout\ & (((!\b2v_inst|indice~6_combout\) # (!\b2v_inst|Mux19~4_combout\)))) # (!\b2v_inst|Mux19~3_combout\ & (\b2v_inst|Mux19~0_combout\ & ((\b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux19~0_combout\,
	datab => \b2v_inst|Mux19~3_combout\,
	datac => \b2v_inst|Mux19~4_combout\,
	datad => \b2v_inst|indice~6_combout\,
	combout => \b2v_inst|Mux19~5_combout\);

-- Location: LCCOMB_X87_Y22_N16
\b2v_inst|Mux19~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux19~25_combout\ = (\b2v_inst|Mux19~18_combout\ & ((\b2v_inst|Mux19~24_combout\) # ((!\b2v_inst|indice~10_combout\)))) # (!\b2v_inst|Mux19~18_combout\ & (((\b2v_inst|indice~10_combout\ & \b2v_inst|Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux19~24_combout\,
	datab => \b2v_inst|Mux19~18_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|Mux19~5_combout\,
	combout => \b2v_inst|Mux19~25_combout\);

-- Location: LCCOMB_X92_Y23_N26
\b2v_inst|salida1~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~22_combout\ = (\b2v_inst|salida1[7]~18_combout\ & ((\b2v_inst|Mux8~25_combout\) # ((\b2v_inst|salida1[7]~19_combout\)))) # (!\b2v_inst|salida1[7]~18_combout\ & (((\b2v_inst|Mux19~25_combout\ & !\b2v_inst|salida1[7]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1[7]~18_combout\,
	datab => \b2v_inst|Mux8~25_combout\,
	datac => \b2v_inst|Mux19~25_combout\,
	datad => \b2v_inst|salida1[7]~19_combout\,
	combout => \b2v_inst|salida1~22_combout\);

-- Location: LCCOMB_X92_Y23_N12
\b2v_inst|salida1~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~23_combout\ = (\b2v_inst|salida1~22_combout\ & (((\b2v_inst|Add1~4_combout\) # (!\b2v_inst|salida1[7]~19_combout\)))) # (!\b2v_inst|salida1~22_combout\ & (\b2v_inst|Add2~4_combout\ & ((\b2v_inst|salida1[7]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~4_combout\,
	datab => \b2v_inst|Add1~4_combout\,
	datac => \b2v_inst|salida1~22_combout\,
	datad => \b2v_inst|salida1[7]~19_combout\,
	combout => \b2v_inst|salida1~23_combout\);

-- Location: FF_X92_Y23_N13
\b2v_inst|salida1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~23_combout\,
	ena => \b2v_inst|salida1[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(2));

-- Location: FF_X91_Y23_N29
\b2v_inst|salida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida1\(2),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(2));

-- Location: LCCOMB_X90_Y22_N28
\b2v_inst|Mux7~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~17_combout\ = (\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~9_combout\ & !\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~9_combout\ & 
-- \b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~10_combout\ & (((\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux7~17_combout\);

-- Location: LCCOMB_X90_Y22_N20
\b2v_inst|Mux7~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~19_combout\ = (\b2v_inst|indice~8_combout\ & (((\b2v_inst|indice~7_combout\) # (!\b2v_inst|Mux7~17_combout\)))) # (!\b2v_inst|indice~8_combout\ & (!\b2v_inst|Mux7~18_combout\ & (!\b2v_inst|indice~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux7~18_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|Mux7~17_combout\,
	combout => \b2v_inst|Mux7~19_combout\);

-- Location: LCCOMB_X90_Y22_N2
\b2v_inst|Mux7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~16_combout\ = (\b2v_inst|indice~17_combout\) # ((\b2v_inst|indice\(6) & \b2v_inst|indice~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(6),
	datab => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~10_combout\,
	combout => \b2v_inst|Mux7~16_combout\);

-- Location: LCCOMB_X90_Y22_N4
\b2v_inst|Mux7~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~21_combout\ = (\b2v_inst|Mux7~19_combout\ & ((\b2v_inst|Mux7~20_combout\) # ((!\b2v_inst|indice~7_combout\)))) # (!\b2v_inst|Mux7~19_combout\ & (((\b2v_inst|indice~7_combout\ & \b2v_inst|Mux7~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux7~20_combout\,
	datab => \b2v_inst|Mux7~19_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|Mux7~16_combout\,
	combout => \b2v_inst|Mux7~21_combout\);

-- Location: LCCOMB_X91_Y24_N6
\b2v_inst|Mux18~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~28_combout\ = \b2v_inst|Mux18~2_combout\ $ (((\b2v_inst|indice\(3) & (\b2v_inst|LessThan0~2_combout\ & !\b2v_inst|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~2_combout\,
	datab => \b2v_inst|indice\(3),
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|Mux18~28_combout\);

-- Location: LCCOMB_X92_Y24_N18
\b2v_inst|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~1_combout\ = (\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~10_combout\))) # (!\b2v_inst|indice~8_combout\ & (!\b2v_inst|indice~9_combout\)))) # (!\b2v_inst|indice~7_combout\ & 
-- ((\b2v_inst|indice~9_combout\) # ((\b2v_inst|indice~10_combout\ & !\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux7~1_combout\);

-- Location: LCCOMB_X92_Y24_N24
\b2v_inst|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~2_combout\ = (\b2v_inst|indice~17_combout\ & (((\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~16_combout\ & ((!\b2v_inst|Mux7~1_combout\))) # (!\b2v_inst|indice~16_combout\ & 
-- (!\b2v_inst|Mux18~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux18~28_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|Mux7~1_combout\,
	combout => \b2v_inst|Mux7~2_combout\);

-- Location: LCCOMB_X92_Y24_N22
\b2v_inst|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~3_combout\ = (\b2v_inst|indice~7_combout\ & (\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~9_combout\ $ (\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~8_combout\) # (\b2v_inst|indice~9_combout\ $ 
-- (\b2v_inst|indice~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux7~3_combout\);

-- Location: LCCOMB_X92_Y24_N20
\b2v_inst|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~0_combout\ = (\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~7_combout\ & (\b2v_inst|indice~10_combout\ & \b2v_inst|indice~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux7~0_combout\);

-- Location: LCCOMB_X92_Y24_N28
\b2v_inst|Mux7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~4_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux7~2_combout\ & (\b2v_inst|Mux7~3_combout\)) # (!\b2v_inst|Mux7~2_combout\ & ((\b2v_inst|Mux7~0_combout\))))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux7~2_combout\,
	datac => \b2v_inst|Mux7~3_combout\,
	datad => \b2v_inst|Mux7~0_combout\,
	combout => \b2v_inst|Mux7~4_combout\);

-- Location: LCCOMB_X92_Y24_N30
\b2v_inst|Mux7~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~22_combout\ = (\b2v_inst|Mux7~15_combout\ & (((\b2v_inst|Mux7~21_combout\)) # (!\b2v_inst|indice~6_combout\))) # (!\b2v_inst|Mux7~15_combout\ & (\b2v_inst|indice~6_combout\ & ((\b2v_inst|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux7~15_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|Mux7~21_combout\,
	datad => \b2v_inst|Mux7~4_combout\,
	combout => \b2v_inst|Mux7~22_combout\);

-- Location: LCCOMB_X91_Y23_N10
\b2v_inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~6_combout\ = (\b2v_inst|Mux7~22_combout\ & ((\b2v_inst|Add1~5\) # (GND))) # (!\b2v_inst|Mux7~22_combout\ & (!\b2v_inst|Add1~5\))
-- \b2v_inst|Add1~7\ = CARRY((\b2v_inst|Mux7~22_combout\) # (!\b2v_inst|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux7~22_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~5\,
	combout => \b2v_inst|Add1~6_combout\,
	cout => \b2v_inst|Add1~7\);

-- Location: LCCOMB_X90_Y21_N28
\b2v_inst|Mux18~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~16_combout\ = ((!\b2v_inst|indice\(6) & !\b2v_inst|indice\(4))) # (!\b2v_inst|indice~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(6),
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice\(4),
	combout => \b2v_inst|Mux18~16_combout\);

-- Location: LCCOMB_X90_Y21_N16
\b2v_inst|Mux18~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~18_combout\ = (\b2v_inst|indice~7_combout\ & (((\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~8_combout\ & ((\b2v_inst|Mux18~16_combout\))) # (!\b2v_inst|indice~8_combout\ & 
-- (!\b2v_inst|Mux18~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~17_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~8_combout\,
	datad => \b2v_inst|Mux18~16_combout\,
	combout => \b2v_inst|Mux18~18_combout\);

-- Location: LCCOMB_X90_Y21_N22
\b2v_inst|Mux18~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~19_combout\ = (\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~10_combout\ $ (\b2v_inst|indice~9_combout\)))) # (!\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~10_combout\ & 
-- (\b2v_inst|indice~17_combout\ $ (\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~9_combout\,
	combout => \b2v_inst|Mux18~19_combout\);

-- Location: LCCOMB_X90_Y21_N18
\b2v_inst|Mux18~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~15_combout\ = (\b2v_inst|indice~16_combout\ & (!\b2v_inst|indice~17_combout\ & (!\b2v_inst|indice~10_combout\ & !\b2v_inst|indice~9_combout\))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~10_combout\) # 
-- ((\b2v_inst|indice~17_combout\ & \b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~9_combout\,
	combout => \b2v_inst|Mux18~15_combout\);

-- Location: LCCOMB_X90_Y21_N20
\b2v_inst|Mux18~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~20_combout\ = (\b2v_inst|indice~7_combout\ & ((\b2v_inst|Mux18~18_combout\ & (!\b2v_inst|Mux18~19_combout\)) # (!\b2v_inst|Mux18~18_combout\ & ((!\b2v_inst|Mux18~15_combout\))))) # (!\b2v_inst|indice~7_combout\ & 
-- (\b2v_inst|Mux18~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~7_combout\,
	datab => \b2v_inst|Mux18~18_combout\,
	datac => \b2v_inst|Mux18~19_combout\,
	datad => \b2v_inst|Mux18~15_combout\,
	combout => \b2v_inst|Mux18~20_combout\);

-- Location: LCCOMB_X90_Y21_N14
\b2v_inst|Mux18~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~21_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|Mux18~14_combout\) # ((\b2v_inst|indice~6_combout\)))) # (!\b2v_inst|indice~11_combout\ & (((\b2v_inst|Mux18~20_combout\ & !\b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~14_combout\,
	datab => \b2v_inst|Mux18~20_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~6_combout\,
	combout => \b2v_inst|Mux18~21_combout\);

-- Location: LCCOMB_X89_Y21_N24
\b2v_inst|Mux18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~4_combout\ = (\b2v_inst|indice~17_combout\ & (((\b2v_inst|indice~16_combout\ & !\b2v_inst|indice~9_combout\)) # (!\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~8_combout\ $ 
-- (((\b2v_inst|indice~16_combout\ & \b2v_inst|indice~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|indice~8_combout\,
	datad => \b2v_inst|indice~9_combout\,
	combout => \b2v_inst|Mux18~4_combout\);

-- Location: LCCOMB_X90_Y21_N6
\b2v_inst|Mux18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~8_combout\ = (\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~17_combout\ $ (\b2v_inst|indice~9_combout\)) # (!\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~17_combout\ & 
-- (\b2v_inst|indice~8_combout\)) # (!\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~9_combout\,
	combout => \b2v_inst|Mux18~8_combout\);

-- Location: LCCOMB_X90_Y21_N8
\b2v_inst|Mux18~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~9_combout\ = (\b2v_inst|Mux18~7_combout\ & (((!\b2v_inst|Mux18~8_combout\) # (!\b2v_inst|indice~10_combout\)))) # (!\b2v_inst|Mux18~7_combout\ & (\b2v_inst|Mux18~4_combout\ & (\b2v_inst|indice~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~7_combout\,
	datab => \b2v_inst|Mux18~4_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|Mux18~8_combout\,
	combout => \b2v_inst|Mux18~9_combout\);

-- Location: LCCOMB_X88_Y24_N2
\b2v_inst|indice[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice[1]~feeder_combout\ = \b2v_inst|Add3~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add3~2_combout\,
	combout => \b2v_inst|indice[1]~feeder_combout\);

-- Location: FF_X88_Y24_N3
\b2v_inst|indice[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|indice[1]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(1));

-- Location: LCCOMB_X88_Y24_N20
\b2v_inst|Mux18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~2_combout\ = (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|LessThan0~2_combout\ & (\b2v_inst|indice\(4) $ (\b2v_inst|indice\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|indice\(4),
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|indice\(1),
	combout => \b2v_inst|Mux18~2_combout\);

-- Location: LCCOMB_X91_Y24_N18
\b2v_inst|Mux18~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~22_combout\ = (\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~7_combout\ $ (((\b2v_inst|indice~10_combout\) # (!\b2v_inst|indice~9_combout\))))) # (!\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~7_combout\ & 
-- ((!\b2v_inst|indice~10_combout\))) # (!\b2v_inst|indice~7_combout\ & (\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux18~22_combout\);

-- Location: LCCOMB_X91_Y24_N24
\b2v_inst|Mux18~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~25_combout\ = (\b2v_inst|Mux18~24_combout\ & (((\b2v_inst|Mux18~2_combout\)) # (!\b2v_inst|indice~17_combout\))) # (!\b2v_inst|Mux18~24_combout\ & (\b2v_inst|indice~17_combout\ & ((!\b2v_inst|Mux18~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~24_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux18~2_combout\,
	datad => \b2v_inst|Mux18~22_combout\,
	combout => \b2v_inst|Mux18~25_combout\);

-- Location: LCCOMB_X90_Y21_N0
\b2v_inst|Mux18~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux18~26_combout\ = (\b2v_inst|indice~6_combout\ & ((\b2v_inst|Mux18~21_combout\ & ((\b2v_inst|Mux18~25_combout\))) # (!\b2v_inst|Mux18~21_combout\ & (\b2v_inst|Mux18~9_combout\)))) # (!\b2v_inst|indice~6_combout\ & 
-- (\b2v_inst|Mux18~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~6_combout\,
	datab => \b2v_inst|Mux18~21_combout\,
	datac => \b2v_inst|Mux18~9_combout\,
	datad => \b2v_inst|Mux18~25_combout\,
	combout => \b2v_inst|Mux18~26_combout\);

-- Location: LCCOMB_X94_Y23_N2
\b2v_inst|salida1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~24_combout\ = (\b2v_inst|salida1[7]~18_combout\ & (((\b2v_inst|salida1[7]~19_combout\)))) # (!\b2v_inst|salida1[7]~18_combout\ & ((\b2v_inst|salida1[7]~19_combout\ & (\b2v_inst|Add2~6_combout\)) # (!\b2v_inst|salida1[7]~19_combout\ & 
-- ((\b2v_inst|Mux18~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~6_combout\,
	datab => \b2v_inst|Mux18~26_combout\,
	datac => \b2v_inst|salida1[7]~18_combout\,
	datad => \b2v_inst|salida1[7]~19_combout\,
	combout => \b2v_inst|salida1~24_combout\);

-- Location: LCCOMB_X94_Y23_N30
\b2v_inst|salida1~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~25_combout\ = (\b2v_inst|salida1[7]~18_combout\ & ((\b2v_inst|salida1~24_combout\ & ((\b2v_inst|Add1~6_combout\))) # (!\b2v_inst|salida1~24_combout\ & (\b2v_inst|Mux7~22_combout\)))) # (!\b2v_inst|salida1[7]~18_combout\ & 
-- (((\b2v_inst|salida1~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1[7]~18_combout\,
	datab => \b2v_inst|Mux7~22_combout\,
	datac => \b2v_inst|Add1~6_combout\,
	datad => \b2v_inst|salida1~24_combout\,
	combout => \b2v_inst|salida1~25_combout\);

-- Location: FF_X94_Y23_N31
\b2v_inst|salida1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~25_combout\,
	ena => \b2v_inst|salida1[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(3));

-- Location: FF_X88_Y23_N11
\b2v_inst|salida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida1\(3),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(3));

-- Location: LCCOMB_X94_Y23_N14
\b2v_inst|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~8_combout\ = (\b2v_inst|Mux17~24_combout\ & (!\b2v_inst|Add2~7\ & VCC)) # (!\b2v_inst|Mux17~24_combout\ & (\b2v_inst|Add2~7\ $ (GND)))
-- \b2v_inst|Add2~9\ = CARRY((!\b2v_inst|Mux17~24_combout\ & !\b2v_inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux17~24_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~7\,
	combout => \b2v_inst|Add2~8_combout\,
	cout => \b2v_inst|Add2~9\);

-- Location: LCCOMB_X86_Y22_N0
\b2v_inst|Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~0_combout\ = (\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~11_combout\) # (\b2v_inst|indice~17_combout\ $ (\b2v_inst|indice~7_combout\)))) # (!\b2v_inst|indice~6_combout\ & (!\b2v_inst|indice~17_combout\ & (\b2v_inst|indice~7_combout\ 
-- & \b2v_inst|indice~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux17~0_combout\);

-- Location: LCCOMB_X86_Y22_N26
\b2v_inst|Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~1_combout\ = (\b2v_inst|indice~17_combout\ & (((\b2v_inst|indice~6_combout\ & !\b2v_inst|indice~11_combout\)) # (!\b2v_inst|indice~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux17~1_combout\);

-- Location: LCCOMB_X86_Y22_N28
\b2v_inst|Mux17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~2_combout\ = (\b2v_inst|Mux17~0_combout\ & ((\b2v_inst|indice~11_combout\ & ((!\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~11_combout\ & (!\b2v_inst|Mux17~1_combout\ & \b2v_inst|indice~8_combout\)))) # (!\b2v_inst|Mux17~0_combout\ 
-- & (((\b2v_inst|Mux17~1_combout\) # (\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|Mux17~0_combout\,
	datac => \b2v_inst|Mux17~1_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux17~2_combout\);

-- Location: LCCOMB_X86_Y22_N30
\b2v_inst|Mux17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~3_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|Mux17~0_combout\ $ (!\b2v_inst|indice~8_combout\)) # (!\b2v_inst|Mux17~1_combout\))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|Mux17~0_combout\ & (!\b2v_inst|Mux17~1_combout\ & 
-- !\b2v_inst|indice~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|Mux17~0_combout\,
	datac => \b2v_inst|Mux17~1_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux17~3_combout\);

-- Location: LCCOMB_X86_Y22_N16
\b2v_inst|Mux17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~4_combout\ = \b2v_inst|Mux17~2_combout\ $ (((!\b2v_inst|indice~9_combout\ & !\b2v_inst|Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|Mux17~2_combout\,
	datac => \b2v_inst|Mux17~3_combout\,
	combout => \b2v_inst|Mux17~4_combout\);

-- Location: LCCOMB_X90_Y20_N20
\b2v_inst|Mux17~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~9_combout\ = \b2v_inst|indice~8_combout\ $ (((\b2v_inst|indice~11_combout\) # (!\b2v_inst|indice~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux17~9_combout\);

-- Location: LCCOMB_X90_Y20_N16
\b2v_inst|Mux17~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~5_combout\ = \b2v_inst|indice~8_combout\ $ (((\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\ & !\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux17~5_combout\);

-- Location: LCCOMB_X90_Y20_N14
\b2v_inst|Mux17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~10_combout\ = (\b2v_inst|Mux17~8_combout\ & ((\b2v_inst|Mux17~9_combout\) # ((!\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|Mux17~8_combout\ & (((\b2v_inst|indice~17_combout\ & \b2v_inst|Mux17~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux17~8_combout\,
	datab => \b2v_inst|Mux17~9_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|Mux17~5_combout\,
	combout => \b2v_inst|Mux17~10_combout\);

-- Location: LCCOMB_X88_Y21_N20
\b2v_inst|Mux17~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~11_combout\ = (\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~6_combout\) # (\b2v_inst|indice~7_combout\)))) # (!\b2v_inst|indice~9_combout\ & (((\b2v_inst|indice~7_combout\) # 
-- (\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux17~11_combout\);

-- Location: LCCOMB_X88_Y21_N8
\b2v_inst|Mux17~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~13_combout\ = (\b2v_inst|indice~17_combout\ & (!\b2v_inst|Mux17~12_combout\ & ((!\b2v_inst|indice~11_combout\)))) # (!\b2v_inst|indice~17_combout\ & (((!\b2v_inst|Mux17~11_combout\ & \b2v_inst|indice~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux17~12_combout\,
	datab => \b2v_inst|Mux17~11_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux17~13_combout\);

-- Location: LCCOMB_X88_Y21_N26
\b2v_inst|Mux17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~14_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~7_combout\ $ (\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~7_combout\) # 
-- (!\b2v_inst|indice~8_combout\))))) # (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~8_combout\) # (!\b2v_inst|indice~7_combout\))) # (!\b2v_inst|indice~6_combout\ & (\b2v_inst|indice~7_combout\ $ 
-- (\b2v_inst|indice~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux17~14_combout\);

-- Location: LCCOMB_X88_Y21_N28
\b2v_inst|Mux17~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~15_combout\ = ((\b2v_inst|indice\(5) & (\b2v_inst|Mux17~14_combout\ & \b2v_inst|indice\(7))) # (!\b2v_inst|indice\(5) & ((!\b2v_inst|indice\(7))))) # (!\b2v_inst|indice~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|indice\(5),
	datac => \b2v_inst|Mux17~14_combout\,
	datad => \b2v_inst|indice\(7),
	combout => \b2v_inst|Mux17~15_combout\);

-- Location: LCCOMB_X88_Y21_N14
\b2v_inst|Mux17~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~16_combout\ = (\b2v_inst|Mux17~13_combout\) # (\b2v_inst|Mux17~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Mux17~13_combout\,
	datad => \b2v_inst|Mux17~15_combout\,
	combout => \b2v_inst|Mux17~16_combout\);

-- Location: LCCOMB_X89_Y21_N0
\b2v_inst|Mux17~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~17_combout\ = (\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~16_combout\)) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~16_combout\ & (\b2v_inst|Mux17~10_combout\)) # (!\b2v_inst|indice~16_combout\ & 
-- ((\b2v_inst|Mux17~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datac => \b2v_inst|Mux17~10_combout\,
	datad => \b2v_inst|Mux17~16_combout\,
	combout => \b2v_inst|Mux17~17_combout\);

-- Location: LCCOMB_X86_Y21_N20
\b2v_inst|Mux17~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~18_combout\ = (\b2v_inst|indice~6_combout\ & ((\b2v_inst|indice~7_combout\ & (!\b2v_inst|indice~9_combout\ & \b2v_inst|indice~8_combout\)) # (!\b2v_inst|indice~7_combout\ & ((!\b2v_inst|indice~8_combout\))))) # 
-- (!\b2v_inst|indice~6_combout\ & (((\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux17~18_combout\);

-- Location: LCCOMB_X86_Y21_N26
\b2v_inst|Mux17~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~22_combout\ = \b2v_inst|indice~8_combout\ $ (((\b2v_inst|indice~6_combout\ & ((!\b2v_inst|indice~7_combout\))) # (!\b2v_inst|indice~6_combout\ & (!\b2v_inst|indice~9_combout\ & \b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux17~22_combout\);

-- Location: LCCOMB_X88_Y24_N6
\b2v_inst|Mux17~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~19_combout\ = (!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|LessThan0~2_combout\ & (\b2v_inst|indice\(1) $ (\b2v_inst|indice\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|indice\(1),
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|indice\(0),
	combout => \b2v_inst|Mux17~19_combout\);

-- Location: LCCOMB_X86_Y21_N24
\b2v_inst|Mux17~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~21_combout\ = (\b2v_inst|indice~11_combout\ & (((\b2v_inst|Mux17~19_combout\) # (\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~11_combout\ & (\b2v_inst|Mux17~20_combout\ & ((!\b2v_inst|indice~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux17~20_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|Mux17~19_combout\,
	datad => \b2v_inst|indice~17_combout\,
	combout => \b2v_inst|Mux17~21_combout\);

-- Location: LCCOMB_X86_Y21_N0
\b2v_inst|Mux17~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~23_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux17~21_combout\ & ((!\b2v_inst|Mux17~22_combout\))) # (!\b2v_inst|Mux17~21_combout\ & (\b2v_inst|Mux17~18_combout\)))) # (!\b2v_inst|indice~17_combout\ & 
-- (((\b2v_inst|Mux17~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux17~18_combout\,
	datac => \b2v_inst|Mux17~22_combout\,
	datad => \b2v_inst|Mux17~21_combout\,
	combout => \b2v_inst|Mux17~23_combout\);

-- Location: LCCOMB_X86_Y22_N18
\b2v_inst|Mux17~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux17~24_combout\ = (\b2v_inst|indice~10_combout\ & ((\b2v_inst|Mux17~17_combout\ & ((\b2v_inst|Mux17~23_combout\))) # (!\b2v_inst|Mux17~17_combout\ & (\b2v_inst|Mux17~4_combout\)))) # (!\b2v_inst|indice~10_combout\ & 
-- (((\b2v_inst|Mux17~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|Mux17~4_combout\,
	datac => \b2v_inst|Mux17~17_combout\,
	datad => \b2v_inst|Mux17~23_combout\,
	combout => \b2v_inst|Mux17~24_combout\);

-- Location: LCCOMB_X87_Y25_N24
\b2v_inst|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~0_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~7_combout\ $ (!\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~7_combout\ & !\b2v_inst|indice~8_combout\)))) # 
-- (!\b2v_inst|indice~11_combout\ & (((\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux6~0_combout\);

-- Location: LCCOMB_X87_Y25_N18
\b2v_inst|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~3_combout\ = (\b2v_inst|indice~9_combout\ & (((\b2v_inst|indice~7_combout\ & !\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~11_combout\ & (!\b2v_inst|indice~7_combout\ & \b2v_inst|indice~8_combout\)) # 
-- (!\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux6~3_combout\);

-- Location: LCCOMB_X87_Y25_N16
\b2v_inst|Mux6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~4_combout\ = (\b2v_inst|Mux6~2_combout\ & (((!\b2v_inst|Mux6~3_combout\) # (!\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|Mux6~2_combout\ & (\b2v_inst|Mux6~0_combout\ & (\b2v_inst|indice~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux6~2_combout\,
	datab => \b2v_inst|Mux6~0_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|Mux6~3_combout\,
	combout => \b2v_inst|Mux6~4_combout\);

-- Location: LCCOMB_X88_Y21_N24
\b2v_inst|Mux6~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~15_combout\ = (\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~6_combout\) # (\b2v_inst|indice~8_combout\)))) # (!\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~7_combout\ $ (((\b2v_inst|indice~6_combout\ & 
-- \b2v_inst|indice~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux6~15_combout\);

-- Location: LCCOMB_X88_Y21_N30
\b2v_inst|Mux6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~16_combout\ = (!\b2v_inst|Mux6~15_combout\ & (!\b2v_inst|indice~17_combout\ & \b2v_inst|indice~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux6~15_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux6~16_combout\);

-- Location: LCCOMB_X88_Y21_N4
\b2v_inst|Mux6~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~19_combout\ = (\b2v_inst|Mux6~18_combout\) # ((\b2v_inst|Mux6~16_combout\) # ((\b2v_inst|indice\(7) & \b2v_inst|indice~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux6~18_combout\,
	datab => \b2v_inst|indice\(7),
	datac => \b2v_inst|Mux6~16_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux6~19_combout\);

-- Location: LCCOMB_X87_Y21_N28
\b2v_inst|Mux6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux6~20_combout\ = (\b2v_inst|Mux6~14_combout\ & (((\b2v_inst|Mux6~19_combout\) # (!\b2v_inst|indice~10_combout\)))) # (!\b2v_inst|Mux6~14_combout\ & (\b2v_inst|Mux6~4_combout\ & (\b2v_inst|indice~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux6~14_combout\,
	datab => \b2v_inst|Mux6~4_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|Mux6~19_combout\,
	combout => \b2v_inst|Mux6~20_combout\);

-- Location: LCCOMB_X92_Y23_N8
\b2v_inst|salida1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~26_combout\ = (\b2v_inst|salida1[7]~18_combout\ & (((\b2v_inst|Mux6~20_combout\) # (\b2v_inst|salida1[7]~19_combout\)))) # (!\b2v_inst|salida1[7]~18_combout\ & (\b2v_inst|Mux17~24_combout\ & ((!\b2v_inst|salida1[7]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1[7]~18_combout\,
	datab => \b2v_inst|Mux17~24_combout\,
	datac => \b2v_inst|Mux6~20_combout\,
	datad => \b2v_inst|salida1[7]~19_combout\,
	combout => \b2v_inst|salida1~26_combout\);

-- Location: LCCOMB_X92_Y23_N14
\b2v_inst|salida1~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~27_combout\ = (\b2v_inst|salida1~26_combout\ & ((\b2v_inst|Add1~8_combout\) # ((!\b2v_inst|salida1[7]~19_combout\)))) # (!\b2v_inst|salida1~26_combout\ & (((\b2v_inst|Add2~8_combout\ & \b2v_inst|salida1[7]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add1~8_combout\,
	datab => \b2v_inst|Add2~8_combout\,
	datac => \b2v_inst|salida1~26_combout\,
	datad => \b2v_inst|salida1[7]~19_combout\,
	combout => \b2v_inst|salida1~27_combout\);

-- Location: FF_X92_Y23_N15
\b2v_inst|salida1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~27_combout\,
	ena => \b2v_inst|salida1[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(4));

-- Location: FF_X91_Y23_N27
\b2v_inst|salida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida1\(4),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(4));

-- Location: LCCOMB_X91_Y23_N14
\b2v_inst|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~10_combout\ = (\b2v_inst|Mux5~28_combout\ & ((\b2v_inst|Add1~9\) # (GND))) # (!\b2v_inst|Mux5~28_combout\ & (!\b2v_inst|Add1~9\))
-- \b2v_inst|Add1~11\ = CARRY((\b2v_inst|Mux5~28_combout\) # (!\b2v_inst|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux5~28_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~9\,
	combout => \b2v_inst|Add1~10_combout\,
	cout => \b2v_inst|Add1~11\);

-- Location: LCCOMB_X89_Y21_N18
\b2v_inst|Mux16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~8_combout\ = (\b2v_inst|indice~8_combout\ & (((!\b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~9_combout\))) # (!\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\ $ 
-- (!\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux16~8_combout\);

-- Location: LCCOMB_X89_Y21_N28
\b2v_inst|Mux16~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~7_combout\ = (\b2v_inst|indice~8_combout\ & (!\b2v_inst|indice~7_combout\ & ((!\b2v_inst|indice~11_combout\) # (!\b2v_inst|indice~9_combout\)))) # (!\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~9_combout\ & 
-- ((\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux16~7_combout\);

-- Location: LCCOMB_X89_Y21_N8
\b2v_inst|Mux16~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~9_combout\ = (\b2v_inst|indice~10_combout\ & (((\b2v_inst|indice~6_combout\)))) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~6_combout\ & ((\b2v_inst|Mux16~7_combout\))) # (!\b2v_inst|indice~6_combout\ & 
-- (\b2v_inst|Mux16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|Mux16~8_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|Mux16~7_combout\,
	combout => \b2v_inst|Mux16~9_combout\);

-- Location: LCCOMB_X89_Y21_N26
\b2v_inst|Mux16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~6_combout\ = (\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~9_combout\ $ (\b2v_inst|indice~11_combout\ $ (!\b2v_inst|indice~7_combout\)))) # (!\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~11_combout\)) 
-- # (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~11_combout\) # (\b2v_inst|indice~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux16~6_combout\);

-- Location: LCCOMB_X89_Y21_N2
\b2v_inst|Mux16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~10_combout\ = \b2v_inst|indice~8_combout\ $ (((\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~11_combout\ $ (\b2v_inst|indice~7_combout\))) # (!\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~11_combout\ & \b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~7_combout\,
	combout => \b2v_inst|Mux16~10_combout\);

-- Location: LCCOMB_X89_Y21_N20
\b2v_inst|Mux16~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~11_combout\ = (\b2v_inst|indice~10_combout\ & ((\b2v_inst|Mux16~9_combout\ & ((!\b2v_inst|Mux16~10_combout\))) # (!\b2v_inst|Mux16~9_combout\ & (\b2v_inst|Mux16~6_combout\)))) # (!\b2v_inst|indice~10_combout\ & 
-- (\b2v_inst|Mux16~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|Mux16~9_combout\,
	datac => \b2v_inst|Mux16~6_combout\,
	datad => \b2v_inst|Mux16~10_combout\,
	combout => \b2v_inst|Mux16~11_combout\);

-- Location: LCCOMB_X87_Y24_N28
\b2v_inst|indice[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|indice[2]~feeder_combout\ = \b2v_inst|Add3~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Add3~4_combout\,
	combout => \b2v_inst|indice[2]~feeder_combout\);

-- Location: FF_X87_Y24_N29
\b2v_inst|indice[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|indice[2]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|indice\(2));

-- Location: LCCOMB_X87_Y24_N20
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

-- Location: LCCOMB_X87_Y24_N22
\b2v_inst|Mux16~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~13_combout\ = ((!\b2v_inst|indice\(5) & ((\b2v_inst|Mux16~12_combout\) # (!\b2v_inst|indice\(3))))) # (!\b2v_inst|indice~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~12_combout\,
	datab => \b2v_inst|Mux16~12_combout\,
	datac => \b2v_inst|indice\(5),
	datad => \b2v_inst|indice\(3),
	combout => \b2v_inst|Mux16~13_combout\);

-- Location: LCCOMB_X88_Y25_N2
\b2v_inst|Mux16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~14_combout\ = (\b2v_inst|indice~10_combout\ & (!\b2v_inst|indice~7_combout\ & (!\b2v_inst|indice~6_combout\ & !\b2v_inst|indice~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~6_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux16~14_combout\);

-- Location: LCCOMB_X88_Y25_N0
\b2v_inst|Mux16~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~15_combout\ = (\b2v_inst|Mux16~13_combout\) # ((\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~9_combout\ $ (\b2v_inst|Mux16~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|Mux16~13_combout\,
	datad => \b2v_inst|Mux16~14_combout\,
	combout => \b2v_inst|Mux16~15_combout\);

-- Location: LCCOMB_X89_Y21_N30
\b2v_inst|Mux16~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~16_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux16~11_combout\) # ((\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~17_combout\ & (((\b2v_inst|Mux16~15_combout\ & !\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux16~11_combout\,
	datac => \b2v_inst|Mux16~15_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux16~16_combout\);

-- Location: LCCOMB_X86_Y25_N8
\b2v_inst|Mux16~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~17_combout\ = (\b2v_inst|indice~11_combout\ & (\b2v_inst|indice~10_combout\ $ (((\b2v_inst|indice~9_combout\ & !\b2v_inst|indice~6_combout\))))) # (!\b2v_inst|indice~11_combout\ & (((\b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~10_combout\,
	combout => \b2v_inst|Mux16~17_combout\);

-- Location: LCCOMB_X86_Y25_N0
\b2v_inst|Mux16~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~19_combout\ = (\b2v_inst|Mux16~18_combout\ & ((\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~7_combout\ & ((\b2v_inst|Mux16~17_combout\) # (!\b2v_inst|indice~8_combout\))))) # 
-- (!\b2v_inst|Mux16~18_combout\ & ((\b2v_inst|indice~7_combout\) # ((\b2v_inst|Mux16~17_combout\ & !\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux16~18_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|Mux16~17_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux16~19_combout\);

-- Location: LCCOMB_X88_Y25_N8
\b2v_inst|Mux16~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~22_combout\ = \b2v_inst|Mux16~19_combout\ $ (((\b2v_inst|indice\(3) & (\b2v_inst|LessThan0~2_combout\ & !\b2v_inst|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(3),
	datab => \b2v_inst|Mux16~19_combout\,
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|Mux16~22_combout\);

-- Location: LCCOMB_X90_Y21_N2
\b2v_inst|Mux16~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux16~20_combout\ = (\b2v_inst|Mux16~16_combout\ & (((\b2v_inst|Mux16~22_combout\) # (!\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|Mux16~16_combout\ & (\b2v_inst|Mux16~5_combout\ & (\b2v_inst|indice~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux16~5_combout\,
	datab => \b2v_inst|Mux16~16_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|Mux16~22_combout\,
	combout => \b2v_inst|Mux16~20_combout\);

-- Location: LCCOMB_X91_Y23_N2
\b2v_inst|salida1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~28_combout\ = (\b2v_inst|salida1[7]~18_combout\ & (((\b2v_inst|salida1[7]~19_combout\)))) # (!\b2v_inst|salida1[7]~18_combout\ & ((\b2v_inst|salida1[7]~19_combout\ & (\b2v_inst|Add2~10_combout\)) # (!\b2v_inst|salida1[7]~19_combout\ & 
-- ((\b2v_inst|Mux16~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~10_combout\,
	datab => \b2v_inst|Mux16~20_combout\,
	datac => \b2v_inst|salida1[7]~18_combout\,
	datad => \b2v_inst|salida1[7]~19_combout\,
	combout => \b2v_inst|salida1~28_combout\);

-- Location: LCCOMB_X91_Y23_N30
\b2v_inst|salida1~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~29_combout\ = (\b2v_inst|salida1[7]~18_combout\ & ((\b2v_inst|salida1~28_combout\ & ((\b2v_inst|Add1~10_combout\))) # (!\b2v_inst|salida1~28_combout\ & (\b2v_inst|Mux5~28_combout\)))) # (!\b2v_inst|salida1[7]~18_combout\ & 
-- (((\b2v_inst|salida1~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux5~28_combout\,
	datab => \b2v_inst|salida1[7]~18_combout\,
	datac => \b2v_inst|Add1~10_combout\,
	datad => \b2v_inst|salida1~28_combout\,
	combout => \b2v_inst|salida1~29_combout\);

-- Location: FF_X91_Y23_N31
\b2v_inst|salida1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~29_combout\,
	ena => \b2v_inst|salida1[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(5));

-- Location: FF_X91_Y23_N13
\b2v_inst|salida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida1\(5),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(5));

-- Location: LCCOMB_X94_Y23_N18
\b2v_inst|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~12_combout\ = (\b2v_inst|Mux15~17_combout\ & (!\b2v_inst|Add2~11\ & VCC)) # (!\b2v_inst|Mux15~17_combout\ & (\b2v_inst|Add2~11\ $ (GND)))
-- \b2v_inst|Add2~13\ = CARRY((!\b2v_inst|Mux15~17_combout\ & !\b2v_inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux15~17_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~11\,
	combout => \b2v_inst|Add2~12_combout\,
	cout => \b2v_inst|Add2~13\);

-- Location: LCCOMB_X91_Y25_N0
\b2v_inst|Mux4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~16_combout\ = (\b2v_inst|indice~8_combout\ & (((!\b2v_inst|indice~16_combout\) # (!\b2v_inst|indice~7_combout\)) # (!\b2v_inst|indice~6_combout\))) # (!\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~16_combout\) # 
-- ((\b2v_inst|indice~6_combout\ & \b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~8_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux4~16_combout\);

-- Location: LCCOMB_X91_Y25_N2
\b2v_inst|Mux4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~17_combout\ = (\b2v_inst|Mux4~16_combout\ & (\b2v_inst|indice~9_combout\ $ (((!\b2v_inst|indice~16_combout\) # (!\b2v_inst|indice~10_combout\))))) # (!\b2v_inst|Mux4~16_combout\ & (\b2v_inst|indice~9_combout\ & 
-- ((\b2v_inst|indice~10_combout\) # (!\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|Mux4~16_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux4~17_combout\);

-- Location: LCCOMB_X91_Y25_N10
\b2v_inst|Mux4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~15_combout\ = (\b2v_inst|Mux4~13_combout\) # ((\b2v_inst|indice\(6) & (!\b2v_inst|LessThan2~0_combout\ & \b2v_inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux4~13_combout\,
	datab => \b2v_inst|indice\(6),
	datac => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|LessThan0~2_combout\,
	combout => \b2v_inst|Mux4~15_combout\);

-- Location: LCCOMB_X91_Y25_N4
\b2v_inst|Mux4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux4~14_combout\ = (\b2v_inst|Mux4~12_combout\ & (((\b2v_inst|Mux4~15_combout\) # (!\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|Mux4~12_combout\ & (\b2v_inst|Mux4~17_combout\ & (\b2v_inst|indice~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux4~12_combout\,
	datab => \b2v_inst|Mux4~17_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|Mux4~15_combout\,
	combout => \b2v_inst|Mux4~14_combout\);

-- Location: LCCOMB_X91_Y23_N16
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

-- Location: LCCOMB_X86_Y22_N24
\b2v_inst|Mux15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~4_combout\ = (\b2v_inst|indice~10_combout\ & (((!\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~16_combout\) # ((\b2v_inst|indice~6_combout\ & \b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux15~4_combout\);

-- Location: LCCOMB_X86_Y22_N22
\b2v_inst|Mux15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~5_combout\ = (\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~16_combout\ $ (((\b2v_inst|indice~6_combout\) # (\b2v_inst|indice~7_combout\))))) # (!\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~16_combout\ & 
-- ((\b2v_inst|indice~6_combout\) # (\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux15~5_combout\);

-- Location: LCCOMB_X86_Y22_N8
\b2v_inst|Mux15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~6_combout\ = (\b2v_inst|indice~9_combout\ & (((\b2v_inst|indice~8_combout\)) # (!\b2v_inst|Mux15~4_combout\))) # (!\b2v_inst|indice~9_combout\ & (((\b2v_inst|Mux15~5_combout\ & !\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|Mux15~4_combout\,
	datac => \b2v_inst|Mux15~5_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux15~6_combout\);

-- Location: LCCOMB_X91_Y24_N8
\b2v_inst|Mux15~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~18_combout\ = (((\b2v_inst|LessThan2~0_combout\) # (!\b2v_inst|LessThan0~2_combout\)) # (!\b2v_inst|indice\(6))) # (!\b2v_inst|Mux18~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~2_combout\,
	datab => \b2v_inst|indice\(6),
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|LessThan2~0_combout\,
	combout => \b2v_inst|Mux15~18_combout\);

-- Location: LCCOMB_X90_Y22_N24
\b2v_inst|Mux15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~8_combout\ = (\b2v_inst|indice~8_combout\ & ((\b2v_inst|Mux15~6_combout\ & (!\b2v_inst|Mux15~7_combout\)) # (!\b2v_inst|Mux15~6_combout\ & ((\b2v_inst|Mux15~18_combout\))))) # (!\b2v_inst|indice~8_combout\ & 
-- (((\b2v_inst|Mux15~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux15~7_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|Mux15~6_combout\,
	datad => \b2v_inst|Mux15~18_combout\,
	combout => \b2v_inst|Mux15~8_combout\);

-- Location: LCCOMB_X91_Y25_N24
\b2v_inst|Mux15~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~9_combout\ = (\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~8_combout\))) # (!\b2v_inst|indice~9_combout\ & (!\b2v_inst|indice~7_combout\ & !\b2v_inst|indice~8_combout\)))) # 
-- (!\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~9_combout\) # ((\b2v_inst|indice~7_combout\ & \b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux15~9_combout\);

-- Location: LCCOMB_X91_Y25_N12
\b2v_inst|Mux15~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~19_combout\ = (\b2v_inst|LessThan2~0_combout\) # (((!\b2v_inst|Mux15~9_combout\) # (!\b2v_inst|indice\(6))) # (!\b2v_inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|LessThan0~2_combout\,
	datac => \b2v_inst|indice\(6),
	datad => \b2v_inst|Mux15~9_combout\,
	combout => \b2v_inst|Mux15~19_combout\);

-- Location: LCCOMB_X91_Y22_N20
\b2v_inst|Mux15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~10_combout\ = (\b2v_inst|indice~11_combout\ & ((\b2v_inst|Mux15~21_combout\) # ((\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~11_combout\ & (((!\b2v_inst|indice~17_combout\ & \b2v_inst|Mux15~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux15~21_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|Mux15~19_combout\,
	combout => \b2v_inst|Mux15~10_combout\);

-- Location: LCCOMB_X91_Y22_N2
\b2v_inst|Mux15~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux15~17_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux15~10_combout\ & (\b2v_inst|Mux15~16_combout\)) # (!\b2v_inst|Mux15~10_combout\ & ((\b2v_inst|Mux15~8_combout\))))) # (!\b2v_inst|indice~17_combout\ & 
-- (((\b2v_inst|Mux15~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux15~16_combout\,
	datab => \b2v_inst|Mux15~8_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|Mux15~10_combout\,
	combout => \b2v_inst|Mux15~17_combout\);

-- Location: LCCOMB_X92_Y23_N6
\b2v_inst|salida1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~30_combout\ = (\b2v_inst|salida1[7]~18_combout\ & ((\b2v_inst|Mux4~14_combout\) # ((\b2v_inst|salida1[7]~19_combout\)))) # (!\b2v_inst|salida1[7]~18_combout\ & (((\b2v_inst|Mux15~17_combout\ & !\b2v_inst|salida1[7]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1[7]~18_combout\,
	datab => \b2v_inst|Mux4~14_combout\,
	datac => \b2v_inst|Mux15~17_combout\,
	datad => \b2v_inst|salida1[7]~19_combout\,
	combout => \b2v_inst|salida1~30_combout\);

-- Location: LCCOMB_X92_Y23_N4
\b2v_inst|salida1~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~31_combout\ = (\b2v_inst|salida1[7]~19_combout\ & ((\b2v_inst|salida1~30_combout\ & ((\b2v_inst|Add1~12_combout\))) # (!\b2v_inst|salida1~30_combout\ & (\b2v_inst|Add2~12_combout\)))) # (!\b2v_inst|salida1[7]~19_combout\ & 
-- (((\b2v_inst|salida1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1[7]~19_combout\,
	datab => \b2v_inst|Add2~12_combout\,
	datac => \b2v_inst|Add1~12_combout\,
	datad => \b2v_inst|salida1~30_combout\,
	combout => \b2v_inst|salida1~31_combout\);

-- Location: FF_X92_Y23_N5
\b2v_inst|salida1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~31_combout\,
	ena => \b2v_inst|salida1[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(6));

-- Location: LCCOMB_X91_Y23_N0
\b2v_inst|salida[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida[6]~feeder_combout\ = \b2v_inst|salida1\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|salida1\(6),
	combout => \b2v_inst|salida[6]~feeder_combout\);

-- Location: FF_X91_Y23_N1
\b2v_inst|salida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida[6]~feeder_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(6));

-- Location: LCCOMB_X86_Y25_N20
\b2v_inst|Mux3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~8_combout\ = (\b2v_inst|indice~8_combout\ & (((!\b2v_inst|indice~6_combout\) # (!\b2v_inst|indice~9_combout\)) # (!\b2v_inst|indice~7_combout\))) # (!\b2v_inst|indice~8_combout\ & (((\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~8_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~6_combout\,
	combout => \b2v_inst|Mux3~8_combout\);

-- Location: LCCOMB_X86_Y25_N4
\b2v_inst|Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~6_combout\ = (\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~7_combout\ & ((!\b2v_inst|indice~6_combout\) # (!\b2v_inst|indice~9_combout\))) # (!\b2v_inst|indice~7_combout\ & ((\b2v_inst|indice~9_combout\) # 
-- (\b2v_inst|indice~6_combout\))))) # (!\b2v_inst|indice~8_combout\ & (((\b2v_inst|indice~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~8_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~6_combout\,
	combout => \b2v_inst|Mux3~6_combout\);

-- Location: LCCOMB_X86_Y25_N14
\b2v_inst|Mux3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~9_combout\ = (\b2v_inst|Mux3~7_combout\ & ((\b2v_inst|Mux3~8_combout\) # ((!\b2v_inst|indice~10_combout\)))) # (!\b2v_inst|Mux3~7_combout\ & (((!\b2v_inst|Mux3~6_combout\ & \b2v_inst|indice~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux3~7_combout\,
	datab => \b2v_inst|Mux3~8_combout\,
	datac => \b2v_inst|Mux3~6_combout\,
	datad => \b2v_inst|indice~10_combout\,
	combout => \b2v_inst|Mux3~9_combout\);

-- Location: LCCOMB_X90_Y21_N24
\b2v_inst|Mux3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~10_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux3~5_combout\) # ((\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~17_combout\ & (((!\b2v_inst|indice~16_combout\ & \b2v_inst|Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux3~5_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|Mux3~9_combout\,
	combout => \b2v_inst|Mux3~10_combout\);

-- Location: LCCOMB_X86_Y25_N24
\b2v_inst|Mux3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~11_combout\ = (\b2v_inst|indice~9_combout\) # ((\b2v_inst|indice~8_combout\ & (\b2v_inst|indice~7_combout\ & \b2v_inst|indice~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~8_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~6_combout\,
	combout => \b2v_inst|Mux3~11_combout\);

-- Location: LCCOMB_X86_Y25_N26
\b2v_inst|Mux3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~12_combout\ = (\b2v_inst|indice~10_combout\) # ((\b2v_inst|Mux3~11_combout\) # (\b2v_inst|indice~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|Mux3~11_combout\,
	datac => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux3~12_combout\);

-- Location: LCCOMB_X90_Y21_N30
\b2v_inst|Mux3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~13_combout\ = (\b2v_inst|Mux3~10_combout\ & (((\b2v_inst|Mux3~12_combout\) # (!\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|Mux3~10_combout\ & (\b2v_inst|Mux3~3_combout\ & (\b2v_inst|indice~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux3~3_combout\,
	datab => \b2v_inst|Mux3~10_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|Mux3~12_combout\,
	combout => \b2v_inst|Mux3~13_combout\);

-- Location: LCCOMB_X91_Y23_N18
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

-- Location: LCCOMB_X87_Y21_N4
\b2v_inst|Mux14~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~9_combout\ = ((!\b2v_inst|indice~11_combout\) # (!\b2v_inst|indice~10_combout\)) # (!\b2v_inst|Mux14~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux14~8_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux14~9_combout\);

-- Location: LCCOMB_X86_Y21_N28
\b2v_inst|Mux14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~4_combout\ = (\b2v_inst|indice~9_combout\ & (((!\b2v_inst|indice~8_combout\) # (!\b2v_inst|indice~7_combout\)))) # (!\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~6_combout\) # ((\b2v_inst|indice~7_combout\) # 
-- (\b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux14~4_combout\);

-- Location: LCCOMB_X88_Y21_N6
\b2v_inst|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~0_combout\ = (\b2v_inst|indice~9_combout\) # ((\b2v_inst|indice\(2) & \b2v_inst|indice~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice\(2),
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~9_combout\,
	combout => \b2v_inst|Mux14~0_combout\);

-- Location: LCCOMB_X87_Y21_N20
\b2v_inst|Mux14~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~7_combout\ = (\b2v_inst|Mux14~6_combout\ & (((!\b2v_inst|Mux14~0_combout\) # (!\b2v_inst|indice~10_combout\)))) # (!\b2v_inst|Mux14~6_combout\ & (\b2v_inst|Mux14~4_combout\ & (\b2v_inst|indice~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux14~6_combout\,
	datab => \b2v_inst|Mux14~4_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|Mux14~0_combout\,
	combout => \b2v_inst|Mux14~7_combout\);

-- Location: LCCOMB_X87_Y21_N2
\b2v_inst|Mux14~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~10_combout\ = (\b2v_inst|indice~16_combout\ & (((\b2v_inst|indice~17_combout\)))) # (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux14~7_combout\))) # (!\b2v_inst|indice~17_combout\ & 
-- (\b2v_inst|Mux14~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~16_combout\,
	datab => \b2v_inst|Mux14~9_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|Mux14~7_combout\,
	combout => \b2v_inst|Mux14~10_combout\);

-- Location: LCCOMB_X87_Y21_N8
\b2v_inst|Mux14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~2_combout\ = (\b2v_inst|indice~9_combout\) # ((\b2v_inst|indice~8_combout\ & ((\b2v_inst|indice~6_combout\) # (\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux14~2_combout\);

-- Location: LCCOMB_X87_Y21_N0
\b2v_inst|Mux14~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~14_combout\ = (\b2v_inst|Mux14~13_combout\ & (((!\b2v_inst|indice~10_combout\)) # (!\b2v_inst|Mux14~2_combout\))) # (!\b2v_inst|Mux14~13_combout\ & (((\b2v_inst|indice~10_combout\ & \b2v_inst|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux14~13_combout\,
	datab => \b2v_inst|Mux14~2_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|Mux14~0_combout\,
	combout => \b2v_inst|Mux14~14_combout\);

-- Location: LCCOMB_X87_Y21_N30
\b2v_inst|Mux14~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~15_combout\ = (\b2v_inst|Mux14~10_combout\ & (((\b2v_inst|Mux14~14_combout\) # (!\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|Mux14~10_combout\ & (\b2v_inst|Mux14~3_combout\ & (\b2v_inst|indice~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux14~3_combout\,
	datab => \b2v_inst|Mux14~10_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|Mux14~14_combout\,
	combout => \b2v_inst|Mux14~15_combout\);

-- Location: LCCOMB_X94_Y23_N20
\b2v_inst|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add2~14_combout\ = (\b2v_inst|Mux14~15_combout\ & ((\b2v_inst|Add2~13\) # (GND))) # (!\b2v_inst|Mux14~15_combout\ & (!\b2v_inst|Add2~13\))
-- \b2v_inst|Add2~15\ = CARRY((\b2v_inst|Mux14~15_combout\) # (!\b2v_inst|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux14~15_combout\,
	datad => VCC,
	cin => \b2v_inst|Add2~13\,
	combout => \b2v_inst|Add2~14_combout\,
	cout => \b2v_inst|Add2~15\);

-- Location: LCCOMB_X92_Y23_N28
\b2v_inst|salida1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~32_combout\ = (\b2v_inst|salida1[7]~18_combout\ & (((\b2v_inst|salida1[7]~19_combout\)))) # (!\b2v_inst|salida1[7]~18_combout\ & ((\b2v_inst|salida1[7]~19_combout\ & ((\b2v_inst|Add2~14_combout\))) # (!\b2v_inst|salida1[7]~19_combout\ & 
-- (\b2v_inst|Mux14~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1[7]~18_combout\,
	datab => \b2v_inst|Mux14~15_combout\,
	datac => \b2v_inst|Add2~14_combout\,
	datad => \b2v_inst|salida1[7]~19_combout\,
	combout => \b2v_inst|salida1~32_combout\);

-- Location: LCCOMB_X92_Y23_N10
\b2v_inst|salida1~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~33_combout\ = (\b2v_inst|salida1[7]~18_combout\ & ((\b2v_inst|salida1~32_combout\ & (\b2v_inst|Add1~14_combout\)) # (!\b2v_inst|salida1~32_combout\ & ((\b2v_inst|Mux3~13_combout\))))) # (!\b2v_inst|salida1[7]~18_combout\ & 
-- (((\b2v_inst|salida1~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1[7]~18_combout\,
	datab => \b2v_inst|Add1~14_combout\,
	datac => \b2v_inst|Mux3~13_combout\,
	datad => \b2v_inst|salida1~32_combout\,
	combout => \b2v_inst|salida1~33_combout\);

-- Location: FF_X92_Y23_N11
\b2v_inst|salida1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~33_combout\,
	ena => \b2v_inst|salida1[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(7));

-- Location: FF_X91_Y23_N11
\b2v_inst|salida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida1\(7),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(7));

-- Location: LCCOMB_X87_Y21_N24
\b2v_inst|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~0_combout\ = (\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~11_combout\) # ((\b2v_inst|Mux18~27_combout\ & !\b2v_inst|indice~6_combout\)))) # (!\b2v_inst|indice~10_combout\ & (((!\b2v_inst|indice~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux18~27_combout\,
	datab => \b2v_inst|indice~6_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux13~0_combout\);

-- Location: LCCOMB_X87_Y21_N6
\b2v_inst|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~1_combout\ = (!\b2v_inst|indice~16_combout\ & ((\b2v_inst|Mux13~0_combout\) # ((!\b2v_inst|Mux14~1_combout\ & \b2v_inst|indice~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux14~1_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|Mux13~0_combout\,
	combout => \b2v_inst|Mux13~1_combout\);

-- Location: LCCOMB_X88_Y21_N16
\b2v_inst|Mux13~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~7_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|Mux13~1_combout\) # ((\b2v_inst|Mux13~6_combout\ & \b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux13~6_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux13~1_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux13~7_combout\);

-- Location: LCCOMB_X88_Y21_N18
\b2v_inst|Mux13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~10_combout\ = (\b2v_inst|indice\(7)) # (\b2v_inst|indice\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice\(7),
	datac => \b2v_inst|indice\(6),
	combout => \b2v_inst|Mux13~10_combout\);

-- Location: LCCOMB_X88_Y21_N0
\b2v_inst|Mux13~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux13~11_combout\ = (\b2v_inst|Mux13~9_combout\) # ((\b2v_inst|Mux13~7_combout\) # ((!\b2v_inst|Mux13~10_combout\) # (!\b2v_inst|indice~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux13~9_combout\,
	datab => \b2v_inst|Mux13~7_combout\,
	datac => \b2v_inst|indice~12_combout\,
	datad => \b2v_inst|Mux13~10_combout\,
	combout => \b2v_inst|Mux13~11_combout\);

-- Location: LCCOMB_X94_Y23_N22
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

-- Location: LCCOMB_X86_Y25_N6
\b2v_inst|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~4_combout\ = (\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~8_combout\) # ((\b2v_inst|indice~7_combout\ & \b2v_inst|indice~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~8_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~9_combout\,
	datad => \b2v_inst|indice~6_combout\,
	combout => \b2v_inst|Mux3~4_combout\);

-- Location: LCCOMB_X91_Y21_N26
\b2v_inst|Mux3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux3~14_combout\ = (!\b2v_inst|indice~10_combout\ & (!\b2v_inst|Mux3~4_combout\ & !\b2v_inst|indice~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datac => \b2v_inst|Mux3~4_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux3~14_combout\);

-- Location: LCCOMB_X91_Y25_N26
\b2v_inst|Mux7~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux7~23_combout\ = (\b2v_inst|indice~9_combout\ & (\b2v_inst|indice~7_combout\ & \b2v_inst|indice~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~9_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~8_combout\,
	combout => \b2v_inst|Mux7~23_combout\);

-- Location: LCCOMB_X91_Y25_N16
\b2v_inst|Mux2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~6_combout\ = (\b2v_inst|indice~10_combout\ & (((\b2v_inst|indice\(5))))) # (!\b2v_inst|indice~10_combout\ & (\b2v_inst|indice~11_combout\ & (\b2v_inst|Mux7~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~11_combout\,
	datac => \b2v_inst|Mux7~23_combout\,
	datad => \b2v_inst|indice\(5),
	combout => \b2v_inst|Mux2~6_combout\);

-- Location: LCCOMB_X91_Y25_N6
\b2v_inst|Mux2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~7_combout\ = (\b2v_inst|indice~17_combout\ & (((\b2v_inst|Mux3~14_combout\) # (\b2v_inst|Mux2~6_combout\)))) # (!\b2v_inst|indice~17_combout\ & (\b2v_inst|Mux2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux2~5_combout\,
	datab => \b2v_inst|Mux3~14_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|Mux2~6_combout\,
	combout => \b2v_inst|Mux2~7_combout\);

-- Location: LCCOMB_X91_Y23_N28
\b2v_inst|Mux2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux2~8_combout\ = (\b2v_inst|Mux2~2_combout\) # ((!\b2v_inst|indice~16_combout\ & \b2v_inst|Mux2~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux2~2_combout\,
	datab => \b2v_inst|indice~16_combout\,
	datad => \b2v_inst|Mux2~7_combout\,
	combout => \b2v_inst|Mux2~8_combout\);

-- Location: LCCOMB_X92_Y23_N18
\b2v_inst|salida1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~34_combout\ = (\b2v_inst|salida1[7]~18_combout\ & (((\b2v_inst|Mux2~8_combout\) # (\b2v_inst|salida1[7]~19_combout\)))) # (!\b2v_inst|salida1[7]~18_combout\ & (\b2v_inst|Mux13~11_combout\ & ((!\b2v_inst|salida1[7]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1[7]~18_combout\,
	datab => \b2v_inst|Mux13~11_combout\,
	datac => \b2v_inst|Mux2~8_combout\,
	datad => \b2v_inst|salida1[7]~19_combout\,
	combout => \b2v_inst|salida1~34_combout\);

-- Location: LCCOMB_X92_Y23_N20
\b2v_inst|salida1~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~35_combout\ = (\b2v_inst|salida1[7]~19_combout\ & ((\b2v_inst|salida1~34_combout\ & (\b2v_inst|Add1~16_combout\)) # (!\b2v_inst|salida1~34_combout\ & ((\b2v_inst|Add2~16_combout\))))) # (!\b2v_inst|salida1[7]~19_combout\ & 
-- (((\b2v_inst|salida1~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add1~16_combout\,
	datab => \b2v_inst|Add2~16_combout\,
	datac => \b2v_inst|salida1[7]~19_combout\,
	datad => \b2v_inst|salida1~34_combout\,
	combout => \b2v_inst|salida1~35_combout\);

-- Location: FF_X92_Y23_N21
\b2v_inst|salida1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~35_combout\,
	ena => \b2v_inst|salida1[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(8));

-- Location: FF_X91_Y23_N25
\b2v_inst|salida[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida1\(8),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(8));

-- Location: LCCOMB_X91_Y23_N22
\b2v_inst|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~18_combout\ = (\b2v_inst|Mux1~1_combout\ & ((\b2v_inst|Add1~17\) # (GND))) # (!\b2v_inst|Mux1~1_combout\ & (!\b2v_inst|Add1~17\))
-- \b2v_inst|Add1~19\ = CARRY((\b2v_inst|Mux1~1_combout\) # (!\b2v_inst|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux1~1_combout\,
	datad => VCC,
	cin => \b2v_inst|Add1~17\,
	combout => \b2v_inst|Add1~18_combout\,
	cout => \b2v_inst|Add1~19\);

-- Location: LCCOMB_X91_Y21_N18
\b2v_inst|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux12~1_combout\ = (\b2v_inst|indice~10_combout\ & ((\b2v_inst|indice~9_combout\) # ((\b2v_inst|indice~7_combout\ & \b2v_inst|indice~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~10_combout\,
	datab => \b2v_inst|indice~7_combout\,
	datac => \b2v_inst|indice~8_combout\,
	datad => \b2v_inst|indice~9_combout\,
	combout => \b2v_inst|Mux12~1_combout\);

-- Location: LCCOMB_X91_Y22_N16
\b2v_inst|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux12~0_combout\ = (\b2v_inst|indice~10_combout\) # ((\b2v_inst|indice~9_combout\ & ((\b2v_inst|indice~8_combout\) # (\b2v_inst|indice~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~9_combout\,
	datab => \b2v_inst|indice~8_combout\,
	datac => \b2v_inst|indice~7_combout\,
	datad => \b2v_inst|indice~10_combout\,
	combout => \b2v_inst|Mux12~0_combout\);

-- Location: LCCOMB_X91_Y21_N24
\b2v_inst|Mux12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux12~2_combout\ = (\b2v_inst|indice~11_combout\ & (((\b2v_inst|Mux12~0_combout\ & !\b2v_inst|indice~16_combout\)))) # (!\b2v_inst|indice~11_combout\ & (!\b2v_inst|Mux12~1_combout\ & ((\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|Mux12~1_combout\,
	datac => \b2v_inst|Mux12~0_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux12~2_combout\);

-- Location: LCCOMB_X91_Y21_N16
\b2v_inst|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux1~0_combout\ = (\b2v_inst|indice~17_combout\ & ((\b2v_inst|indice\(6)) # ((!\b2v_inst|Mux3~14_combout\ & !\b2v_inst|indice~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Mux3~14_combout\,
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|indice\(6),
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux1~0_combout\);

-- Location: LCCOMB_X91_Y21_N10
\b2v_inst|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux1~1_combout\ = (\b2v_inst|Mux1~0_combout\) # ((\b2v_inst|Mux12~2_combout\ & !\b2v_inst|indice~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux12~2_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|Mux1~0_combout\,
	combout => \b2v_inst|Mux1~1_combout\);

-- Location: LCCOMB_X87_Y21_N12
\b2v_inst|Mux14~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux14~16_combout\ = (\b2v_inst|Mux14~2_combout\ & (\b2v_inst|indice~10_combout\ & \b2v_inst|indice~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|Mux14~2_combout\,
	datac => \b2v_inst|indice~10_combout\,
	datad => \b2v_inst|indice~11_combout\,
	combout => \b2v_inst|Mux14~16_combout\);

-- Location: LCCOMB_X88_Y21_N2
\b2v_inst|Mux12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux12~3_combout\ = ((!\b2v_inst|indice\(7) & ((!\b2v_inst|Mux14~16_combout\) # (!\b2v_inst|indice\(6))))) # (!\b2v_inst|indice~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(6),
	datab => \b2v_inst|indice\(7),
	datac => \b2v_inst|indice~12_combout\,
	datad => \b2v_inst|Mux14~16_combout\,
	combout => \b2v_inst|Mux12~3_combout\);

-- Location: LCCOMB_X91_Y21_N0
\b2v_inst|Mux12~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux12~4_combout\ = (\b2v_inst|Mux12~3_combout\) # ((\b2v_inst|indice~17_combout\ & \b2v_inst|Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|indice~17_combout\,
	datac => \b2v_inst|Mux12~3_combout\,
	datad => \b2v_inst|Mux12~2_combout\,
	combout => \b2v_inst|Mux12~4_combout\);

-- Location: LCCOMB_X92_Y23_N24
\b2v_inst|salida1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~36_combout\ = (\b2v_inst|salida1[7]~18_combout\ & (((\b2v_inst|salida1[7]~19_combout\)))) # (!\b2v_inst|salida1[7]~18_combout\ & ((\b2v_inst|salida1[7]~19_combout\ & (\b2v_inst|Add2~18_combout\)) # (!\b2v_inst|salida1[7]~19_combout\ & 
-- ((\b2v_inst|Mux12~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1[7]~18_combout\,
	datab => \b2v_inst|Add2~18_combout\,
	datac => \b2v_inst|Mux12~4_combout\,
	datad => \b2v_inst|salida1[7]~19_combout\,
	combout => \b2v_inst|salida1~36_combout\);

-- Location: LCCOMB_X92_Y23_N30
\b2v_inst|salida1~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~37_combout\ = (\b2v_inst|salida1[7]~18_combout\ & ((\b2v_inst|salida1~36_combout\ & (\b2v_inst|Add1~18_combout\)) # (!\b2v_inst|salida1~36_combout\ & ((\b2v_inst|Mux1~1_combout\))))) # (!\b2v_inst|salida1[7]~18_combout\ & 
-- (((\b2v_inst|salida1~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1[7]~18_combout\,
	datab => \b2v_inst|Add1~18_combout\,
	datac => \b2v_inst|Mux1~1_combout\,
	datad => \b2v_inst|salida1~36_combout\,
	combout => \b2v_inst|salida1~37_combout\);

-- Location: FF_X92_Y23_N31
\b2v_inst|salida1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~37_combout\,
	ena => \b2v_inst|salida1[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(9));

-- Location: FF_X91_Y23_N7
\b2v_inst|salida[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida1\(9),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(9));

-- Location: LCCOMB_X91_Y21_N8
\b2v_inst|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux0~1_combout\ = ((!\b2v_inst|indice~11_combout\ & !\b2v_inst|Mux12~1_combout\)) # (!\b2v_inst|indice~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|Mux12~1_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux0~1_combout\);

-- Location: LCCOMB_X91_Y22_N0
\b2v_inst|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux11~1_combout\ = ((!\b2v_inst|indice~16_combout\ & ((!\b2v_inst|indice~11_combout\) # (!\b2v_inst|Mux12~0_combout\)))) # (!\b2v_inst|indice~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~17_combout\,
	datab => \b2v_inst|Mux12~0_combout\,
	datac => \b2v_inst|indice~11_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux11~1_combout\);

-- Location: LCCOMB_X91_Y21_N30
\b2v_inst|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|Mux0~0_combout\ = (\b2v_inst|indice~17_combout\) # ((\b2v_inst|indice~16_combout\ & ((\b2v_inst|indice~11_combout\) # (\b2v_inst|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice~11_combout\,
	datab => \b2v_inst|Mux12~1_combout\,
	datac => \b2v_inst|indice~17_combout\,
	datad => \b2v_inst|indice~16_combout\,
	combout => \b2v_inst|Mux0~0_combout\);

-- Location: LCCOMB_X92_Y23_N22
\b2v_inst|salida1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~38_combout\ = (\b2v_inst|salida1[7]~18_combout\ & (((\b2v_inst|Mux0~0_combout\) # (\b2v_inst|salida1[7]~19_combout\)))) # (!\b2v_inst|salida1[7]~18_combout\ & (\b2v_inst|Mux11~1_combout\ & ((!\b2v_inst|salida1[7]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1[7]~18_combout\,
	datab => \b2v_inst|Mux11~1_combout\,
	datac => \b2v_inst|Mux0~0_combout\,
	datad => \b2v_inst|salida1[7]~19_combout\,
	combout => \b2v_inst|salida1~38_combout\);

-- Location: LCCOMB_X92_Y23_N0
\b2v_inst|salida1~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~39_combout\ = (\b2v_inst|salida1~38_combout\ & (((\b2v_inst|Add1~20_combout\) # (!\b2v_inst|salida1[7]~19_combout\)))) # (!\b2v_inst|salida1~38_combout\ & (\b2v_inst|Add2~20_combout\ & ((\b2v_inst|salida1[7]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~20_combout\,
	datab => \b2v_inst|Add1~20_combout\,
	datac => \b2v_inst|salida1~38_combout\,
	datad => \b2v_inst|salida1[7]~19_combout\,
	combout => \b2v_inst|salida1~39_combout\);

-- Location: FF_X92_Y23_N1
\b2v_inst|salida1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~39_combout\,
	ena => \b2v_inst|salida1[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(10));

-- Location: FF_X91_Y23_N23
\b2v_inst|salida[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida1\(10),
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(10));

-- Location: LCCOMB_X89_Y23_N20
\b2v_inst|salida1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~42_combout\ = (\b2v_inst|indice\(30)) # ((\b2v_inst|LessThan0~0_combout\) # ((\b2v_inst|indice\(8) & \b2v_inst|indice~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(30),
	datab => \b2v_inst|LessThan0~0_combout\,
	datac => \b2v_inst|indice\(8),
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|salida1~42_combout\);

-- Location: LCCOMB_X89_Y23_N4
\b2v_inst|salida1~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~43_combout\ = (\b2v_inst|Add1~22_combout\ & (\b2v_inst|salida1[7]~13_combout\ & ((!\b2v_inst|salida1~42_combout\) # (!\b2v_inst|indice~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add1~22_combout\,
	datab => \b2v_inst|indice~12_combout\,
	datac => \b2v_inst|salida1[7]~13_combout\,
	datad => \b2v_inst|salida1~42_combout\,
	combout => \b2v_inst|salida1~43_combout\);

-- Location: LCCOMB_X89_Y24_N14
\b2v_inst|salida1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~44_combout\ = ((\b2v_inst|LessThan6~0_combout\ & (\b2v_inst|LessThan0~1_combout\ & !\b2v_inst|indice\(30)))) # (!\b2v_inst|indice~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan6~0_combout\,
	datab => \b2v_inst|indice~12_combout\,
	datac => \b2v_inst|LessThan0~1_combout\,
	datad => \b2v_inst|indice\(30),
	combout => \b2v_inst|salida1~44_combout\);

-- Location: LCCOMB_X89_Y23_N28
\b2v_inst|LessThan8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|LessThan8~2_combout\ = ((\b2v_inst|LessThan8~3_combout\ & ((\b2v_inst|LessThan0~0_combout\) # (\b2v_inst|indice~14_combout\)))) # (!\b2v_inst|salida1[7]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan8~3_combout\,
	datab => \b2v_inst|LessThan0~0_combout\,
	datac => \b2v_inst|salida1[7]~13_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|LessThan8~2_combout\);

-- Location: LCCOMB_X89_Y23_N22
\b2v_inst|salida1~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~45_combout\ = (\b2v_inst|Add2~22_combout\ & (\b2v_inst|LessThan8~2_combout\ & ((\b2v_inst|salida1\(11)) # (\b2v_inst|salida1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Add2~22_combout\,
	datab => \b2v_inst|salida1\(11),
	datac => \b2v_inst|salida1~44_combout\,
	datad => \b2v_inst|LessThan8~2_combout\,
	combout => \b2v_inst|salida1~45_combout\);

-- Location: LCCOMB_X89_Y23_N12
\b2v_inst|salida1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~50_combout\ = (\b2v_inst|indice~14_combout\) # ((!\b2v_inst|LessThan2~0_combout\ & (\b2v_inst|LessThan0~0_combout\ & \b2v_inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|LessThan2~0_combout\,
	datab => \b2v_inst|LessThan0~0_combout\,
	datac => \b2v_inst|LessThan0~2_combout\,
	datad => \b2v_inst|indice~14_combout\,
	combout => \b2v_inst|salida1~50_combout\);

-- Location: LCCOMB_X89_Y23_N2
\b2v_inst|salida1~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~51_combout\ = (\b2v_inst|indice\(31) & (\b2v_inst|LessThan2~0_combout\ & ((\b2v_inst|salida1~50_combout\) # (!\b2v_inst|salida1[7]~48_combout\)))) # (!\b2v_inst|indice\(31) & (((\b2v_inst|salida1~50_combout\)) # 
-- (!\b2v_inst|salida1[7]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|indice\(31),
	datab => \b2v_inst|salida1[7]~48_combout\,
	datac => \b2v_inst|LessThan2~0_combout\,
	datad => \b2v_inst|salida1~50_combout\,
	combout => \b2v_inst|salida1~51_combout\);

-- Location: LCCOMB_X89_Y23_N8
\b2v_inst|salida1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida1~46_combout\ = (\b2v_inst|salida1~51_combout\ & ((\b2v_inst|salida1~41_combout\) # ((\b2v_inst|salida1~43_combout\) # (\b2v_inst|salida1~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|salida1~41_combout\,
	datab => \b2v_inst|salida1~43_combout\,
	datac => \b2v_inst|salida1~45_combout\,
	datad => \b2v_inst|salida1~51_combout\,
	combout => \b2v_inst|salida1~46_combout\);

-- Location: FF_X89_Y23_N9
\b2v_inst|salida1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst|salida1~46_combout\,
	ena => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida1\(11));

-- Location: LCCOMB_X89_Y23_N16
\b2v_inst|salida[11]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|salida[11]~0_combout\ = !\b2v_inst|salida1\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|salida1\(11),
	combout => \b2v_inst|salida[11]~0_combout\);

-- Location: FF_X88_Y23_N7
\b2v_inst|salida[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \b2v_inst|salida[11]~0_combout\,
	clrn => \b2v_inst5|altpll_component|auto_generated|ALT_INV_locked~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst|salida\(11));

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
END structure;


