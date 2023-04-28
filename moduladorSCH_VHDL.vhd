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
-- CREATED		"Thu Apr 27 15:21:26 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY moduladorSCH_VHDL IS 
	PORT
	(
		entrada :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		PB_N :  IN  STD_LOGIC;
		FASE_IN :  IN  STD_LOGIC;
		data1_in :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		F_in :  IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		periodos :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		locked :  OUT  STD_LOGIC;
		c0 :  OUT  STD_LOGIC;
		q :  OUT  STD_LOGIC;
		GND :  OUT  STD_LOGIC;
		rlj :  OUT  STD_LOGIC;
		LED :  OUT  STD_LOGIC;
		LED_SEL :  OUT  STD_LOGIC;
		cuenta_o :  OUT  STD_LOGIC_VECTOR(10 DOWNTO 0);
		dato_o :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		indice_o :  OUT  STD_LOGIC_VECTOR(10 DOWNTO 0);
		sal :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0);
		salida :  OUT  STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END moduladorSCH_VHDL;

ARCHITECTURE bdf_type OF moduladorSCH_VHDL IS 

COMPONENT onda
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 fase : IN STD_LOGIC;
		 dato : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 F_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 rlj : OUT STD_LOGIC;
		 cuenta_o : OUT STD_LOGIC_VECTOR(10 DOWNTO 0);
		 dato_o : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
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

COMPONENT pulsador
	PORT(CLK : IN STD_LOGIC;
		 RESET : IN STD_LOGIC;
		 PB_OUT : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT multiplexor
	PORT(sel : IN STD_LOGIC;
		 data0_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 data1_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 data_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reloj
	PORT(inclk0 : IN STD_LOGIC;
		 areset : IN STD_LOGIC;
		 c0 : OUT STD_LOGIC;
		 c1 : OUT STD_LOGIC;
		 locked : OUT STD_LOGIC
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

COMPONENT antirrebote
	PORT(PB_N : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 RESET : IN STD_LOGIC;
		 FASE_IN : IN STD_LOGIC;
		 PB_SIN_REBOTE : OUT STD_LOGIC;
		 FASE_OUT : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT pseudoaleatorio
	PORT(clk : IN STD_LOGIC;
		 rst : IN STD_LOGIC;
		 sal : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;


BEGIN 
GND <= '0';
locked <= SYNTHESIZED_WIRE_19;
c0 <= SYNTHESIZED_WIRE_0;
q <= SYNTHESIZED_WIRE_17;
rlj <= SYNTHESIZED_WIRE_4;
LED <= SYNTHESIZED_WIRE_10;
LED_SEL <= SYNTHESIZED_WIRE_11;
sal <= SYNTHESIZED_WIRE_12;



b2v_inst : onda
PORT MAP(clk => SYNTHESIZED_WIRE_0,
		 rst => SYNTHESIZED_WIRE_19,
		 fase => SYNTHESIZED_WIRE_2,
		 dato => SYNTHESIZED_WIRE_3,
		 F_in => F_in,
		 rlj => SYNTHESIZED_WIRE_4,
		 cuenta_o => cuenta_o,
		 dato_o => dato_o,
		 indice_o => indice_o,
		 salida => salida);


b2v_inst1 : contador_rlj
PORT MAP(clk => SYNTHESIZED_WIRE_4,
		 reset => SYNTHESIZED_WIRE_19,
		 periodos => periodos,
		 q => SYNTHESIZED_WIRE_17);


b2v_inst12 : pulsador
PORT MAP(CLK => SYNTHESIZED_WIRE_6,
		 RESET => SYNTHESIZED_WIRE_19,
		 PB_OUT => SYNTHESIZED_WIRE_11);


b2v_inst13 : pulsador
PORT MAP(CLK => SYNTHESIZED_WIRE_8,
		 RESET => SYNTHESIZED_WIRE_19,
		 PB_OUT => SYNTHESIZED_WIRE_2);



SYNTHESIZED_WIRE_19 <= NOT(SYNTHESIZED_WIRE_10);



b2v_inst4 : multiplexor
PORT MAP(sel => SYNTHESIZED_WIRE_11,
		 data0_in => SYNTHESIZED_WIRE_12,
		 data1_in => data1_in,
		 data_out => SYNTHESIZED_WIRE_3);


b2v_inst5 : reloj
PORT MAP(inclk0 => entrada,
		 areset => reset,
		 c0 => SYNTHESIZED_WIRE_0,
		 c1 => SYNTHESIZED_WIRE_13,
		 locked => SYNTHESIZED_WIRE_10);


b2v_inst6 : reloj_ar
GENERIC MAP(MAX_COUNT => 10,
			MIN_COUNT => 0
			)
PORT MAP(clk => SYNTHESIZED_WIRE_13,
		 reset => SYNTHESIZED_WIRE_19,
		 reloj_out => SYNTHESIZED_WIRE_15);


b2v_inst7 : antirrebote
PORT MAP(PB_N => PB_N,
		 CLK => SYNTHESIZED_WIRE_15,
		 RESET => SYNTHESIZED_WIRE_19,
		 FASE_IN => FASE_IN,
		 PB_SIN_REBOTE => SYNTHESIZED_WIRE_6,
		 FASE_OUT => SYNTHESIZED_WIRE_8);


b2v_inst8 : pseudoaleatorio
PORT MAP(clk => SYNTHESIZED_WIRE_17,
		 rst => SYNTHESIZED_WIRE_19,
		 sal => SYNTHESIZED_WIRE_12);


END bdf_type;