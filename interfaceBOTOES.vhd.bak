LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY interfaceBOTOES IS
    GENERIC (
        dataWidth     : NATURAL := 8
    );
    PORT (
		  btn         : IN std_logic_vector(3 downto 0);
        endereco    : IN std_logic_vector(dataWidth - 1 downto 0);
        habilita    : IN std_logic;
        saida       : OUT std_logic_vector(dataWidth - 1 downto 0)
    );
END ENTITY;

ARCHITECTURE comportamento OF interfaceBOTOES IS

    SIGNAL sinal: std_logic_vector(dataWidth - 1 downto 0);

BEGIN

--E1 (10 até 13) : Botões
WITH endereco SELECT
		sinal(0) <=   
		btn(0) WHEN   "00001010",
		btn(1) WHEN   "00001011",
		btn(2) WHEN   "00001100",
		btn(3) WHEN   "00001101",
		'0' WHEN OTHERS;

    saida <= sinal WHEN (habilita = '1') ELSE (OTHERS => 'Z');
    
END ARCHITECTURE;