LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY divisorGenerico_e_Interface IS
    GENERIC (
        dataWidth : NATURAL := 8
    );
    PORT (
        clk              : IN std_logic;
        habilitaLeitura  : IN std_logic;
        limpaLeitura     : IN std_logic;
		  seletorClk		 : IN std_logic;
        leituraUmSegundo : OUT std_logic_vector(dataWidth - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE interface OF divisorGenerico_e_Interface IS
    SIGNAL passouUmSegundo : std_logic := '0';

    -- Contador de clocks, usado para verificar se passou o tempo certo.
    SIGNAL contador : INTEGER RANGE 0 TO 100000000 := 0;

    -- Quantos clocks devemos esperar.
    signal clock_slow : NATURAL := 50000000;
    signal clock_fast : NATURAL := 1000000;
    SIGNAL num_clocks : NATURAL;
   
BEGIN
    num_clocks <= clock_fast WHEN seletorClk = '1' ELSE clock_slow;
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF (limpaLeitura = '1') THEN
                contador        <= 0;
                passouUmSegundo <= '0';
            ELSIF contador >= num_clocks THEN
                passouUmSegundo <= '1';
            ELSE
                contador        <= contador + 1;
                passouUmSegundo <= '0';
            END IF;
        END IF;
    END PROCESS;

    -- Mudamos apenas o primeiro bit da sa�da, retirando a necessidade de um
    -- extensor de sinal no fluxo de dados.
    leituraUmSegundo <= ("0000000" & passouUmSegundo) WHEN habilitaLeitura = '1' ELSE
        (OTHERS => 'Z');END ARCHITECTURE interface;