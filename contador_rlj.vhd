library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

--El bloque CONTADOR_RLJ recibe como señal de reloj un pulso que se genera a partir de un conteo que 
--proviene del bloque ONDA.
--Por otro lado permite seleccionar desde la placa FPGA la cantidad de ciclos que señal que entran por cada
--dato de la señal modulante. 

entity contador_rlj is

	port 
	(
		clk		: in std_logic;
		reset	   : in std_logic;
		periodos : in std_logic_vector (1 downto 0);
		q		   : buffer std_logic
		
	);

end entity;

architecture behavioral of contador_rlj is

	signal MAX_cont: integer range 0 to 32;
	signal salidaM: std_logic;
	signal salidaN: std_logic;
	
begin
	
	
process (periodos,clk,reset)
	
	variable cnt : integer range 0 to 32;
	
	begin
	
	if (reset = '1') then
		 cnt := 0;
		 q<='0';
		 
	elsif (rising_edge(clk)) then 	 
	
	case periodos is
	when "00" => MAX_cont<=0; --entra un ciclo de la señal por dato 
             
		  
	when "01" => MAX_cont<=2; --entran dos ciclos de la señal por dato
                   
                   if (cnt=0) then
						 q<='1';
						 elsif (cnt=1) then
						 q<='0';
						 end if;
						 cnt := cnt + 1;
						 if (cnt=MAX_cont) then 
				           cnt:=0;
						 end if;
						 	
	
	when "10" => MAX_cont<=4; --entran cuatro ciclos de la señal por dato
	                
						 if (cnt=0) then
						 q<='1';
						 elsif (cnt=1) then
						 q<='1';
						 elsif (cnt=2) then
						 q<='0';
						 elsif (cnt=3) then
						 q<='0';
						 end if;
						 cnt := cnt + 1;
						 if (cnt=MAX_cont) then 
				           cnt:=0;
						 end if;
						
						 
	when "11" => MAX_cont<=8; --entran ocho ciclos de la señal por dato
	                
						 if (cnt=0) then
						 q<='1';
						 elsif (cnt=1) then
						 q<='1';
						 elsif (cnt=2) then
						 q<='1';
						 elsif (cnt=3) then
						 q<='1';
						 elsif (cnt=4) then
						 q<='0';
						 elsif (cnt=5) then
						 q<='0';
						 elsif (cnt=6) then
						 q<='0';
						 elsif (cnt=7) then
						 q<='0';
						 end if;
						 cnt := cnt + 1;
						 if (cnt=MAX_cont) then 
				           cnt:=0;
						 end if;
						 
   end case;
  
  end if; 
	
	if (MAX_cont=0) then	
	    q<=clk;
	end if;
end process;

	
end behavioral; 