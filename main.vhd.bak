library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity main is
    GENERIC (
        dataWidth : NATURAL := 8

    );
  port (

		  CLOCK_50     : IN std_logic;
        SW           : IN std_logic_vector(9 DOWNTO 0);
        KEY          : IN std_logic_vector(3 DOWNTO 0);
        FPGA_RESET_N : IN std_logic;
--        LEDR                               : OUT std_logic_vector(9 DOWNTO 0);
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT std_logic_vector(6 DOWNTO 0)
  
  );
  
end entity;

architecture arch_name of main is
			 
	signal clk	: std_logic;
	

 begin

  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  -- regA:  entity work.nome_do_componente generic map (DATA_WIDTH => DATA_WIDTH)
  --        port map (dataIN => dataIN, dataOUT =>  RegAmuxA, enable =>  habRegA, clk =>  clk, rst => rst);

	detectorSub : ENTITY work.edgeDetector(bordaSubida)
			  PORT MAP(
					clk     => CLOCK_50,
					entrada => (NOT FPGA_RESET_N),
					saida   => clk
			  );
					

    relogio : ENTITY work.Clock
        GENERIC MAP(
            dataWidth => dataWidth
        )
        PORT MAP(
            clk     => clk,
            switch  => SW,
            key     => KEY,
            HEX0 => HEX0,
				HEX1 => HEX1,
				HEX2 => HEX2,
				HEX3 => HEX3,
				HEX4 => HEX4,
				HEX5 => HEX5
        );				
end architecture;