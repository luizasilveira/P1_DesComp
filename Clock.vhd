library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Clock is
--	generic (
--		 enderecoWidth: natural := 12;
--		 dadosWidth: natural := 8;
--       -- Utilizar o que for maior entre: dadosWidth e enderecoWidth e somar com a quantidade de sinais de controle:
--       dataROMWidth: natural := 8 + 7
--   );
  port (

		  CLOCK_50     : IN std_logic;
        SW           : IN std_logic_vector(9 DOWNTO 0);
        KEY          : IN std_logic_vector(3 DOWNTO 0);
        FPGA_RESET_N : IN std_logic;
        LEDR                               : OUT std_logic_vector(9 DOWNTO 0);
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT std_logic_vector(6 DOWNTO 0)
  
  );
  
end entity;

architecture arch_name of Clock is

	signal dataIn, dataOut, adress 			: std_logic_vector (7 DOWNTO 0);
			 
	signal habEscritaReg, habLeituraMEM  	: std_logic;
	
	signal habilita              				: std_logic_vector(5 DOWNTO 0)		
	
	
	

 begin

  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  -- regA:  entity work.nome_do_componente generic map (DATA_WIDTH => DATA_WIDTH)
  --        port map (dataIN => dataIN, dataOUT =>  RegAmuxA, enable =>  habRegA, clk =>  clk, rst => rst);
  
--    ALIAS jump            : std_logic IS palavraControle(9);
--	 ALIAS jmpCompare     : std_logic IS palavraControle(8);

	processador: entity work.Processador
            port map (
				dataIn => dataIn
				clk => CLOCK_50,
				dataOut => dataOut,
				adress  => adress,
				habEscritaReg => habEscritaReg,
				habLeituraMEM => habLeituraMEM
				);
				
	Decoder: entity work.decodificador2x4
			port map (
			seletor => adress,
			habilita => habilita,

			);
									
				
	RAM: entity work.memoriaRAM generic map (dataWidth => 8, addrWidth => 8 )
            port map (
				addr => adress
				we => habEscritaReg,
				re => habLeituraMEM,
				habilita  => habilita(5),
				clk => CLOCK_50,
				dado_in => dataOut,
				dado_out => dataIn
				);

				
end architecture;