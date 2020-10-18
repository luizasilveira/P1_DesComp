LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY interfaceHEX IS
    GENERIC (
        dataWidth : NATURAL := 8
    );
    PORT (    
		  clk      : IN std_logic;
        endereco   : IN std_logic_vector(dataWidth - 1 DOWNTO 0);
        habilita 	 : IN std_logic;
        dados       : IN std_logic_vector(dataWidth - 1 DOWNTO 0);
		  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT std_logic_vector(6 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE comportamento OF interfaceHEX IS

    SIGNAL s_hex0 : std_logic_vector(6 DOWNTO 0) := "1111111";
    SIGNAL s_hex1 : std_logic_vector(6 DOWNTO 0) := "1111111";
    SIGNAL s_hex2 : std_logic_vector(6 DOWNTO 0) := "1111111";
    SIGNAL s_hex3 : std_logic_vector(6 DOWNTO 0) := "1111111";
    SIGNAL s_hex4 : std_logic_vector(6 DOWNTO 0) := "1111111";
    SIGNAL s_hex5 : std_logic_vector(6 DOWNTO 0) := "1111111";

BEGIN

    conversorHex0 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => dados(3 DOWNTO 0),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => s_hex0);

    conversorHex1 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => dados(7 DOWNTO 4),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => s_hex1);

    conversorHex2 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => dados(3 DOWNTO 0),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => s_hex2);

    conversorHex3 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => dados(7 DOWNTO 4),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => s_hex3);

    conversorHex4 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => dados(3 DOWNTO 0),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => s_hex4);

    conversorHex5 : ENTITY work.conversorHex7Seg
        PORT MAP(
            dadoHex   => dados(7 DOWNTO 4),
            apaga     => '0',
            negativo  => '0',
            overFlow  => '0',
            saida7seg => s_hex5);
				
--E3 (64 até 66) : Display de sete segmentos (Hexadecimal)
    HEX0 <= s_hex0 WHEN endereco = "01000000" AND habilita = '1' ELSE
        (OTHERS => 'Z');

    HEX1 <= s_hex1 WHEN endereco = "01000000" AND habilita = '1' ELSE
        (OTHERS => 'Z');

    HEX2 <= s_hex2 WHEN endereco = "01000001" AND habilita = '1' ELSE
        (OTHERS => 'Z');

    HEX3 <= s_hex3 WHEN endereco = "01000001" AND habilita = '1' ELSE
        (OTHERS => 'Z');

    HEX4 <= s_hex4 WHEN endereco = "01000010" AND habilita = '1' ELSE
        (OTHERS => 'Z');

    HEX5 <= s_hex5 WHEN endereco = "01000010" AND habilita = '1' ELSE
        (OTHERS => 'Z');
		  

		  
		  
--    Error (11802): Can't fit design in device. Modify your design to reduce resources, or choose a larger device. The Intel FPGA Knowledge Database contains many articles with specific details on how to resolve this error. Visit the Knowledge Database at https://www.altera.com/support/support-resources/knowledge-base/search.html and search for this specific error message number.

END ARCHITECTURE;