library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

--Este bloque MULTIPLEXOR permite generar una selección entre datos externos y los datos que se generan 
--en el bloque PSEUDOALEATORIO

entity multiplexor is
port (data0_in: in std_logic;
      data1_in: in std_logic;
      data_out: out std_logic;
		sel: in std_logic);
end multiplexor;

architecture comportamiento of multiplexor is
begin

data_out<= data0_in when sel='0'
else data1_in;	


end architecture;