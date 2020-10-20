library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Clock is
    GENERIC (
        dataWidth : NATURAL := 8

    );
  port (

		  CLOCK_50     : IN std_logic;
        SW           : IN std_logic_vector(9 DOWNTO 0);
        KEY          : IN std_logic_vector(3 DOWNTO 0);
        FPGA_RESET_N : IN std_logic;
		  LEDR 		   : out std_logic_vector (9 downto 0);
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT std_logic_vector(6 DOWNTO 0);
		  habilitaSW_t : OUT std_logic_vector(7 downto 0);
		  habilitaBT_t : OUT std_logic_vector(3 downto 0);
		  habilitahex_t : OUT std_logic_vector(7 downto 0);
		  BarramentoSaida_t    : OUT std_logic_vector(dataWidth - 1 DOWNTO 0);
		  enderecoRAMROM_DEBUG    : OUT std_logic_vector(dataWidth - 1 DOWNTO 0);
		  ULA_t : OUT std_logic_vector(dataWidth - 1 DOWNTO 0);
		  opcode_t : OUT std_logic_vector(3 DOWNTO 0);
		  BarramentoEntrada_t : OUT std_logic_vector(dataWidth - 1 DOWNTO 0);
		  habBaseTempo_t : OUT std_logic;
		  LimpaBaseTempo_t  : OUT std_logic
		  
		  
--		  limpa_t <= out std_logic;

  
  );
  
end entity;

architecture arch_name of Clock is

	signal BarramentoEntrada, BarramentoSaida, adress 			: std_logic_vector (7 DOWNTO 0);
			 
	signal habEscritaMEM, habLeituraMEM   	: std_logic;
	
	signal habilitaRAM, habhex, habSw, ula_out             				: std_logic_vector(7 DOWNTO 0);	
	
	signal instOpCode, habBT              				: std_logic_vector(3 DOWNTO 0);	
	
	signal s_HEX0, s_HEX1, s_HEX2, s_HEX3, s_HEX4, s_HEX5 : std_logic_vector(6 DOWNTO 0);
	
--	ALIAS habChaves  : std_logic IS habSw(0);
--	ALIAS habBotoes  : std_logic IS habilita(1);
	ALIAS habRAM     : std_logic IS habilitaRAM(0);
	
--	ALIAS habSW0      : std_logic IS habSw(0);
--	ALIAS habSW1      : std_logic IS habSw(1);
--	ALIAS habSW2 		: std_logic IS habSw(2);
--	ALIAS habSW3      : std_logic IS habSw(3);
--	ALIAS habSW4      : std_logic IS habSw(4);
--	ALIAS habSW5      : std_logic IS habSw(5);
--	ALIAS habSW6      : std_logic IS habSw(6);
--	ALIAS habSW7      : std_logic IS habSw(7);
	
	ALIAS habHex0      : std_logic IS habhex(0);
	ALIAS habHex1      : std_logic IS habhex(1);
	ALIAS habHex2 		 : std_logic IS habhex(2);
	ALIAS habHex3      : std_logic IS habhex(3);
	ALIAS habHex4      : std_logic IS habhex(4);
	ALIAS habHex5      : std_logic IS habhex(5);
	ALIAS habBaseTempo : std_logic IS habhex(6);
	ALIAS LimpaBaseTempo  : std_logic IS habhex(7);
	
--		clk : in std_logic;
--        seletor : IN std_logic_vector(7 DOWNTO 0);
--
--        -- portas de saída
--      habilitaRAM : OUT std_logic_vector(7 DOWNTO 0);
--		habhex : OUT std_logic_vector(7 DOWNTO 0);
--		habSw :  OUT std_logic_vector(7 DOWNTO 0); 
--		habBT :  OUT std_logic_vector(3 DOWNTO 0); 
	
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
--  	detectorSub : ENTITY work.edgeDetector(bordaSubida)
--			  PORT MAP(
--					clk     => CLOCK_50,
--					entrada => (NOT FPGA_RESET_N),
--					saida   => clk
--			  );

	processador: entity work.Processador
            port map (
				dataIn => BarramentoEntrada,
				clk => CLOCK_50,
				dataOut => BarramentoSaida,
				adress  => adress,
				habEscritaMEM => habEscritaMEM,
				habLeituraMEM => habLeituraMEM,
				pinTestSaidaULA => ula_out,
				pinOpcode => instOpCode
				);
--			
--		clk : in std_logic;
--        seletor : IN std_logic_vector(7 DOWNTO 0);
--
--        -- portas de saída
--    habilitaRAM : OUT std_logic_vector(7 DOWNTO 0);
--		habhex : OUT std_logic_vector(7 DOWNTO 0);
--		habSw :  OUT std_logic_vector(7 DOWNTO 0); 
--		habBT :  OUT std_logic_vector(3 DOWNTO 0); 
	
	Decoder: entity work.decodificador2x4
			port map (
			clk => CLOCK_50,
			seletor => adress,
			habilitaRAM => habilitaRAM,
			habhex => habhex,
			habSw => habSw,
			habBT => habBT
--			LOAD => instOpCode := "0001"
			);
									
				
	RAM: entity work.memoriaRAM generic map (dataWidth => 8, addrWidth => 8 )
            port map (
				addr => adress,
				we => habEscritaMEM,
				re => habLeituraMEM,
				habilita  => habRAM,
				clk => CLOCK_50,
				dado_in => BarramentoSaida,
				dado_out => BarramentoEntrada
				);


    interfaceChaves : ENTITY work.interfaceChaves
        GENERIC MAP(
            dataWidth => dataWidth
        )
        PORT MAP(
            Switch  => SW,
            habilita => habSw,
            saida    => BarramentoEntrada
        );

    interfaceBtn : ENTITY work.interfaceBotoes
        GENERIC MAP(
            dataWidth => dataWidth
            
        )
        PORT MAP(
            btn  => KEY,
            habilita => habBT,
            saida    => BarramentoEntrada
        );	

    interfaceHEX : ENTITY work.interfaceHEX
        GENERIC MAP(
				dataWidth => dataWidth
        )
        PORT MAP(
            clk      => CLOCK_50,
            dados    => BarramentoSaida,
				habilita0 => habHex0,
				habilita1 => habHex1,
				habilita2 => habHex2,
				habilita3 => habHex3,
				habilita4 => habHex4,
				habilita5 => habHex5,
				clr       => LimpaBaseTempo,
            HEX0      => s_HEX0,
            HEX1      => s_HEX1,
            HEX2      => s_HEX2,
            HEX3      => s_HEX3,
            HEX4      => s_HEX4,
            HEX5      => s_HEX5
				
        );
		  
--		          clk             : IN std_logic;
--        habilitaLeitura : IN std_logic;
--        limpaLeitura    : IN std_logic;
--        seletorClk      : IN std_logic;
--
--        -- Output ports
--        leituraUmSegundo : OUT std_logic_vector(DATA_WIDTH - 1 DOWNTO 0)

--	 interfaceBaseTempo : ENTITY work.baseDeTempo
--			  GENERIC MAP(
--					DATA_WIDTH => dataWidth
--			  )
--			  PORT MAP(
--					clk              => CLOCK_50,
--					habilitaLeitura  => habBaseTempo,
--					limpaLeitura     => LimpaBaseTempo,
--					seletorClk => '0',
--					leituraUmSegundo => BarramentoEntrada
--			  );	

    interfaceBaseTempo : ENTITY work.divisorGenerico_e_Interface
        GENERIC MAP(
            dataWidth => dataWidth
        )
        PORT MAP(
            clk              => CLOCK_50,
            habilitaLeitura  => habBaseTempo,
            limpaLeitura     => LimpaBaseTempo,
				sel              => SW(0),
            leituraUmSegundo => BarramentoEntrada
        );	
		  
	 LEDR(0) <= SW(0);
--	 LEDR(1) <= SW(1);
--	 LEDR(1) <= SW(2);
--	 LEDR(1) <= SW(3);
--	 LEDR(1) <= SW(4);
--	 LEDR(1) <= SW(5);
--	 LEDR(1) <= SW(6);
	  
	 HEX0 <= s_HEX0;
	 HEX1 <= s_HEX1;
	 HEX2 <= s_HEX2;
	 HEX3 <= s_HEX3;
	 HEX4 <= s_HEX4;
	 HEX5 <= s_HEX5;
	 habilitaSW_t <= habSw;
	 habilitaBT_t <= habBT;
	 habilitahex_t <= habhex;
	 BarramentoSaida_t  <= BarramentoSaida;
	 enderecoRAMROM_DEBUG <= adress;
	 ULA_t <= ula_out;
	 opcode_t <= instOpCode;
	 BarramentoEntrada_t <= BarramentoEntrada;
	 habBaseTempo_t <= habBaseTempo;
	 LimpaBaseTempo_t <=LimpaBaseTempo;

--	 limpa_t <= LimpaBaseTempo;

	 
end architecture;