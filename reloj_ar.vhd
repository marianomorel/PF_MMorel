library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

--Este bloque RELOJ_AR genera la señal de reloj del bloque ANTIRREBOTE
--a partir de una señal de reloj C1 del bloque RELOJ (PLL), haciendo las veces
--de un divisor de frecuencia realizado mediante un conteo 

entity reloj_ar is

	generic
	(
		MIN_COUNT : integer := 0;
		MAX_COUNT : integer := 10 
	);

	port
	(
		clk		  : in std_logic;
		reset	     : in std_logic;
		reloj_out : buffer std_logic
	);

end entity;

architecture rtl of reloj_ar is
begin

	process (clk)
		variable   cnt		   : integer range MIN_COUNT to MAX_COUNT;
	begin
		if (rising_edge(clk)) then

			if reset = '1' then
				cnt := 0;

			elsif reset = '0' then		   
				cnt := cnt + 1;
				if (cnt=MAX_COUNT) then 
				cnt:=0;
				reloj_out<=not(reloj_out);
				end if;
			end if;
		end if;
		
	end process;

end rtl;
