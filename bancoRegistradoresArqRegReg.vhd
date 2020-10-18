-- referências: modelos VHDL da matéria de Design de Computadores - Insper 2020.2 - professor Paulo Santos

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bancoRegistradoresArqRegReg is

    generic (
		 -- Total de bits das entradas, saídas e dos endereços do banco de registradores
		 larguraDados        : natural := 8;
       larguraEndBancoRegs : natural := 5   --Resulta em 2^5=32 posicoes
    );
	 
	 -- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port (
		 -- portas de entrada
		 clk        	  : in std_logic;
       enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
       enderecoB       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
       enderecoC       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
       dadoEscritaC    : in std_logic_vector((larguraDados-1) downto 0);
       escreveC        : in std_logic := '0';

		 -- portas de saída
       saidaA          : out std_logic_vector((larguraDados -1) downto 0);
       saidaB          : out std_logic_vector((larguraDados -1) downto 0)
    );
	 
end entity;


architecture comportamento of bancoRegistradoresArqRegReg is

	 -- instancia o tamanho da memória
    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t;

	 -- escreve o valor do dado de escrita no registrador C se a flag escreveC for acionada na subida do clock
	 begin
	 	 process(clk) is
		 begin
			 if (rising_edge(clk)) then
				 if (escreveC = '1') then
					 registrador(to_integer(unsigned(enderecoC))) := dadoEscritaC;
				 end if;
			 end if;
		 end process;
		 
	 -- instancia as saídas A e B do registrador
    saidaA <= registrador(to_integer(unsigned(enderecoA)));
    saidaB <= registrador(to_integer(unsigned(enderecoB)));
	 
end architecture;