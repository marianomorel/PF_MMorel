-- Quartus II VHDL Template
-- Binary Up/Down conter with Saturation

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity contador2 is

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
		q		   : buffer std_logic;
		F_in     : in std_logic_vector(4 downto 0)
	);

end entity;

architecture behavioral of contador2 is
	--signal cont_vector : std_logic_vector (13 downto 0);
	signal MAX_cont: integer range 0 to 8193;
	--signal indice: integer range 0 to 13;
	signal F: integer range 1 to 32;
begin

   F <= to_integer(unsigned(F_in))+1; 
	
	
process (periodos)
	
	begin
	
	case periodos is
	when "00" => 
        if F=1 then
    	  MAX_cont<=512;--1024/2F (truncamiento en todos los casos)
		  elsif F=2 then
    	  MAX_cont<=256;
		  elsif F=3 then
    	  MAX_cont<=170;
		  elsif F=4 then
    	  MAX_cont<=128;
		  elsif F=5 then
    	  MAX_cont<=102;
		  elsif F=6 then
    	  MAX_cont<=85;
		  elsif F=7 then
    	  MAX_cont<=73;
		  elsif F=8 then
    	  MAX_cont<=64;
		  elsif F=9 then
    	  MAX_cont<=56;
		  elsif F=10 then
    	  MAX_cont<=51;
		  elsif F=11 then
    	  MAX_cont<=46;
		  elsif F=12 then
    	  MAX_cont<=42;
		  elsif F=13 then
    	  MAX_cont<=39;
		  elsif F=14 then
    	  MAX_cont<=36;
		  elsif F=15 then
    	  MAX_cont<=34;
		  elsif F=16 then
    	  MAX_cont<=32;
		  elsif F=17 then
    	  MAX_cont<=30;
		  elsif F=18 then
    	  MAX_cont<=28;
		  elsif F=19 then
    	  MAX_cont<=26;
		  elsif F=20 then
    	  MAX_cont<=25;
		  elsif F=21 then
    	  MAX_cont<=24;
		  elsif F=22 then
    	  MAX_cont<=23;
		  elsif F=23 then
    	  MAX_cont<=22;
		  elsif F=24 then
    	  MAX_cont<=21;
		  elsif F=25 then
    	  MAX_cont<=20;
		  elsif F=26 then
    	  MAX_cont<=19;
		  elsif F=27 then
    	  MAX_cont<=18;
		  elsif F=28 then
    	  MAX_cont<=18;
		  elsif F=29 then
    	  MAX_cont<=17;
		  elsif F=30 then
    	  MAX_cont<=17;
		  elsif F=31 then
    	  MAX_cont<=16;
		  elsif F=32 then
    	  MAX_cont<=16;		  
		  end if;
		  
	when "01" =>
        if F=1 then	--2048/2F
		  MAX_cont<=1024;
	     elsif F=2 then 
    	  MAX_cont<=512;
		  elsif F=3 then
    	  MAX_cont<=341;
		  elsif F=4 then
    	  MAX_cont<=256;
		  elsif F=5 then
    	  MAX_cont<=204;
		  elsif F=6 then
    	  MAX_cont<=170;
		  elsif F=7 then
    	  MAX_cont<=146;
		  elsif F=8 then
    	  MAX_cont<=128;
		  elsif F=9 then
    	  MAX_cont<=113;
		  elsif F=10 then
    	  MAX_cont<=102;
		  elsif F=11 then
    	  MAX_cont<=93;
		  elsif F=12 then
    	  MAX_cont<=85;
		  elsif F=13 then
    	  MAX_cont<=78;
		  elsif F=14 then
    	  MAX_cont<=73;
		  elsif F=15 then
    	  MAX_cont<=68;
		  elsif F=16 then
    	  MAX_cont<=64;
		  elsif F=17 then
    	  MAX_cont<=60;
		  elsif F=18 then
    	  MAX_cont<=56;
		  elsif F=19 then
    	  MAX_cont<=53;
		  elsif F=20 then
    	  MAX_cont<=51;
		  elsif F=21 then
    	  MAX_cont<=48;
		  elsif F=22 then
    	  MAX_cont<=46;
		  elsif F=23 then
    	  MAX_cont<=44;
		  elsif F=24 then
    	  MAX_cont<=42;
		  elsif F=25 then
    	  MAX_cont<=40;
		  elsif F=26 then
    	  MAX_cont<=39;
		  elsif F=27 then
    	  MAX_cont<=37;
		  elsif F=28 then
    	  MAX_cont<=36;
		  elsif F=29 then
    	  MAX_cont<=35;
		  elsif F=30 then
    	  MAX_cont<=34;
		  elsif F=31 then
    	  MAX_cont<=33;
		  elsif F=32 then
    	  MAX_cont<=32;		  
		  end if;
	
	when "10" => 
	     if F=1 then	--4096/2F
		  MAX_cont<=2048;
	     elsif F=2 then 
    	  MAX_cont<=1024;
		  elsif F=3 then
    	  MAX_cont<=682;
		  elsif F=4 then
    	  MAX_cont<=512;
		  elsif F=5 then
    	  MAX_cont<=409;
		  elsif F=6 then
    	  MAX_cont<=341;
		  elsif F=7 then
    	  MAX_cont<=292;
		  elsif F=8 then
    	  MAX_cont<=256;
		  elsif F=9 then
    	  MAX_cont<=227;
		  elsif F=10 then
    	  MAX_cont<=204;
		  elsif F=11 then
    	  MAX_cont<=186;
		  elsif F=12 then
    	  MAX_cont<=170;
		  elsif F=13 then
    	  MAX_cont<=157;
		  elsif F=14 then
    	  MAX_cont<=146;
		  elsif F=15 then
    	  MAX_cont<=136;
		  elsif F=16 then
    	  MAX_cont<=128;
		  elsif F=17 then
    	  MAX_cont<=120;
		  elsif F=18 then
    	  MAX_cont<=113;
		  elsif F=19 then
    	  MAX_cont<=107;
		  elsif F=20 then
    	  MAX_cont<=102;
		  elsif F=21 then
    	  MAX_cont<=97;
		  elsif F=22 then
    	  MAX_cont<=93;
		  elsif F=23 then
    	  MAX_cont<=89;
		  elsif F=24 then
    	  MAX_cont<=85;
		  elsif F=25 then
    	  MAX_cont<=81;
		  elsif F=26 then
    	  MAX_cont<=78;
		  elsif F=27 then
    	  MAX_cont<=75;
		  elsif F=28 then
    	  MAX_cont<=73;
		  elsif F=29 then
    	  MAX_cont<=70;
		  elsif F=30 then
    	  MAX_cont<=68;
		  elsif F=31 then
    	  MAX_cont<=66;
		  elsif F=32 then
    	  MAX_cont<=64;		  
		  end if;
	
	when "11" => 
        if F=1 then	--8192/2F
		  MAX_cont<=4096;
	     elsif F=2 then 
    	  MAX_cont<=2048;
		  elsif F=3 then
    	  MAX_cont<=1365;
		  elsif F=4 then
    	  MAX_cont<=1024;
		  elsif F=5 then
    	  MAX_cont<=819;
		  elsif F=6 then
    	  MAX_cont<=682;
		  elsif F=7 then
    	  MAX_cont<=585;
		  elsif F=8 then
    	  MAX_cont<=512;
		  elsif F=9 then
    	  MAX_cont<=455;
		  elsif F=10 then
    	  MAX_cont<=409;
		  elsif F=11 then
    	  MAX_cont<=372;
		  elsif F=12 then
    	  MAX_cont<=341;
		  elsif F=13 then
    	  MAX_cont<=315;
		  elsif F=14 then
    	  MAX_cont<=292;
		  elsif F=15 then
    	  MAX_cont<=273;
		  elsif F=16 then
    	  MAX_cont<=256;
		  elsif F=17 then
    	  MAX_cont<=240;
		  elsif F=18 then
    	  MAX_cont<=227;
		  elsif F=19 then
    	  MAX_cont<=215;
		  elsif F=20 then
    	  MAX_cont<=204;
		  elsif F=21 then
    	  MAX_cont<=195;
		  elsif F=22 then
    	  MAX_cont<=186;
		  elsif F=23 then
    	  MAX_cont<=178;
		  elsif F=24 then
    	  MAX_cont<=170;
		  elsif F=25 then
    	  MAX_cont<=163;
		  elsif F=26 then
    	  MAX_cont<=157;
		  elsif F=27 then
    	  MAX_cont<=151;
		  elsif F=28 then
    	  MAX_cont<=146;
		  elsif F=29 then
    	  MAX_cont<=141;
		  elsif F=30 then
    	  MAX_cont<=136;
		  elsif F=31 then
    	  MAX_cont<=132;
		  elsif F=32 then
    	  MAX_cont<=128;		  
		  end if;
 
  end case;
	
end process;
	
	
	process (clk) 
		variable cnt : integer range 0 to 8193;
		--variable se : integer range 0 to 8193;
	begin
	
		-- Synchronously update the conter
			if (reset = '1') then
				-- Reset the conter to 0
				cnt := 0;

			elsif (clk'event and clk='1') then
				-- Increment/decrement the conter, 
				-- if the limit is not exceeded
				cnt := cnt + 1;
				if (cnt=MAX_cont) then 
				cnt:=0;
				q<=not(q);
				--elsif (se=MAX_cont) then
				--cnt:=0;
				--q<=not(q);
				--se:=0;
				end if;
			end if;
		-- Output the current cont
		--cont_vector <= std_logic_vector(to_signed((cnt), cont_vector'length));
		
	end process;
	
	--process (r_in) --en este proceso "sincronizo" la salida de onda con el contador2. la idea es que q cambie
                  -- tanto al llegar al maxcont o bien con el flanco ascendente de r_in. no me permite tener dos relojes
					   -- asi que lo hago con dos procesos	
		--variable se : integer range 0 to 8193;
		
	--begin
	
		   --if (r_in'event and r_in='1') then --NUEVO no se si esta funcionando--
				-- Increment/decrement the conter, 
				-- if the limit is not exceeded	
				--se:=MAX_cont;
			--end if;
		-- Output the current cont
	--end process;
   	
   --q<='1'; 
 
 end behavioral; 