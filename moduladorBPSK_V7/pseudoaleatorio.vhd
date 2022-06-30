library ieee;
use ieee.std_logic_1164.all;

--Este bloque PSEUDOALEATORIO genera un secuencia binaria con semilla como señal moduladora
--Asi mismo se conecta a una de las entradas del bloque MULTIPLEXOR, de modo que se pueda seleccionar
--entre una entrada de datos externa, o la mencionada secuencia, hacia el bloque ONDA

entity pseudoaleatorio is
port (clk: in std_logic;
      rst: in std_logic;
		sal: out std_logic);
end pseudoaleatorio;

architecture comportamiento of pseudoaleatorio is
signal pseudo_reg: std_logic_vector (7 downto 0);
begin
process (clk, rst)
begin 
       if(rst='1') then
		 pseudo_reg<="00100101";
		 elsif(clk'event and clk='1') then
			 pseudo_reg(0)<=pseudo_reg(7);
			 pseudo_reg(1)<=pseudo_reg(0);
			 pseudo_reg(2)<=pseudo_reg(1) xnor pseudo_reg(7);
			 pseudo_reg(3)<=pseudo_reg(2) xnor pseudo_reg(7);
			 pseudo_reg(4)<=pseudo_reg(3) xnor pseudo_reg(7);
			 pseudo_reg(5)<=pseudo_reg(4);
			 pseudo_reg(6)<=pseudo_reg(5);
			 pseudo_reg(7)<=pseudo_reg(6);
		 end if;
end process;

sal<=pseudo_reg(7);

end architecture;