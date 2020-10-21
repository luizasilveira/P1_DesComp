LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY interfaceCHAVES IS

    GENERIC (
		  -- Total de bits das entradas e saidas
        dataWidth : NATURAL := 8
    );
	 
    PORT (
		  -- portas de entrada
 		  Switch      : IN std_logic_vector(9 downto 0);
        habilita    : IN std_logic_vector(7 downto 0);
		  -- porta de saída
        saida       : OUT std_logic_vector(7 downto 0)
    );
	 
END ENTITY;


ARCHITECTURE comportamento OF interfaceCHAVES IS

	-- habilita as chaves se a flag for 1
	BEGIN
		  saida <=  "0000000" & Switch WHEN habilita(0) = '1' ELSE
						 (OTHERS => 'Z');

END ARCHITECTURE;