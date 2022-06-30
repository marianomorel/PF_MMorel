-- Quartus II VHDL Template
-- Binary Up/Down conter with Saturation

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity contador is

--	generic
	--(
		--MIN_cont : integer := 0;
		--MAX_cont : integer := 8191
	--);

	port 
	(
		clk		: in std_logic;
		reset	   : in std_logic;
		periodos : in std_logic_vector (1 downto 0);
		q		   : out std_logic;
		F_I      : in std_logic_vector(3 downto 0)
	);

end entity;

architecture behavioral of contador is
	signal cont_vector : std_logic_vector (13 downto 0);
	signal MAX_cont: integer range 0 to 16384;
	signal indice: integer range 0 to 13;
	signal F: integer range 1 to 15;
begin

   F <= to_integer(unsigned(F_I)); 
	-- los saltos de F ahora solo se podran hacer de 1, 2, 4 y 8 muestras, cualquier otra combinacion no es valida
	--aunque se podrian ingresar mas cantidad bits para F_in si se requiere
	
	process (clk, F, periodos)
		variable cnt : integer range 0 to 16384;
		
	begin
	
	--case periodos is
	--when "00" => MAX_cont<=1023; 
   --indice<=9;
		-- Sequential Statement(s)
	--when "01" => MAX_cont<=2047;
	--indice<=10;
		-- Sequential Statement(s)
	---when "10" => MAX_cont<=4095;
   --indice<=11;	
		-- Sequential Statement(s)
	--when "11" => MAX_cont<=16383;
   --indice<=13;	
		-- Sequential Statement(s)
   --end case;
	
	case periodos is
	when "00" =>
                                    if F=1 then 
										         MAX_cont<=1023;
										         indice<=9;
										      elsif F=2 then 
										         MAX_cont<=511;
										         indice<=8;
										      elsif F=4 then
										         MAX_cont<=255;
										         indice<=7;
										      elsif F=8 then
										         MAX_cont<=127;
										         indice<=6;
										      else MAX_cont<=1023;
										         indice<=9;
										      end if;
   when "01" =>
	
	                                 if F=1 then 
										         MAX_cont<=2047;
										         indice<=10;
										      elsif F=2 then 
										         MAX_cont<=1023;
										         indice<=9;
										      elsif F=4 then
										         MAX_cont<=511;
										         indice<=8;
										      elsif F=8 then
										         MAX_cont<=255;
										         indice<=7;
										      else MAX_cont<=2047;
										         indice<=10;
										      end if;
  when "10" =>
	
	                                 if F=1 then 
										         MAX_cont<=4095;
										         indice<=11;
										      elsif F=2 then 
										         MAX_cont<=2047;
										         indice<=10;
										      elsif F=4 then
										         MAX_cont<=1023;
										         indice<=9;
										      elsif F=8 then
										         MAX_cont<=511;
										         indice<=8;
										      else MAX_cont<=4095;
										         indice<=11;
										      end if;
	when "11" =>
	
	                                 if F=1 then 
										         MAX_cont<=16383;
										         indice<=13;
										      elsif F=2 then 
										         MAX_cont<=8191;
										         indice<=12;
										      elsif F=4 then
										         MAX_cont<=4095;
										         indice<=11;
										      elsif F=8 then
										         MAX_cont<=2047;
										         indice<=10;
										      else MAX_cont<=16383;
										         indice<=13;
										      end if;
	end case;
	
		-- Synchronously update the conter
			if (reset = '1') then
				-- Reset the conter to 0
				cnt := 0;

			elsif (rising_edge(clk)) then
				-- Increment/decrement the conter, 
				-- if the limit is not exceeded
				cnt := cnt + 1;
				if (cnt=MAX_cont) then 
				cnt:=0;
				end if;
      	end if;
		-- Output the current cont
		cont_vector <= std_logic_vector(to_signed((cnt), cont_vector'length));
	end process;
   	
   q<=cont_vector(indice); 
 
 end behavioral; 