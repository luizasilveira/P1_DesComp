LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY interfaceHEX IS

    GENERIC (
		  -- Total de bits das entradas e saidas e dos endereços da ROM
        dataWidth : NATURAL := 8
    );
	 
    PORT ( 
		  -- portas de entrada
		  clk      	: IN std_logic;
        dados     : IN std_logic_vector(dataWidth - 1 DOWNTO 0);
		  clr   		: IN std_logic;
		  habilita0, habilita1, habilita2, habilita3, habilita4, habilita5 : IN std_logic;
		  
		  -- portas de saída
		  HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT std_logic_vector(6 DOWNTO 0)
    );
	 
END ENTITY;


ARCHITECTURE comportamento OF interfaceHEX IS

	 -- sinais dos hex
    SIGNAL s_hex0 : std_logic_vector(6 DOWNTO 0) := "1111111";
    SIGNAL s_hex1 : std_logic_vector(6 DOWNTO 0) := "1111111";
    SIGNAL s_hex2 : std_logic_vector(6 DOWNTO 0) := "1111111";
    SIGNAL s_hex3 : std_logic_vector(6 DOWNTO 0) := "1111111";
    SIGNAL s_hex4 : std_logic_vector(6 DOWNTO 0) := "1111111";
    SIGNAL s_hex5 : std_logic_vector(6 DOWNTO 0) := "1111111";

	 BEGIN

--		  clk       :in std_logic;
--        dadoHex   :in  std_logic_vector(3 downto 0);
--        clr       :in  std_logic ;
--        habilita  :in  std_logic;
--        -- Output ports
--        saida7seg :out std_logic_vector(6 downto 0)  -- := (others => '1')

		 -- hex0
		 conversorHex0 : ENTITY work.conversorHex7Seg
							  PORT MAP(
									clk => clk,
									dadoHex   => dados(3 DOWNTO 0),
									apaga       => clr,
									habilita  => habilita0,
									saida7seg => HEX0
								);

		 -- hex 1
		 conversorHex1 : ENTITY work.conversorHex7Seg
							  PORT MAP(
									clk => clk,
									dadoHex   => dados(3 DOWNTO 0),
									apaga     => clr,
									habilita  => habilita1,
									saida7seg => HEX1
								);

		 -- hex 2
		 conversorHex2 : ENTITY work.conversorHex7Seg
							  PORT MAP(
									clk => clk,
									dadoHex   => dados(3 DOWNTO 0),
									apaga     => clr,
									habilita  => habilita2,
									saida7seg => HEX2
								);

		 -- hex 3
		 conversorHex3 : ENTITY work.conversorHex7Seg
							  PORT MAP(
									clk => clk,
									dadoHex   => dados(3 DOWNTO 0),
									apaga     => clr,
									habilita  => habilita3,
									saida7seg => HEX3
								);

					
		 -- hex 4
		 conversorHex4 : ENTITY work.conversorHex7Seg
							  PORT MAP(
									clk => clk,
									dadoHex   => dados(3 DOWNTO 0),
									apaga     => clr,
									habilita  => habilita4,
									saida7seg => HEX4
								);
					
		 -- hex 5
		 conversorHex5 : ENTITY work.conversorHex7Seg
							  PORT MAP(
									clk => clk,
									dadoHex   => dados(3 DOWNTO 0),
									apaga     => clr,
									habilita  => habilita5,
									saida7seg => HEX5
								);
				
--E3 (64 até 66) : Display de sete segmentos (Hexadecimal)
--    HEX0 <= s_hex0 WHEN endereco = "01000000" AND habilita = '1' ELSE
--        (OTHERS => 'Z');
--
--    HEX1 <= s_hex1 WHEN endereco = "01000000" AND habilita = '1' ELSE
--        (OTHERS => 'Z');
--
--    HEX2 <= s_hex2 WHEN endereco = "01000001" AND habilita = '1' ELSE
--        (OTHERS => 'Z');
--
--    HEX3 <= s_hex3 WHEN endereco = "01000001" AND habilita = '1' ELSE
--        (OTHERS => 'Z');
--
--    HEX4 <= s_hex4 WHEN endereco = "01000010" AND habilita = '1' ELSE
--        (OTHERS => 'Z');
--
--    HEX5 <= s_hex5 WHEN endereco = "01000010" AND habilita = '1' ELSE
--        (OTHERS => 'Z');
		  

END ARCHITECTURE;