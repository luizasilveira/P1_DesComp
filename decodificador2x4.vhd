LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY decodificador2x4 IS
    PORT (
		  clk : in std_logic;
        seletor : IN std_logic_vector(7 DOWNTO 0);
        habilita : OUT std_logic_vector(7 DOWNTO 0);
		  habhex : OUT std_logic_vector(7 DOWNTO 0)
--		  opcode  : IN std_logic_vector(3 DOWNTO 0)
--		  adress: IN std_logic_vector(7 DOWNTO 0)
    );
END ENTITY;

--Bloco 1 (0 até 63) - Leitura:
--E0 (0 até 9) : Chaves (Switches)
--E1 (10 até 13) : Botões
--E2 (14 até 15) : Base de Tempo
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
	 
--	 habilita_hex <= "00000001" when seletor = "0000000000" else -- display 0	
--				  "00000010" when seletor = "0000000001" else -- display 1	
--				  "00000100" when seletor = "0000000010" else -- display 2
--				  "00001000" when seletor = "0000000011" else -- display 3
--				  "00010000" when seletor = "0000000100" else -- display 4
--				  "00100000" when seletor = "0000000101" else -- display 5
--				  "01000000" when seletor = "0000000110" else -- base de tempo
--				  "00000000";



END ARCHITECTURE;