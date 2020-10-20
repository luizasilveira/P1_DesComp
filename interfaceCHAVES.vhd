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

	
	BEGIN
		
		  saida <=  "0000000" & Switch(0)  WHEN habilita(0) = '1' ELSE
						"0000000" & Switch(1)  WHEN habilita(1) = '1' ELSE
						"0000000" & Switch(2)  WHEN habilita(2) = '1' ELSE
						"0000000" & Switch(3)  WHEN habilita(3) = '1' ELSE
						"0000000" & Switch(4)  WHEN habilita(4) = '1' ELSE
						"0000000" & Switch(5)  WHEN habilita(5) = '1' ELSE
						"0000000" & Switch(6)  WHEN habilita(6) = '1' ELSE
						"0000000" & Switch(7)  WHEN habilita(7) = '1' ELSE
						 (OTHERS => 'Z');

	-- habilita as chaves se a flag for 1
--   saida <= sinal WHEN (habilita = '1') 
--						ELSE (OTHERS => 'Z');
--						
END ARCHITECTURE;