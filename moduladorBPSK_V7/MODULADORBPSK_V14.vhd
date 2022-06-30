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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Thu May 26 22:52:45 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY MODULADORBPSK_V14 IS 
	PORT
	(
		entrada :  IN  STD_LOGIC;
		c0 :  OUT  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		locked :  OUT  STD_LOGIC;
		F_in :  IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		periodos :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		GND :  OUT  STD_LOGIC;
		q :  OUT  STD_LOGIC;
		rlj :  OUT  STD_LOGIC;
		LED :  OUT  STD_LOGIC;
		prng_o :  OUT  STD_LOGIC;
		dato_o :  OUT  STD_LOGIC;
		datos_ext :  IN  STD_LOGIC;
		LED_0 :  OUT  STD_LOGIC;
		LED_1 :  OUT  STD_LOGIC;
		PB_N :  IN  STD_LOGIC;
		cuenta_o :  OUT  STD_LOGIC_VECTOR(10 DOWNTO 0);
		indice_o :  OUT  STD_LOGIC_VECTOR(10 DOWNTO 0);
		salida :  OUT  STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END MODULADORBPSK_V14;

ARCHITECTURE bdf_type OF MODULADORBPSK_V14 IS 

COMPONENT onda
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 dato : IN STD_LOGIC;
		 F_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 dato_o : OUT STD_LOGIC;
		 rlj : OUT STD_LOGIC;
		 cuenta_o : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
		 indice_o : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
		 salida : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END COMPONENT;

COMPONENT contador_rlj
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 periodos : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 q : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT pseudoaleatorio
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 sal : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT reloj
	PORT(inclk0 : IN STD_LOGIC;
		 areset : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC;
		 locked : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT antirrebote
	PORT(PB_N : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 PB_SIN_REBOTE : OUT STD_LOGIC;
		 LED_0 : OUT STD_LOGIC;
		 LED_1 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT reloj_ar
GENERIC (MAX_COUNT : INTEGER;
			MIN_COUNT : INTEGER
			);
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 reloj_out : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT multiplexor
	PORT(data0_in : IN STD_LOGIC;
		 data1_in : IN STD_LOGIC;
		 sel : IN STD_LOGIC;
		 data_out : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;


BEGIN 
GND <= '0';
locked <= SYNTHESIZED_WIRE_14;
c0 <= SYNTHESIZED_WIRE_13;
q <= SYNTHESIZED_WIRE_6;
rlj <= SYNTHESIZED_WIRE_3;
LED <= SYNTHESIZED_WIRE_5;
prng_o <= SYNTHESIZED_WIRE_11;



b2v_inst : onda
PORT MAP(clk => SYNTHESIZED_WIRE_13,
		 rst => SYNTHESIZED_WIRE_14,
		 dato => SYNTHESIZED_WIRE_2,
		 F_in => F_in,
		 dato_o => dato_o,
		 rlj => SYNTHESIZED_WIRE_3,
		 cuenta_o => cuenta_o,
		 indice_o => indice_o,
		 salida => salida);


b2v_inst1 : contador_rlj
PORT MAP(clk => SYNTHESIZED_WIRE_3,
		 reset => SYNTHESIZED_WIRE_14,
		 periodos => periodos,
		 q => SYNTHESIZED_WIRE_6);



SYNTHESIZED_WIRE_14 <= NOT(SYNTHESIZED_WIRE_5);



b2v_inst4 : pseudoaleatorio
PORT MAP(clk => SYNTHESIZED_WIRE_6,
		 rst => SYNTHESIZED_WIRE_14,
		 sal => SYNTHESIZED_WIRE_11);


b2v_inst5 : reloj
PORT MAP(inclk0 => entrada,
		 areset => reset,
		 c0 => SYNTHESIZED_WIRE_13,
		 locked => SYNTHESIZED_WIRE_5);


b2v_inst6 : antirrebote
PORT MAP(PB_N => PB_N,
		 clk => SYNTHESIZED_WIRE_8,
		 PB_SIN_REBOTE => SYNTHESIZED_WIRE_12,
		 LED_0 => LED_0,
		 LED_1 => LED_1);


b2v_inst8 : reloj_ar
GENERIC MAP(MAX_COUNT => 625000,
			MIN_COUNT => 0
			)
PORT MAP(clk => SYNTHESIZED_WIRE_13,
		 reset => SYNTHESIZED_WIRE_14,
		 reloj_out => SYNTHESIZED_WIRE_8);


b2v_inst9 : multiplexor
PORT MAP(data0_in => SYNTHESIZED_WIRE_11,
		 data1_in => datos_ext,
		 sel => SYNTHESIZED_WIRE_12,
		 data_out => SYNTHESIZED_WIRE_2);


END bdf_type;