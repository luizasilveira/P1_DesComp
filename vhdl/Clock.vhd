library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Clock is

    GENERIC (
		  -- Total de bits das entradas e saidas
        dataWidth : NATURAL := 8
    );
	 
	 port (
		  -- portas de entrada
		  CLOCK_50     : IN std_logic;
        SW           : IN std_logic_vector(9 DOWNTO 0);
        KEY          : IN std_logic_vector(3 DOWNTO 0);
        FPGA_RESET_N : IN std_logic;
		  
		  -- portas de saída
		  LEDR 		   : out std_logic_vector (9 downto 0);
        HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT std_logic_vector(6 DOWNTO 0)
  );
  
end entity;


architecture arch_name of Clock is

	-- declara os sinais do relógio
	signal BarramentoEntrada, BarramentoSaida, adress 			: std_logic_vector (7 DOWNTO 0);
			 
	signal habEscritaMEM, habLeituraMEM, habBT, habSw      	: std_logic;
	
	signal habilitaRAM, habhex             		  			   : std_logic_vector(7 DOWNTO 0);	
	
	signal s_HEX0, s_HEX1, s_HEX2, s_HEX3, s_HEX4, s_HEX5    : std_logic_vector(6 DOWNTO 0);
	
	signal habBaseTempo 													: std_logic_vector(1 DOWNTO 0);
	
	
	-- declara novas variáveis para instanciar os periféricos
	ALIAS habRAM       	: std_logic IS habilitaRAM(0);	
	ALIAS habHex0      	: std_logic IS habhex(0);
	ALIAS habHex1      	: std_logic IS habhex(1);
	ALIAS habHex2 		 	: std_logic IS habhex(2);
	ALIAS habHex3      	: std_logic IS habhex(3);
	ALIAS habHex4     	: std_logic IS habhex(4);
	ALIAS habHex5        : std_logic IS habhex(5);
	ALIAS habBTemp 		: std_logic IS habBaseTempo(0);
	ALIAS LimpaBaseTempo : std_logic IS habBaseTempo(1);
	

	begin

		-- processador
		processador:entity work.Processador
						port map (
							dataIn => BarramentoEntrada,
							clk => CLOCK_50,
							dataOut => BarramentoSaida,
							adress  => adress,
							habEscritaMEM => habEscritaMEM,
							habLeituraMEM => habLeituraMEM
						);

		-- decodificador
		Decoder: entity work.decodificador2x4
					port map (
						clk => CLOCK_50,
						seletor => adress,
						habilitaRAM => habilitaRAM,
						habhex => habhex,
						habSw => habSw,
						habBT => habBT,
						habBaseTempo => habBaseTempo
					);


	 -- botões
    interfaceBtn :  ENTITY work.interfaceBotoes
						  GENERIC MAP(
								dataWidth => dataWidth
								
						  )
						  PORT MAP(
								btn  => not(KEY),
								rd => habLeituraMEM,
								habilita => habBT,
								saida    => BarramentoEntrada
						  );	

	 -- display
    interfaceHEX :  ENTITY work.interfaceHEX
						  GENERIC MAP(
								dataWidth => dataWidth
						  )
						  PORT MAP(
								clk       => CLOCK_50,
								dados     => BarramentoSaida,
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
		  
	 -- bas de tempo
	 interfaceBaseTempo :  ENTITY work.divisorGenerico_e_Interface
								  GENERIC MAP(
										DATA_WIDTH => dataWidth
								  )
								  PORT MAP(
										clk              => CLOCK_50,
										habilitaLeitura  => habBTemp,
										limpaLeitura     => LimpaBaseTempo,
										sel => SW(0),
										leituraUmSegundo => BarramentoEntrada
								  );	
	
	
	 -- valores de saída do relógio para os periféricos
	 LEDR(0) <= SW(0);

	 HEX0 <= s_HEX0;
	 HEX1 <= s_HEX1;
	 HEX2 <= s_HEX2;
	 HEX3 <= s_HEX3;
	 HEX4 <= s_HEX4;
	 HEX5 <= s_HEX5;
	 
end architecture;