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
		habSw :  OUT std_logic_vector(7 DOWNTO 0); 
		habBT :  OUT std_logic_vector(3 DOWNTO 0)

    );

END ENTITY;


ARCHITECTURE comportamento OF decodificador2x4 IS

    -- sinal do seletor
    SIGNAL numSeletor : unsigned(8 DOWNTO 0);

	 -- instancia as flags que habilitam os periféricos, dados os seus endereços
    BEGIN
        numSeletor(7 DOWNTO 0) <= unsigned(seletor); --seletor
        
--        habilita(0) <= '1' WHEN numSeletor <= 9 ELSE '0'; --Switch
		  habSw(0) <= '1' WHEN numSeletor = 16 ELSE '0'; --SW0
        habSw(1) <= '1' WHEN numSeletor = 17 ELSE '0'; --SW1
        habSw(2) <= '1' WHEN numSeletor = 18 ELSE '0'; --SW2
        habSw(3) <= '1' WHEN numSeletor = 19 ELSE '0'; --SW3
        habSw(4) <= '1' WHEN numSeletor = 20 ELSE '0'; --SW4
        habSw(5) <= '1' WHEN numSeletor = 21 ELSE '0'; --SW5
        habSw(6) <= '1' WHEN numSeletor = 22  ELSE '0'; --SW6
		  habSw(7) <= '1' WHEN numSeletor = 23  ELSE '0'; --SW7
		  
        habBT(0) <= '1' WHEN numSeletor = 24 ELSE '0'; --Botoes
		  habBT(1) <= '1' WHEN numSeletor = 25 ELSE '0'; --Botoes
		  habBT(2) <= '1' WHEN numSeletor = 26 ELSE '0'; --Botoes
		  habBT(3) <= '1' WHEN numSeletor = 27 ELSE '0'; --Botoes
		  
        habilitaRAM(0) <= '1' WHEN numSeletor >= 128 AND numSeletor <= 191 ELSE '0'; --MemRam
        
        habhex(0) <= '1' WHEN numSeletor = 64 ELSE '0'; --HEX1
        habhex(1) <= '1' WHEN numSeletor = 65 ELSE '0'; --HEX2
        habhex(2) <= '1' WHEN numSeletor = 66 ELSE '0'; --HEX3
        habhex(3) <= '1' WHEN numSeletor = 67 ELSE '0'; --HEX4
        habhex(4) <= '1' WHEN numSeletor = 68 ELSE '0'; --HEX5
        habhex(5) <= '1' WHEN numSeletor = 69 ELSE '0'; --HEX6
		  
        habhex(6) <= '1' WHEN numSeletor = 14  ELSE '0'; --Base de Tempo
		  habhex(7) <= '1' WHEN numSeletor = 15  ELSE '0'; --Limpa Base de Tempo
	 
END ARCHITECTURE;