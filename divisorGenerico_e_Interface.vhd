-- referências: modelo VHDL baseado no https://github.com/HenryRocha/computer-design-clock 

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
		  sel        		 : IN std_logic;
        leituraUmSegundo : OUT std_logic_vector(dataWidth - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE interface OF divisorGenerico_e_Interface IS
    SIGNAL passouUmSegundo : std_logic := '0';
    SIGNAL count : INTEGER RANGE 0 TO 100000000 := 0;
    signal clockNormal : NATURAL := 50000000;
    signal clockAcelerado : NATURAL := 100000; --250000; --1000000;
    SIGNAL clock_utilizado : NATURAL;
   
BEGIN
    clock_utilizado <= clockAcelerado WHEN sel = '1' ELSE clockNormal;
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF (limpaLeitura = '1') THEN
                count        <= 0;
                passouUmSegundo <= '0';
            ELSIF count >= clock_utilizado THEN
                passouUmSegundo <= '1';
            ELSE
                count        <= count + 1;
                passouUmSegundo <= '0';
            END IF;
        END IF;
    END PROCESS;
	 

    -- Mudamos apenas o primeiro bit da sa�da, retirando a necessidade de um
    -- extensor de sinal no fluxo de dados.
    leituraUmSegundo <= ("0000000" & passouUmSegundo) WHEN habilitaLeitura = '1' ELSE
        (OTHERS => 'Z');END ARCHITECTURE interface;