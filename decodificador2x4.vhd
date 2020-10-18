LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY decodificador2x4 IS

    PORT (
		  -- porta de entrada
        seletor : IN std_logic_vector(7 DOWNTO 0);
		  
		  -- porta de saída
        habilita : OUT std_logic_vector(5 DOWNTO 0)
    );
	 
END ENTITY;


ARCHITECTURE comportamento OF decodificador2x4 IS
	 
	 -- sinal do seletor
    SIGNAL numSeletor : unsigned(8 DOWNTO 0);
	 
	 BEGIN
		 numSeletor(7 DOWNTO 0) <= unsigned(seletor);
		 
		 habilita(0) <= '1' WHEN numSeletor <= 9 ELSE '0';
		 habilita(1) <= '1' WHEN numSeletor >= 10 AND numSeletor <= 13 ELSE '0';
		 habilita(2) <= '1' WHEN numSeletor >= 14 AND numSeletor <= 15 ELSE '0';
		 habilita(3) <= '1' WHEN numSeletor >= 64 AND numSeletor <= 69 ELSE '0';
		 habilita(4) <= '1' WHEN numSeletor = 70 ELSE '0';
		 habilita(5) <= '1' WHEN numSeletor >= 128 AND numSeletor <= 191 ELSE '0';

END ARCHITECTURE;