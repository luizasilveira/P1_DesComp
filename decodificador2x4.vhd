LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY decodificador2x4 IS

    PORT (
        -- portas de entrada
		clk : in std_logic;
        seletor : IN std_logic_vector(7 DOWNTO 0);

        -- portas de saída
        habilita : OUT std_logic_vector(7 DOWNTO 0);
		habhex : OUT std_logic_vector(7 DOWNTO 0)

    );

END ENTITY;


ARCHITECTURE comportamento OF decodificador2x4 IS

    -- sinal do seletor
    SIGNAL numSeletor : unsigned(8 DOWNTO 0);

    BEGIN
        numSeletor(7 DOWNTO 0) <= unsigned(seletor);
        
        habilita(0) <= '1' WHEN numSeletor <= 9 ELSE '0'; --Switch
        habilita(1) <= '1' WHEN numSeletor >= 10 AND numSeletor <= 13 ELSE '0'; --Botoes
        habilita(2) <= '1' WHEN numSeletor >= 128 AND numSeletor <= 191 ELSE '0'; --MemRam
        
        habhex(0) <= '1' WHEN numSeletor = 64 ELSE '0'; --HEX1
        habhex(1) <= '1' WHEN numSeletor = 65 ELSE '0'; --HEX2
        habhex(2) <= '1' WHEN numSeletor = 66 ELSE '0'; --HEX3
        habhex(3) <= '1' WHEN numSeletor = 67 ELSE '0'; --HEX4
        habhex(4) <= '1' WHEN numSeletor = 68 ELSE '0'; --HEX5
        habhex(5) <= '1' WHEN numSeletor = 69  ELSE '0'; --HEX16
        habhex(6) <= '1' WHEN numSeletor = 14  ELSE '0'; --Base de Tempo
		  habhex(7) <= '1' WHEN numSeletor = 15  ELSE '0'; --Limpa Base de Tempo
	 
END ARCHITECTURE;