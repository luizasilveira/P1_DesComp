library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Clock is
    GENERIC (
        dataWidth : NATURAL := 8

    );
  port (

		  clk     : IN std_logic;
        switch           : IN std_logic_vector(9 DOWNTO 0);
        key          : IN std_logic_vector(3 DOWNTO 0);
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT std_logic_vector(6 DOWNTO 0)
  
  );
  
end entity;

architecture arch_name of Clock is

	signal BarramentoEntrada, BarramentoSaida, adress 			: std_logic_vector (7 DOWNTO 0);
			 
	signal habEscritaMEM, habLeituraMEM  	: std_logic;
	
	signal habilita              				: std_logic_vector(5 DOWNTO 0);	
	
	signal instOpCode              				: std_logic_vector(3 DOWNTO 0);	
	
	signal s_HEX0, s_HEX1, s_HEX2, s_HEX3, s_HEX4, s_HEX5 : std_logic_vector(6 DOWNTO 0);
	


	ALIAS habChaves  : std_logic IS habilita(0);
	ALIAS habBotoes  : std_logic IS habilita(1);
	ALIAS habBaseTempo      : std_logic IS habilita(2);
	ALIAS habHex            : std_logic IS habilita(3);
	ALIAS habLimpaBaseTempo : std_logic IS habilita(4);
	ALIAS habRAM     : std_logic IS habilita(5);
	
	--E0 (0 até 9) : Chaves (Switches)
--E1 (10 até 13) : Botões
--E2 (14 até 15) : Base de Tempo
--
--Bloco 2 (64 até 127) - Escrita:
--E3 (64 até 66) : Display de sete segmentos (Hexadecimal)
--E4 (70 até 70) : LEDs
--
--Bloco 3 (128 até 191) - RAM:
--E5 (128 até 191) : Memória RAM
--
--Bloco 4 (192 até 255) - Reservado:
--E6 (192 até 255) : Reservado
	

 begin

  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  -- regA:  entity work.nome_do_componente generic map (DATA_WIDTH => DATA_WIDTH)
  --        port map (dataIN => dataIN, dataOUT =>  RegAmuxA, enable =>  habRegA, clk =>  clk, rst => rst);

	processador: entity work.Processador
            port map (
				dataIn => BarramentoEntrada,
				clk => clk,
				dataOut => BarramentoSaida,
				adress  => adress,
				opCode => instOpCode,
				habEscritaMEM => habEscritaMEM,
				habLeituraMEM => habLeituraMEM
				);
				
	Decoder: entity work.decodificador2x4
			port map (
			seletor => adress,
			habilita => habilita,
			opcode => instOpCode
			);
									
				
	RAM: entity work.memoriaRAM generic map (dataWidth => 8, addrWidth => 8 )
            port map (
				addr => adress,
				we => habEscritaMEM,
				re => habLeituraMEM,
				habilita  => habRAM,
				clk => clk,
				dado_in => BarramentoSaida,
				dado_out => BarramentoEntrada
				);


    interfaceChaves : ENTITY work.interfaceChaves
        GENERIC MAP(
            dataWidth => dataWidth
        )
        PORT MAP(
            Switch  => switch,
            endereco => adress,
            habilita => habChaves,
            saida    => BarramentoEntrada
        );

    interfaceBtn : ENTITY work.interfaceBotoes
        GENERIC MAP(
            dataWidth => dataWidth
            
        )
        PORT MAP(
            btn  => key,
            endereco => adress,
            habilita => habBotoes,
            saida    => BarramentoEntrada
        );

    interfaceHEX : ENTITY work.interfaceHEX
        GENERIC MAP(
				dataWidth => dataWidth
        )
        PORT MAP(
            clk      => clk,
            endereco => adress,
            habilita => habHex,
            dados    => BarramentoSaida,
            HEX0     => s_HEX0,
            HEX1     => s_HEX1,
            HEX2     => s_HEX2,
            HEX3     => s_HEX3,
            HEX4     => s_HEX4,
            HEX5     => s_HEX5
        );

    interfaceBaseTempo : ENTITY work.divisorGenerico_e_Interface
        GENERIC MAP(
            dataWidth => dataWidth
        )
        PORT MAP(
            clk              => clk,
            habilitaLeitura  => habBaseTempo,
            limpaLeitura     => habLimpaBaseTempo,
            leituraUmSegundo => BarramentoEntrada
        );	
	
	 HEX0 <= s_HEX0;
	 HEX1 <= s_HEX1;
	 HEX2 <= s_HEX2;
	 HEX3 <= s_HEX3;
	 HEX4 <= s_HEX4;
	 HEX5 <= s_HEX5;
	 
end architecture;