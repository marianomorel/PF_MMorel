LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_TEXTIO.ALL;
USE STD.TEXTIO.ALL;

--Este codigo se usa como prueba para poder ejecutar una correcta simulacion en el programa MODELSIM
--Contiene todas las señales de entrada/salida del conjunto de bloques que se pueden ver en el archivo 
--MODULADORSCH

entity modulador_TB is 
end modulador_TB;

architecture comportamiento of modulador_TB is

component moduladorSCH_VHDL 
	port
	(
		entrada :  IN  STD_LOGIC;
		c0 :  OUT  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		locked :  OUT  STD_LOGIC;
		data1_inLSB: in std_LOGIC;
		data1_inMSB: in std_LOGIC;
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
		salida :  OUT  STD_LOGIC_VECTOR(11 DOWNTO 0)
		
	);
end component;

constant tiempo : time := 8 ns;
signal entrada: std_logic;
signal c0 :  STD_LOGIC;
signal reset: std_logic:='0';
signal locked : STD_LOGIC;
signal rlj: std_logic;
signal q :  STD_LOGIC;
signal F_in :  STD_LOGIC_VECTOR(4 DOWNTO 0):="00000";
signal periodos : std_logic_vector (1 downto 0):="10";
signal sal :  STD_LOGIC_vector(1 downto 0);
signal dato_o: STD_LOGIC_vector(1 downto 0);
signal data1_inLSB: std_LOGIC:='0';
signal data1_inMSB: std_LOGIC:='0';
signal LED_SEL :  STD_LOGIC;
signal PB_N : STD_LOGIC:='0';
signal cuenta_o: STD_LOGIC_VECTOR(10 DOWNTO 0);
signal indice_o: STD_LOGIC_VECTOR(10 DOWNTO 0);
signal salida: std_logic_vector (11 downto 0);
signal LED :  STD_LOGIC;

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
data1_inLSB=>data1_inLSB,
data1_inMSB=>data1_inMSB,
LED_SEL=>LED_SEL,
PB_N=>PB_N,
indice_o=>indice_o,
salida=>salida,
LED=>LED 
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
	  wait;
end process; 
 
end; 