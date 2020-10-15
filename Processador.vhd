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
    -- Entradas (placa)
		BarramentoDados: in std_logic_vector(7 DOWNTO 0);
		clk: in std_logic;
		barramentoEnd: out std_logic_vector (11 DOWNTO 0);
		dadoRAM: out std_logic_vector(7 DOWNTO 0)
    
  );
end entity;

architecture arch_name of processador is

	signal PC_Out, MUX_ProxPC_Out, Inc_Out,
			 ULA_Out, MUX_Imed_Out : std_logic_vector (7 DOWNTO 0);

	signal sel_mux_ProxPC, sel_mux_ula,
			 sel_muxImed, habEscritaReg,habLeituraMEM,	
			 habEscritaMEM	        : std_logic;
			 
	signal flagZero  			     : std_logic;
			
	signal hab_reg, ULAentradaA, ULAentradaB	              : std_logic_vector (7 DOWNTO 0);
			 
	signal Instrucao             : std_logic_vector(7 DOWNTO 0);
	
	signal operacao              : std_logic_vector(2 DOWNTO 0);

	alias opCode                 : std_logic_vector(7 downto 0) is Instrucao(7 downto 0);
	
	alias enderecoRegistradorA   : std_logic_vector(7 DOWNTO 4) is Instrucao(7 DOWNTO 4);
	alias enderecoRegistradorB   : std_logic_vector(7 DOWNTO 4) is Instrucao(7 DOWNTO 4);
	alias enderecoRegistradorC   : std_logic_vector(7 DOWNTO 4) is Instrucao(7 DOWNTO 4);
	
	alias imediatoValor          : std_logic_vector(7 DOWNTO 0) is Instrucao(7 downto 0);
	alias imediatoRAM            : std_logic_vector(7 DOWNTO 0) is Instrucao(7 downto 0);

	

 begin

  -- Para instanciar, a atribuição de sinais (e generics) segue a ordem: (nomeSinalArquivoDefinicaoComponente => nomeSinalNesteArquivo)
  -- regA:  entity work.nome_do_componente generic map (DATA_WIDTH => DATA_WIDTH)
  --        port map (dataIN => dataIN, dataOUT =>  RegAmuxA, enable =>  habRegA, clk =>  clk, rst => rst);

	ROM: entity work.memoriaROM generic map (dataWidth => 8)
            port map (Endereco => PC_Out , Dado => Instrucao );
	PC: entity work.registradorGenerico
            port map (CLK => clk, DIN => MUX_ProxPC_Out , DOUT => PC_Out , ENABLE => '1' , RST => '0');
	inc: entity work.somaConstante
            port map (entrada => PC_Out , saida => Inc_Out );
	MUX_PC: entity work.muxGenerico2x1
            port map (entradaA_MUX => Inc_Out , entradaB_MUX => opCode, seletor_MUX => sel_mux_ProxPC , saida_MUX => MUX_ProxPC_Out );

	MUX_Im: entity work.muxGenerico2x1
            port map (entradaA_MUX => Inc_Out , entradaB_MUX => imediatoValor, seletor_MUX => sel_muxImed , saida_MUX => MUX_Imed_Out );

	Registradores : entity work.bancoRegistradoresArqRegMem   generic map (larguraDados => dadosWidth, larguraEndBancoRegs => 	5)
				 port map ( clk => clk,
					  enderecoA => enderecoRegistradorA,
					  enderecoB => enderecoRegistradorB,
					  enderecoC => enderecoRegistradorC,
					  dadoEscrita => ULA_Out,
					  escreveC    => habEscritaReg, 
					  saidaA  => ULAentradaA
					  saidaB  => ULAentradaB);
					  
	ULA : entity work.ULA  generic map(larguraDados => 8)
          port map (entradaA => ULAentradaA,
			 entradaB =>  ULAentradaB, saida => ULA_Out,
			 seletor => operacao, flagZero => flagZero);		
			 
	MUX_ULA: entity work.muxGenerico2x1
            port map (entradaA_MUX => MUX_Imed_Out , entradaB_MUX => ULA_Out, seletor_MUX => sel_mux_ula , saida_MUX => hab_reg );
		
		
end architecture;