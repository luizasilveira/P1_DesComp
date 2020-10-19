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
        leituraUmSegundo : OUT std_logic_vector(dataWidth - 1 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE interface OF divisorGenerico_e_Interface IS
    SIGNAL sinalUmSegundo   : std_logic;
    SIGNAL saidaclk_reg1seg : std_logic;
   
BEGIN
    baseTempo : ENTITY work.divisorGenerico
        GENERIC MAP(
            divisor => 250000000
        ) -- divide por 10.
        PORT MAP(
            clk       => clk,
            saida_clk => saidaclk_reg1seg
        );

    registraUmSegundo : ENTITY work.flipflop
        PORT MAP(
            data_in    => '1',
            ENABLE => '1',
            clk    => saidaclk_reg1seg,
            rst    => limpaLeitura,
			   data_out   => sinalUmSegundo
        );
		  


    -- Faz o tristate de saida:
    leituraUmSegundo <= "0000000" & sinalUmSegundo  WHEN habilitaLeitura = '1' ELSE
        (OTHERS => 'Z');
END ARCHITECTURE interface;