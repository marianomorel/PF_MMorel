library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

--Este bloque ONDA permite generar una señal senoidal modulada en fase usando 12bits que se usarán para su conversion 
--digital/analógica. 
--A su vez permite variar la frecuencia de la misma mediante una seleccion externa desde la FPGA 

entity onda is 
port(clk:in std_logic;
     rst:in std_logic;
	  fase:in std_logic;
	  F_in: in std_logic_vector(4 downto 0);
 	  dato: in std_logic_vector(1 downto 0);
	  cuenta_o: out integer range 0 to 1025; 
	  dato_o: out std_logic_vector(1 downto 0);
	  indice_o: out integer range 0 to 1025; 
	  rlj: OUT std_logic;
	  salida: out std_logic_vector(11 downto 0) 
	  );
end onda;

architecture comportamiento of onda is 
signal dato_i: integer;
signal salida1: std_logic_vector(11 downto 0); 
signal F: integer range 1 to 32;
type onda_valores is array (0 to 255) of integer range 0 to 4095;
constant onda : onda_valores:= 
(0,12,25,37,50,62,75,87,100,112,125,138,150,163,175,188,200,213,225,238,250,263,275,287,300,312,325,337,349,362,
374,387,399,411,423,436,448,460,472,485,497,509,521,533,545,558,570,582,594,606,618,630,642,654,665,677,689,701,
713,724,736,748,760,771,783,794,806,818,829,840,852,863,875,886,897,909,920,931,942,953,964,976,987,998,1008,1019,
1030,1041,1052,1063,1073,1084,1095,1105,1116,1126,1137,1147,1158,1168,1178,1188,1199,1209,1219,1229,1239,1249,1259,
1269,1279,1288,1298,1308,1317,1327,1337,1346,1355,1365,1374,1383,1393,1402,1411,1420,1429,1438,1447,1456,1465,1473,
1482,1491,1499,1508,1516,1525,1533,1541,1550,1558,1566,1574,1582,1590,1598,1605,1613,1621,1629,1636,1644,1651,1659,
1666,1673,1680,1687,1695,1702,1708,1715,1722,1729,1736,1742,1749,1755,1762,1768,1774,1781,1787,1793,1799,1805,1811,
1816,1822,1828,1834,1839,1845,1850,1855,1861,1866,1871,1876,1881,1886,1891,1895,1900,1905,1909,1914,1918,1923,1927,
1931,1935,1939,1943,1947,1951,1955,1958,1962,1966,1969,1972,1976,1979,1982,1985,1988,1991,1994,1997,1999,2002,2005,
2007,2010,2012,2014,2016,2018,2021,2022,2024,2026,2028,2030,2031,2033,2034,2035,2037,2038,2039,2040,2041,2042,2043,
2043,2044,2045,2045,2046,2046,2046,2046,2046);
--Estos valores se obtuvieron con el programa Matlab, y luego fueron redondeados
--Hay 255 valores para formar un cuarto de sinusoidal, de manera de usar los 12 bits de DAC en complemento a 2, 
--pudiendo del -2048 a 2047

begin 

F <= to_integer(unsigned(F_in))+1; --CONVIERTE A ENTERO LA PALABRA BINARIA QUE CONTROLA LA FRECUENCIA

process(fase,dato) --PERMITE ELEGIR LA FASE INICIAL ENTRE 0 O 45 GRADOS
begin 
if (fase='0') then 

if (dato="01") then --90 GRADOS
   dato_i<=256;
   elsif (dato="10") then --180 GRADOS
   dato_i<=512;
   elsif (dato="11") then--270 GRADOS
   dato_i<=768;
else 
   dato_i<=0; --GRADOS O CUALQUIER INDETERMINACION
end if;

else 

if (dato="01") then --135 GRADOS
   dato_i<=384;
   elsif (dato="10") then --225 GRADOS
   dato_i<=640;
   elsif (dato="11") then --315 GRADOS
   dato_i<=896;
   else 
	dato_i<=128; --45 GRADOS O CAULQUIER INDETERMINACION
end if;
		
end if;
end process;
				
process(clk,rst,dato_i)
	variable indice: integer;
	variable cuenta: integer;
	begin
  
		 if(rst='1') then
         indice:=dato_i; 
			salida<=(others=>'0');
			cuenta:=0;
		 elsif(clk'event and clk='1') then
				if (indice>1023) then 
					 indice:=0;
				end if;
				
				if cuenta>=990 then --al bloque contador_rlj
				   rlj<='1';
			   else rlj<='0';
			   end if;
			
    			if (cuenta>1023) then 
					cuenta:=0;
					indice:=dato_i;
				end if;
									
				
			   if (indice<=255) then 
			
					salida1 <= std_logic_vector(to_signed(onda(indice), salida'length)); -- PRIMER CUARTO DE ONDA --
               
				elsif (255<indice and indice<= 511) then		
					salida1 <= std_logic_vector(to_signed(onda(255-(indice-256)), salida'length));-- SEGUNDO CUARTO DE ONDA --
					
					
				elsif (511<indice and indice<= 767) then		
				    salida1 <= std_logic_vector(to_signed(-onda(indice-512), salida'length));-- TERCER CUARTO DE ONDA --
					 
				elsif (767<indice and indice<= 1023) then		
   			   salida1 <= std_logic_vector(to_signed(-onda(255-(indice-768)), salida'length));-- ULTIMO CUARTO DE ONDA --
					 
			   end if;
				
				salida <=  not(salida1(11))&salida1(10 downto 0);
				indice:=indice+F;
				cuenta:=cuenta+F;
				cuenta_o<=cuenta;
				indice_o<=indice;
				dato_o<=dato; 
			
			end if;

end process;

end comportamiento;
		 
