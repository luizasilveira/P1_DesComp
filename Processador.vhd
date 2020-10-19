library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processador is

--	generic (
--		 enderecoWidth: natural := 12;
--		 dadosWidth: natural := 8;
--       -- Utilizar o que for maior entre: dadosWidth e enderecoWidth e somar com a quantidade de sinais de controle:
--       dataROMWidth: natural := 8 + 7
--   );

  port (
		-- portas de entrada (placa)
		clk: in std_logic;
		dataIn: in std_logic_vector(7 DOWNTO 0);
		
		-- portas de saída
		dataOut: out std_logic_vector(7 DOWNTO 0);
		adress: out std_logic_vector(7 DOWNTO 0);
		habEscritaReg: out std_logic;
		habEscritaMEM: out std_logic;
		habLeituraMEM: out std_logic;
		
		pinTest : out std_logic_vector(7 downto 0);
		pinTestA : out std_logic_vector(7 downto 0);
		pinTestB : out std_logic_vector(7 downto 0);
		pinTestSaidaULA : out std_logic_vector(7 downto 0);
		pinTestflagZero : out std_logic;
		pinOpcode : out std_logic_vector(3 downto 0)
	);
 
end entity;


architecture arch_name of processador is

	-- declara os sinais do processadot
	signal PC_Out, MUX_ProxPC_Out, Inc_Out,
			 ULA_Out, MUX_Imed_Out : std_logic_vector (7 DOWNTO 0);		 
	signal flagZero, flipflop_Out: std_logic;
	signal escritaRC, ULAentradaA,
			 ULAentradaB           : std_logic_vector (7 DOWNTO 0);
	signal Instrucao             : std_logic_vector(23 DOWNTO 0);
	signal palavraControle       : std_logic_vector(10 DOWNTO 0);
--
--	signal sel_mux_ProxPC, sel_mux_ula,
--			 sel_muxImed, habEscritaReg,habLeituraMEM,	
--			 habEscritaMEM	        : std_logic;

	-- declara novas variáveis para instanciar partes do vetor de instrução
	alias opCode                 : std_logic_vector(23 downto 20) is Instrucao(23 downto 20); -- opcode [20-23]
	alias enderecoRegistradorA   : std_logic_vector(19 DOWNTO 16) is Instrucao(19 DOWNTO 16); -- regA   [16-19]
	alias enderecoRegistradorB   : std_logic_vector(15 DOWNTO 12) is Instrucao(15 DOWNTO 12); -- regB   [12-15]
	alias enderecoRegistradorC   : std_logic_vector(11 DOWNTO 8) is Instrucao(11 DOWNTO 8);   -- regC   [8 -11]
	alias imediatoValor          : std_logic_vector(7 DOWNTO 0) is Instrucao(7 downto 0);     -- imed   [0 - 7]

	begin

-- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
-- regA:  entity work.nome_do_componente generic map (DATA_WIDTH => DATA_WIDTH)
--        port map (dataIN => dataIN, dataOUT =>  RegAmuxA, enable =>  habRegA, clk =>  clk, rst => rst);
  
--  ALIAS jump           : std_logic IS palavraControle(9);
--	 ALIAS jmpCompare     : std_logic IS palavraControle(8);

	-- 
	UC: entity work.UnidadeControle
          port map (
					clk => clk,
					opCode => opCode,
					flagZero  => flagZero,
					palavraControle => palavraControle
			 );
				
	ROM: entity work.memoriaROM generic map (dataWidth => 24, addrWidth => 8 )
           port map (
					Endereco => PC_Out,
					Dado => Instrucao
			  );
				
	PC: entity work.registradorGenerico
          port map (
					clk => clk,
					DIN => MUX_ProxPC_Out,
					DOUT => PC_Out,
					ENABLE => '1',
					RST => '0'
			 );
				
	inc: entity work.somaConstante
            port map (
					entrada => PC_Out,
					saida => Inc_Out
				);
				
	MUX_PC: entity work.muxGenerico2x1
					port map (
						entradaA_MUX => Inc_Out,
						entradaB_MUX => imediatoValor, 
--						seletor_MUX => sel_mux,
						seletor_MUX => palavraControle(9) OR (palavraControle(8) AND flipflop_Out),
						saida_MUX => MUX_ProxPC_Out
					);
				

	MUX_Im: entity work.muxGenerico2x1
				  port map (
						entradaA_MUX => dataIn,
						entradaB_MUX => imediatoValor,
						seletor_MUX => palavraControle(6),
						saida_MUX => MUX_Imed_Out
				  );

	Registradores : entity work.bancoRegistradoresArqRegReg
							 generic map (
								 larguraDados => 8,
								 larguraEndBancoRegs => 4
							 )
							 port map ( 
								 clk => clk,
								 enderecoA => enderecoRegistradorA,
								 enderecoB => enderecoRegistradorB,
								 enderecoC => enderecoRegistradorC,
								 dadoEscritaC => escritaRC,
								 escreveC => palavraControle(5), 
								 saidaA => ULAentradaA,
								 saidaB => ULAentradaB
						);
					  
	ULA : entity work.ULA  
				generic map(
					larguraDados => 8
				)
				port map (
					entradaA => ULAentradaA,
					entradaB => ULAentradaB,
					saida => ULA_Out,
					seletor => palavraControle(4 DOWNTO 2),
					flagZero => flagZero
				);		
				
	flipflop : entity work.flipflop   
				  port map (
						data_in => flagZero,
						data_out => flipflop_Out,
						ENABLE => palavraControle(10),
						clk => clk,
						rst => '0'
				  );
				 
	MUX_ULA: entity work.muxGenerico2x1
            port map (
					entradaA_MUX => MUX_Imed_Out ,
					entradaB_MUX => ULA_Out,
					seletor_MUX => palavraControle(7),
					saida_MUX => escritaRC
				);

	dataOut <= ULAentradaA;
	adress <= imediatoValor;
	habEscritaMEM <= palavraControle(0);
	habLeituraMEM <= palavraControle(1);
		
		habEscritaReg <= palavraControle(5);
		
		pinTest <= PC_Out;
		pinTestA <= ULAentradaA;
		pinTestB <= ULAentradaB;
		pinTestSaidaULA <= ULA_Out;
		
		pinTestflagZero <= flagZero;
		pinOpcode <= opCode;
--	
end architecture;