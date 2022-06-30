-- Quartus II VHDL Template
-- Binary Up/Down conter with Saturation

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity retardo is --MENTIROSO--

	port 
	(
		sal_in		: in std_logic;
		cuenta_in	: in std_logic;
		prng_o	   : OUT std_logic
		
	);

end entity;

architecture behavioral of retardo is

begin

   		
process (cuenta_in,sal_in)
	
	begin
	if cuenta_in='1' then
	   prng_o<=sal_in;
	--else prng_o<=prng_o;
	end if;
	
end process;
	
	 
end behavioral; 