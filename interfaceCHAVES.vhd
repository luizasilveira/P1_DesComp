LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY interfaceCHAVES IS
    GENERIC (
        dataWidth : NATURAL := 8
    );
    PORT (
 		  Switch      : IN std_logic_vector(9 downto 0);
        endereco    : IN std_logic_vector(dataWidth - 1 downto 0);
        habilita    : IN std_logic;
        saida       : OUT std_logic_vector(7 downto 0)
    );
END ENTITY;

ARCHITECTURE comportamento OF interfaceCHAVES IS
SIGNAL sinal: std_logic_vector(dataWidth - 1 DOWNTO 0);
BEGIN
--  E0 (0 até 9) : Chaves (Switches)
    WITH endereco SELECT
        sinal(0) <= 
		  Switch(0) WHEN "00000000",
        Switch(1) WHEN "00000001",
        Switch(2) WHEN "00000010",
        Switch(3) WHEN "00000011",
        Switch(4) WHEN "00000100",
        Switch(5) WHEN "00000101",
        Switch(6) WHEN "00000110",
        Switch(7) WHEN "00000111",
        Switch(8) WHEN "00001000",
        Switch(9) WHEN "00001001",
        '0' WHEN OTHERS;

    saida <= sinal WHEN (habilita = '1') ELSE
        (OTHERS => 'Z');
END ARCHITECTURE;