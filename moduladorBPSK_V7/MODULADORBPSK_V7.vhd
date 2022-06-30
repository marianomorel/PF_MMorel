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
-- CREATED		"Tue May 17 19:30:12 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY MODULADORBPSK_V7 IS 
	PORT
	(
		LED :  OUT  STD_LOGIC;
		GND :  OUT  STD_LOGIC;
		entrada :  IN  STD_LOGIC;
		c0 :  OUT  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		locked :  OUT  STD_LOGIC;
		F_in :  IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		periodos :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		indice_o :  OUT  STD_LOGIC_VECTOR(10 DOWNTO 0);
		cuenta_o :  OUT  STD_LOGIC_VECTOR(10 DOWNTO 0);
		q :  OUT  STD_LOGIC;
		rlj :  OUT  STD_LOGIC;
		dato_o :  OUT  STD_LOGIC;
		prng_o :  OUT  STD_LOGIC;
		salida :  OUT  STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END MODULADORBPSK_V7;

ARCHITECTURE bdf_type OF MODULADORBPSK_V7 IS 

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

COMPONENT contador2
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 F_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
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

COMPONENT retardo
	PORT(sal_in : IN STD_LOGIC;
		 cuenta_in : IN STD_LOGIC;
		 prng_o : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;


BEGIN 
GND <= '0';
locked <= SYNTHESIZED_WIRE_11;
c0 <= SYNTHESIZED_WIRE_10;
q <= SYNTHESIZED_WIRE_6;
rlj <= SYNTHESIZED_WIRE_9;
LED <= SYNTHESIZED_WIRE_5;



b2v_inst : onda
PORT MAP(clk => SYNTHESIZED_WIRE_10,
		 rst => SYNTHESIZED_WIRE_11,
		 dato => SYNTHESIZED_WIRE_12,
		 F_in => F_in,
		 dato_o => dato_o,
		 rlj => SYNTHESIZED_WIRE_9,
		 cuenta_o => cuenta_o,
		 indice_o => indice_o,
		 salida => salida);


b2v_inst1 : contador2
PORT MAP(clk => SYNTHESIZED_WIRE_10,
		 reset => SYNTHESIZED_WIRE_11,
		 F_in => F_in,
		 periodos => periodos,
		 q => SYNTHESIZED_WIRE_6);



SYNTHESIZED_WIRE_11 <= NOT(SYNTHESIZED_WIRE_5);



b2v_inst4 : pseudoaleatorio
PORT MAP(clk => SYNTHESIZED_WIRE_6,
		 rst => SYNTHESIZED_WIRE_11,
		 sal => SYNTHESIZED_WIRE_12);


b2v_inst5 : reloj
PORT MAP(inclk0 => entrada,
		 areset => reset,
		 c0 => SYNTHESIZED_WIRE_10,
		 locked => SYNTHESIZED_WIRE_5);


b2v_inst6 : retardo
PORT MAP(sal_in => SYNTHESIZED_WIRE_12,
		 cuenta_in => SYNTHESIZED_WIRE_9,
		 prng_o => prng_o);


END bdf_type;