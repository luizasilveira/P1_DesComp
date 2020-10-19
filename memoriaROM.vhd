-- referências: modelos VHDL da matéria de Design de Computadores - Insper 2020.2 - professor Paulo Santos

library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is

   generic (
		-- Total de bits das entradas e saidas e dos endereços da ROM
		dataWidth: natural := 24;
		addrWidth: natural := 8
   );
	
   port (
		-- porta de entrada
		Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
		
		-- porta de saída
		Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
	 
end entity;


architecture assincrona of memoriaROM is

	-- instancia o tamanho do bloco de memória das instruções
   type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

	-- função que retorna o bloco de memória das instruções
   function initMemory
		return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
		  
	begin
	
		-- Registradores:
		-- R_US 	 : registrador para unidade de segundo				- 0001
		-- R_DS 	 : registrador para dezena de segundo				- 0010
		-- R_UM 	 : registrador para unidade de minuto				- 0011
		-- R_DM 	 : registrador para dezena de minuto				- 0100
		-- R_UH 	 : registrador para unidade de hora					- 0101
		-- R_DH 	 : registrador para dezena de hora					- 0110
		-- R_ADD1    : registrador para somar 1 (mantem valor 1)		- 0111
		-- R_CMP     : registrador para guardar o valor de tempo		- 1000
		-- R_10      : registrador para guardar o valor 10		        - 1001
		-- R_60      : registrador para guardar o valor 6		        - 1010
		-- R_20      : registrador para guardar o valor 2		        - 1011
		-- R_24      : registrador para guardar o valor 4		        - 1100

		-- Enderecos de memoria:
		-- HEX_US  		: enderco de memoria para o hex da unidade de segundo		- 01000000
		-- HEX_DS  		: enderco de memoria para o hex da dezena de segundo		- 01000001
		-- HEX_UM  		: enderco de memoria para o hex da unidade de minuto		- 01000010
		-- HEX_DM  		: enderco de memoria para o hex da dezena de minuto		    - 01000011
		-- HEX_UH  		: enderco de memoria para o hex da unidade de hora			- 01000100
		-- HEX_DH  		: enderco de memoria para o hex da dezena de hora			- 01000101
		-- TEMP_READ    : enderco de memoria para ler o tempo no hex 				- 00001110
		-- TEMP_CLEAR   : enderco de memoria para zerar o tempo no hex 				- 00001111	  	

		-- Inicializa os endereços:
		--        OpCode     Ra       Rb       Rc      Imediato
		tmp(0) := "0111" & "0000" & "0000" & "0001" & "00000000";
		tmp(1) := "0111" & "0000" & "0000" & "0010" & "00000000";
		tmp(2) := "0111" & "0000" & "0000" & "0011" & "00000000";
		tmp(3) := "0111" & "0000" & "0000" & "0100" & "00000000";
		tmp(4) := "0111" & "0000" & "0000" & "0101" & "00000000";
		tmp(5) := "0111" & "0000" & "0000" & "0110" & "00000000";
		tmp(6) := "0111" & "0000" & "0000" & "0111" & "00000001";
		tmp(7) := "0111" & "0000" & "0000" & "1001" & "00001010";
		tmp(8) := "0111" & "0000" & "0000" & "1010" & "00000110";
		tmp(9) := "0111" & "0000" & "0000" & "1011" & "00000010";
		tmp(10) := "0111" & "0000" & "0000" & "1100" & "00000100";
		tmp(11) := "0001" & "0000" & "0000" & "1000" & "00001111";
		-- LABEL_X
		tmp(12) := "0001" & "0000" & "0000" & "1000" & "00001110";
		tmp(13) := "1000" & "1000" & "0111" & "0000" & "00000000";
		tmp(14) := "0100" & "0000" & "0000" & "0000" & "00010000";
		tmp(15) := "0101" & "0000" & "0000" & "0000" & "00001100";
		-- LABEL_X
		tmp(16) := "0001" & "0000" & "0000" & "1000" & "00001111";
		tmp(17) := "0010" & "0001" & "0111" & "0001" & "00000000";
		tmp(18) := "1000" & "1001" & "0001" & "0000" & "00000000";
		tmp(19) := "0100" & "0000" & "0000" & "0000" & "00010101";
		tmp(20) := "0101" & "0000" & "0000" & "0000" & "00110111";
		-- LABEL_X
		tmp(21) := "0111" & "0000" & "0000" & "0001" & "00000000";
		tmp(22) := "0010" & "0010" & "0111" & "0010" & "00000000";
		tmp(23) := "1000" & "1010" & "0010" & "0000" & "00000000";
		tmp(24) := "0100" & "0000" & "0000" & "0000" & "00011010";
		tmp(25) := "0101" & "0000" & "0000" & "0000" & "00110111";
		-- LABEL_X
		tmp(26) := "0111" & "0000" & "0000" & "0010" & "00000000";
		tmp(27) := "0010" & "0011" & "0111" & "0011" & "00000000";
		tmp(28) := "1000" & "1001" & "0011" & "0000" & "00000000";
		tmp(29) := "0100" & "0000" & "0000" & "0000" & "00011111";
		tmp(30) := "0101" & "0000" & "0000" & "0000" & "00110111";
		-- LABEL_X
		tmp(31) := "0111" & "0000" & "0000" & "0011" & "00000000";
		tmp(32) := "0010" & "0100" & "0111" & "0100" & "00000000";
		tmp(33) := "1000" & "1010" & "0100" & "0000" & "00000000";
		tmp(34) := "0100" & "0000" & "0000" & "0000" & "00100100";
		tmp(35) := "0101" & "0000" & "0000" & "0000" & "00110111";
		-- LABEL_X
		tmp(36) := "0111" & "0000" & "0000" & "0100" & "00000000";
		tmp(37) := "0010" & "0101" & "0111" & "0101" & "00000000";
		tmp(38) := "1000" & "1100" & "0101" & "0000" & "00000000";
		tmp(39) := "0100" & "0000" & "0000" & "0000" & "00110010";
		-- LABEL_X
		tmp(40) := "1000" & "1001" & "0101" & "0000" & "00000000";
		tmp(41) := "0100" & "0000" & "0000" & "0000" & "00101011";
		tmp(42) := "0101" & "0000" & "0000" & "0000" & "00110111";
		-- LABEL_X
		tmp(43) := "0111" & "0000" & "0000" & "0101" & "00000000";
		tmp(44) := "0010" & "0110" & "0111" & "0110" & "00000000";
		tmp(45) := "1000" & "1011" & "0110" & "0000" & "00000000";
		tmp(46) := "0100" & "0000" & "0000" & "0000" & "00110000";
		tmp(47) := "0101" & "0000" & "0000" & "0000" & "00110111";
		-- LABEL_X
		tmp(48) := "0111" & "0000" & "0000" & "0101" & "00000000";
		tmp(49) := "0101" & "0000" & "0000" & "0000" & "00110111";
		-- LABEL_X
		tmp(50) := "1000" & "1011" & "0110" & "0000" & "00000000";
		tmp(51) := "0100" & "0000" & "0000" & "0000" & "00110101";
		tmp(52) := "0101" & "0000" & "0000" & "0000" & "00101000";
		-- LABEL_X
		tmp(53) := "0111" & "0000" & "0000" & "0101" & "00000000";
		tmp(54) := "0111" & "0000" & "0000" & "0110" & "00000000";
		-- LABEL_X
		tmp(55) := "0110" & "0001" & "0000" & "0000" & "01000000";
		tmp(56) := "0110" & "0010" & "0000" & "0000" & "01000001";
		tmp(57) := "0110" & "0011" & "0000" & "0000" & "01000010";
		tmp(58) := "0110" & "0100" & "0000" & "0000" & "01000011";
		tmp(59) := "0110" & "0101" & "0000" & "0000" & "01000100";
		tmp(60) := "0110" & "0110" & "0000" & "0000" & "01000101";
		tmp(61) := "0101" & "0000" & "0000" & "0000" & "00001100";
       return tmp;
   end initMemory;

	-- sinal que instancia a memória ROM
   signal memROM : blocoMemoria := initMemory;

	begin
		-- salva o endereço da instrução da memória ROM no dado de saída
		Dado <= memROM (to_integer(unsigned(Endereco)));
		
end architecture;