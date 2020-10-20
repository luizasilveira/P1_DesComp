LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY interfaceBOTOES IS

    GENERIC (
		  -- Total de bits das entradas e saidas
        dataWidth     : NATURAL := 8
    );
	 
    PORT (
		  -- portas de entrada
		  btn         : IN std_logic_vector(3 downto 0);
        habilita    : IN std_logic_vector(3 downto 0);
		  
		  -- porta de saída
        saida       : OUT std_logic_vector(dataWidth - 1 downto 0)
    );
	 
END ENTITY;


ARCHITECTURE comportamento OF interfaceBOTOES IS

    SIGNAL sinal: std_logic_vector(dataWidth - 1 downto 0);

	 BEGIN
		 
		 saida <= "0000000" & btn(0) WHEN habilita(0) = '1' ELSE
					 "0000000" & btn(1) WHEN habilita(1) = '1' ELSE
					 "0000000" & btn(2) WHEN habilita(2) = '1' ELSE
					 "0000000" & btn(3) WHEN habilita(3) = '1' ELSE
					  (OTHERS => 'Z');
					 
--				sinal(0) <= btn(0) WHEN   "00001010",
--								btn(1) WHEN   "00001011",
--								btn(2) WHEN   "00001100",
--								btn(3) WHEN   "00001101",
--								'0' WHEN OTHERS;

	 -- habilita os botões se a flag for 1
--    saida <= sinal WHEN (habilita = '1') 
--						 ELSE (OTHERS => 'Z');
    
END ARCHITECTURE;