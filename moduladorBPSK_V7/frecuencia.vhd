library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity frecuencia is -- ENTIDAD --
port( sal: out std_logic_vector(4 downto 0)); 
end frecuencia;

architecture comportamiento of frecuencia is
begin

sal <= "00001";

end comportamiento;