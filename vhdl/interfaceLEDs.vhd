LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY interfaceLEDs IS

    GENERIC (
		  -- Total de bits das entradas e saidas
        dataWidth : NATURAL := 8
    );
	 
    PORT (
		  -- portas de entrada
        entrada : IN std_logic_vector(dataWidth - 1 DOWNTO 0);
        habilita : IN std_logic;
        clk : IN std_logic;
		  
		  -- porta de saída
        saida : OUT std_logic_vector(dataWidth - 1 DOWNTO 0)
    );
	 
END ENTITY;


ARCHITECTURE comportamento OF interfaceLEDs IS

	-- habilita os leds da placa se a flag for 1
	BEGIN
		 PROCESS (clk)
		 BEGIN
			  IF (rising_edge(clk)) THEN
					IF (habilita = '1') THEN
						 saida <= entrada;
					END IF;
			  END IF;
		 END PROCESS;
		 
END ARCHITECTURE;