library ieee;
use ieee.std_logic_1164.all;

--Este bloque PSEUDOALEATORIO genera un secuencia binaria con semilla como señal moduladora
--Asi mismo se conecta a una de las entradas del bloque MULTIPLEXOR, de modo que se pueda seleccionar
--entre una entrada de datos externa, o la mencionada secuencia, hacia el bloque ONDA

entity pseudoaleatorio is
port (clk: in std_logic;
      rst: in std_logic;
		sal: out std_logic_vector (1 downto 0));
end pseudoaleatorio;

architecture comportamiento of pseudoaleatorio is
signal pseudo_regLSB: std_logic_vector (7 downto 0);
signal pseudo_regMSB: std_logic_vector (7 downto 0);
begin
process (clk, rst) --primer prng
begin 
       if(rst='1') then
		 pseudo_regLSB<="01010101";
		 elsif(clk'event and clk='1') then
			 pseudo_regLSB(0)<=pseudo_regLSB(7);
			 pseudo_regLSB(1)<=pseudo_regLSB(0);
			 pseudo_regLSB(2)<=pseudo_regLSB(1) xnor pseudo_reglSB(7);
			 pseudo_regLSB(3)<=pseudo_regLSB(2) xnor pseudo_regLSB(7);
			 pseudo_regLSB(4)<=pseudo_regLSB(3) xnor pseudo_regLSB(7);
			 pseudo_regLSB(5)<=pseudo_regLSB(4);
			 pseudo_regLSB(6)<=pseudo_regLSB(5);
			 pseudo_regLSB(7)<=pseudo_regLSB(6);
		 end if;
end process;

process (clk, rst) --segundo prng
begin 
       if(rst='1') then
		 pseudo_regMSB<="00001111";
		 elsif(clk'event and clk='1') then
			 pseudo_regMSB(0)<=pseudo_regMSB(7);
			 pseudo_regMSB(1)<=pseudo_regMSB(0);
			 pseudo_regMSB(2)<=pseudo_regMSB(1) xnor pseudo_regMSB(7);
			 pseudo_regMSB(3)<=pseudo_regMSB(2) xnor pseudo_regMSB(7);
			 pseudo_regMSB(4)<=pseudo_regMSB(3) xnor pseudo_regMSB(7);
			 pseudo_regMSB(5)<=pseudo_regMSB(4);
			 pseudo_regMSB(6)<=pseudo_regMSB(5);
			 pseudo_regMSB(7)<=pseudo_regMSB(6);
		 end if;
end process;

sal<=pseudo_regMSB(7) & pseudo_regLSB(7); --CONCATENACIÓN DE ÚLTIMOS BITS DE DOS PRNG 

end architecture;