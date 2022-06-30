LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

--El bloque ANTIRREBOTE, funciona como su nombre lo indica, para evitar o bien filtrar pulsos indeseados
--en el accionar de un pulsador, que en este caso se encuentra en la placa FPGA, donde podremos conmutar 
--entre elegir tomar datos en forma externa o bien los datos aleatorios generados con el bloque PSEUDOALEATORIO

ENTITY antirrebote IS
PORT(PB_N, CLK, RESET: IN STD_LOGIC;
PB_SIN_REBOTE : OUT STD_LOGIC);
END antirrebote;

ARCHITECTURE a OF antirrebote IS
SIGNAL SHIFT_PB : STD_LOGIC_VECTOR(3 DOWNTO 0):="0000";
BEGIN

PROCESS (CLK, RESET)
BEGIN
if(RESET='1') then
SHIFT_PB<="0000";
ELSIF (CLK'EVENT AND CLK = '1') THEN
  SHIFT_PB(2 DOWNTO 0) <= SHIFT_PB(3 DOWNTO 1);
  SHIFT_PB(3) <= NOT PB_N;
  IF SHIFT_PB(3 DOWNTO 0)="0000" THEN
    PB_SIN_REBOTE <= '0';
  ELSE
    PB_SIN_REBOTE <= '1';
  END IF;
END IF;
END PROCESS;
END a;