
LIBRARY ieee;
USE ieee.std_logic_1164.all; 

--Este código es la conversión del archivo MODULADORSCH, pasado a VHDL.
--Contiene las entradas/salidas y los cables que conectan a las señales

LIBRARY work;

ENTITY MODULADORBPSK_V16 IS 
	PORT
	(
		entrada :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		datos_ext :  IN  STD_LOGIC;
		PB_N :  IN  STD_LOGIC;
		F_in :  IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		periodos :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		locked :  OUT  STD_LOGIC;
		dato_o :  OUT  STD_LOGIC;
		c0 :  OUT  STD_LOGIC;
		q :  OUT  STD_LOGIC;
		GND :  OUT  STD_LOGIC;
		rlj :  OUT  STD_LOGIC;
		LED :  OUT  STD_LOGIC;
		prng_o :  OUT  STD_LOGIC;
		LED_SEL :  OUT  STD_LOGIC;
		cuenta_o :  OUT  STD_LOGIC_VECTOR(10 DOWNTO 0);
		indice_o :  OUT  STD_LOGIC_VECTOR(10 DOWNTO 0);
		salida :  OUT  STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END MODULADORBPSK_V16;

ARCHITECTURE bdf_type OF MODULADORBPSK_V16 IS 

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

COMPONENT antirrebote
	PORT(PB_N : IN STD_LOGIC:='0';
		 clk : IN STD_LOGIC;
		 RESET : IN STD_LOGIC;
		 PB_SIN_REBOTE : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT pulsador
	PORT(CLK : IN STD_LOGIC;
		 RESET : IN STD_LOGIC;
		 PB_OUT : OUT STD_LOGIC
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
		 c1 : OUT STD_LOGIC;
		 locked : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT multiplexor
	PORT(data0_in : IN STD_LOGIC;
		 data1_in : IN STD_LOGIC;
		 sel : IN STD_LOGIC;
		 data_out : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;


BEGIN 
GND <= '0';
locked <= SYNTHESIZED_WIRE_14;
c0 <= SYNTHESIZED_WIRE_0;
q <= SYNTHESIZED_WIRE_10;
rlj <= SYNTHESIZED_WIRE_3;
LED <= SYNTHESIZED_WIRE_9;
prng_o <= SYNTHESIZED_WIRE_12;
LED_SEL <= SYNTHESIZED_WIRE_13;



b2v_inst : onda
PORT MAP(clk => SYNTHESIZED_WIRE_0,
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
		 q => SYNTHESIZED_WIRE_10);


b2v_inst11 : antirrebote
PORT MAP(clk => SYNTHESIZED_WIRE_5,
		 RESET => SYNTHESIZED_WIRE_14,
		 PB_SIN_REBOTE => SYNTHESIZED_WIRE_7);


b2v_inst12 : pulsador
PORT MAP(CLK => SYNTHESIZED_WIRE_7,
		 RESET => SYNTHESIZED_WIRE_14,
		 PB_OUT => SYNTHESIZED_WIRE_13);



SYNTHESIZED_WIRE_14 <= NOT(SYNTHESIZED_WIRE_9);



b2v_inst4 : pseudoaleatorio
PORT MAP(clk => SYNTHESIZED_WIRE_10,
		 rst => SYNTHESIZED_WIRE_14,
		 sal => SYNTHESIZED_WIRE_12);


b2v_inst5 : reloj
PORT MAP(inclk0 => entrada,
		 areset => reset,
		 c0 => SYNTHESIZED_WIRE_0,
		 c1 => SYNTHESIZED_WIRE_5,
		 locked => SYNTHESIZED_WIRE_9);


b2v_inst9 : multiplexor
PORT MAP(data0_in => SYNTHESIZED_WIRE_12,
		 data1_in => datos_ext,
		 sel => SYNTHESIZED_WIRE_13,
		 data_out => SYNTHESIZED_WIRE_2);


END bdf_type;