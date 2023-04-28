library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

--Este bloque MULTIPLEXOR permite generar una selección entre datos externos y los datos que se generan 
--en el bloque PSEUDOALEATORIO

entity multiplexor is
port (data0_in: in std_logic_vector(1 downto 0);
      data1_in: in std_logic_vector(1 downto 0);
      data_out: out std_logic_vector(1 downto 0);
		sel: in std_logic:='0');
end multiplexor;

architecture comportamiento of multiplexor is
--signal data1: std_logic_vector (1 downto 0);
begin

with sel select data_out <= --ELECCIÓN DE PRNG O SEÑAL EXTERNA
	data0_in when '1',
	data1_in when others;
	
end architecture;