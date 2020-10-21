LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY decodificador2x4 IS

    PORT (
        -- portas de entrada
		clk : in std_logic;
        seletor : IN std_logic_vector(7 DOWNTO 0);

        -- portas de saída
      habilitaRAM : OUT std_logic_vector(7 DOWNTO 0);
		habhex : OUT std_logic_vector(7 DOWNTO 0);
		habSw :  OUT std_logic;
		habBT :  OUT std_logic;
		habBaseTempo : OUT std_logic_vector(1 DOWNTO 0)

    );

END ENTITY;

--Bloco 2 (0 até 63) - Leitura:
--E0 (14 até 15) : Base de Tempo
--E1 (16 até 16) : Chaves (Switches)
--E2 (24 até 24) : Botões
--
--Bloco 2 (64 até 127) - Escrita:
--E3 (64 até 69) : Display de sete segmentos (Hexadecimal)
--E4 (70 até 70) : LEDs
--
--Bloco 3 (128 até 191) - RAM:
--E5 (128 até 191) : Memória RAM
--
--Bloco 4 (192 até 255) - Reservado:
--E6 (192 até 255) : Reservado


ARCHITECTURE comportamento OF decodificador2x4 IS

    -- sinal do seletor
    SIGNAL numSeletor : unsigned(8 DOWNTO 0);

	 -- instancia as flags que habilitam os periféricos, dados os seus endereços
    BEGIN
        numSeletor(7 DOWNTO 0) <= unsigned(seletor); --seletor
        		  
        habBaseTempo(0) <= '1' WHEN numSeletor = 14  ELSE '0'; --Base de Tempo
		  habBaseTempo(1) <= '1' WHEN numSeletor = 15  ELSE '0'; --Limpa Base de Tempo

		  habSw <= '1' WHEN numSeletor = 16 ELSE '0'; --SW0
		  
        habBT <= '1' WHEN numSeletor = 24 ELSE '0'; --Botoes
		  
		  habhex(0) <= '1' WHEN numSeletor = 64 ELSE '0'; --HEX1
        habhex(1) <= '1' WHEN numSeletor = 65 ELSE '0'; --HEX2
        habhex(2) <= '1' WHEN numSeletor = 66 ELSE '0'; --HEX3
        habhex(3) <= '1' WHEN numSeletor = 67 ELSE '0'; --HEX4
        habhex(4) <= '1' WHEN numSeletor = 68 ELSE '0'; --HEX5
        habhex(5) <= '1' WHEN numSeletor = 69 ELSE '0'; --HEX6
		  
        habilitaRAM(0) <= '1' WHEN numSeletor >= 128 AND numSeletor <= 191 ELSE '0'; --MemRam
        

	 
END ARCHITECTURE;