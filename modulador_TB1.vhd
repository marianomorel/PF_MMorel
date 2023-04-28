LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

--Este codigo se usa como prueba para poder ejecutar una correcta simulacion en el programa MODELSIM
--Contiene todas las señales de entrada/salida del conjunto de bloques que se pueden ver en el archivo 
--MODULADORSCH

entity modulador_TB1 is 
end modulador_TB1;

architecture comportamiento of modulador_TB1 is

component moduladorSCH_VHDL 
	port
	(
		entrada :  IN  STD_LOGIC;
		c0 :  OUT  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		locked :  OUT  STD_LOGIC;
		data1_in: in std_LOGIC_vector(1 downto 0);
		PB_N :  IN  STD_LOGIC;
		F_in :  IN  STD_LOGIC_VECTOR(4 DOWNTO 0);
		periodos :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		cuenta_o :  OUT  STD_LOGIC_VECTOR(10 DOWNTO 0);
		indice_o :  OUT  STD_LOGIC_VECTOR(10 DOWNTO 0);
		LED :  OUT  STD_LOGIC;
		LED_SEL :  OUT  STD_LOGIC;
		q :  OUT  STD_LOGIC;
		rlj :  OUT  STD_LOGIC;
		sal :  OUT  STD_LOGIC_vector(1 downto 0);
		dato_o :  OUT  STD_LOGIC_vector (1 downto 0);		
		salida :  OUT  STD_LOGIC_VECTOR(11 DOWNTO 0);
		FASE_IN: in std_logic
		
	);
end component;

constant tiempo : time := 8 ns;
signal data1_in: std_logic_vector(1 downto 0):="00";
signal LED :  STD_LOGIC;
signal q :  STD_LOGIC;
signal locked : STD_LOGIC;
signal entrada: std_logic;
signal c0 :  STD_LOGIC;
signal rlj: std_logic;
signal cuenta_o: STD_LOGIC_VECTOR(10 DOWNTO 0);
signal indice_o: STD_LOGIC_VECTOR(10 DOWNTO 0);
signal reset: std_logic;
signal F_in :  STD_LOGIC_VECTOR(4 DOWNTO 0):="00000";
signal dato_o: STD_LOGIC_vector(1 downto 0);
signal periodos : std_logic_vector (1 downto 0):="00";
signal PB_N : STD_LOGIC:='0';
signal LED_SEL :  STD_LOGIC;
signal sal :  STD_LOGIC_vector(1 downto 0);
signal FASE_IN :  STD_LOGIC:='1';
signal salida: std_logic_vector (11 downto 0);

begin
uut: moduladorSCH_VHDL  
port map(
entrada=>entrada,
reset=>reset,
q=>q,
F_in=>F_in,
periodos=>periodos,
sal=>sal,
c0=>c0,
locked=>locked,
dato_o=>dato_o,
cuenta_o=>cuenta_o,
rlj=>rlj,
data1_in=>data1_in,
LED_SEL=>LED_SEL,
PB_N=>PB_N,
indice_o=>indice_o,
salida=>salida,
LED=>LED,
FASE_IN=>FASE_IN 
);

clock_process :process      
begin
    entrada <= '1';
    wait for tiempo/2;
    entrada <= '0';
    wait for tiempo/2;
end process;

estimulo_process :process     
begin 
     reset <= '1'; 
     wait for tiempo*100;
	  reset <= '0';
	  wait for tiempo*100; --PARA OBSERVAR EL COMPORTAMIENTO DEL ANTIRREBOTE
	  PB_N<='1';
	  wait for tiempo*10000;
	  PB_N<='0';
	  wait for tiempo*10000;
	  PB_N<='1';
	  wait for tiempo*10000;
	  PB_N<='0';
	  wait for tiempo*10000;
	  PB_N<='1'; --CAMBIO DE FASE, PERIODOS POR DATO, FRECUENCIA Y MODULACION POR PRNG
	  FASE_IN<='0';
	  F_in<="00001";
	  periodos<="01";
	  wait for tiempo*10000; 
	  PB_N<='0';
	  wait;
end process; 
 
end; 