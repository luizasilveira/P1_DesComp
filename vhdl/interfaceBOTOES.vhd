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
        habilita    : IN std_logic;
		  rd : in std_logic;
		  
		  -- porta de saída
        saida       : OUT std_logic_vector(dataWidth - 1 downto 0)
    );
	 
END ENTITY;


ARCHITECTURE comportamento OF interfaceBOTOES IS

    SIGNAL sinal: std_logic_vector(dataWidth - 1 downto 0);

	 BEGIN
		 
		 saida <= "0000" & btn WHEN habilita = '1' ELSE
					  (OTHERS => 'Z');
					 
END ARCHITECTURE;