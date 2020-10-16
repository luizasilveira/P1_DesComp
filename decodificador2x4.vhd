LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY decodificador2x4 IS
    PORT (
        seletor : IN std_logic_vector(7 DOWNTO 0);
        habilita : OUT std_logic_vector(5 DOWNTO 0)
		  adress: IN std_logic_vector(7 DOWNTO 0);
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
    habilita(0) <= '1' WHEN numSeletor <= 9 ELSE
    '0';
    habilita(1) <= '1' WHEN numSeletor >= 10 AND numSeletor <= 13 ELSE
    '0';
    habilita(2) <= '1' WHEN numSeletor >= 14 AND numSeletor <= 15 ELSE
    '0';
    habilita(3) <= '1' WHEN numSeletor >= 64 AND numSeletor <= 69 ELSE
    '0';
	 habilita(4) <= '1' WHEN numSeletor = 70 ELSE
    '0';
    habilita(5) <= '1' WHEN numSeletor >= 128 AND numSeletor <= 191 ELSE
    '0';

--		habilita(0) <= "0000000001" when adress = "00000000" else "0000000000";
--		habilita(1) <= "0000000010" when adress = "00000001" else "0000000000";
--		habilita(2) <= "0000000100" when adress = "00000010" else "0000000000";
--		habilita(3) <= "0000001000" when adress = "00000011" else "0000000000";
--		habilita(4) <= "0000010000" when adress = "00000100" else "0000000000";
--		habilita(5) <= "0000100000" when adress = "00000101" else "0000000000";
--		habilita(6) <= "0001000000" when adress = "00000110" else "0000000000";
--		habilita(7) <= "0010000000" when adress = "00000111" else "0000000000";
--		habilita(8) <= "0100000000" when adress = "00001000" else "0000000000";
--		habilita(9) <= "100000000" when adress = "0001001" else "0000000000";


END ARCHITECTURE;