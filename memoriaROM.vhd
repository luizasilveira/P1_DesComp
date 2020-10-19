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
		-- R_US 	 : registrador para unidade de segundo					- 0001
		-- R_DS 	 : registrador para dezena de segundo					- 0010
		-- R_UM 	 : registrador para unidade de minuto					- 0011
		-- R_DM 	 : registrador para dezena de minuto					- 0100
		-- R_UH 	 : registrador para unidade de hora					   - 0101
		-- R_DH 	 : registrador para dezena de hora					   - 0110
		-- R_ADD1    : registrador para somar 1 (mantem valor 1)		- 0111
		-- R_CMP     : registrador para guardar o valor de tempo		- 1000
		-- R_10      : registrador para guardar o valor 10		      - 1001
		-- R_60      : registrador para guardar o valor 6		      - 1010
		-- R_20      : registrador para guardar o valor 2		      - 1011
		-- R_24      : registrador para guardar o valor 4		      - 1100

		-- Enderecos de memoria:
		-- HEX_US  		: enderco de memoria para o hex da unidade de segundo		- 01000000
		-- HEX_DS  		: enderco de memoria para o hex da dezena de segundo		- 01000001
		-- HEX_UM  		: enderco de memoria para o hex da unidade de minuto		- 01000010
		-- HEX_DM  		: enderco de memoria para o hex da dezena de minuto		- 01000011
		-- HEX_UH  		: enderco de memoria para o hex da unidade de hora			- 01000100
		-- HEX_DH  		: enderco de memoria para o hex da dezena de hora			- 01000101
		-- TEMP_CLEAR   : enderco de memoria para zerar o tempo no hex 			- 00001110	  

		-- Inicializa os endereços:
		--        OpCode     Ra       Rb       Rc      Imediato
		tmp(0) := "0000" & "0000" & "0000" & "0000" & "00000000"; 
		tmp(1) := "0111" & "0000" & "0000" & "0001" & "00000000"; 
		tmp(2) := "0111" & "0000" & "0000" & "0010" & "00000000";	
		tmp(3) := "0111" & "0000" & "0000" & "0011" & "00000000"; 
		tmp(4) := "0111" & "0000" & "0000" & "0100" & "00000000"; 
		tmp(5) := "0111" & "0000" & "0000" & "0101" & "00000000"; 
		tmp(6) := "0111" & "0000" & "0000" & "0110" & "00000000"; 
		tmp(7) := "0111" & "0000" & "0000" & "0111" & "00000001"; 
		tmp(8) := "0111" & "0000" & "0000" & "1001" & "00000000"; 
		tmp(9) := "0111" & "0000" & "0000" & "1010" & "00000000"; 
		tmp(10) := "0111" & "0000" & "0000" & "1011" & "00000000";
		tmp(11) := "0111" & "0000" & "0000" & "1100" & "00000000";
		-- loop
		tmp(12) := "0001" & "1000" & "0111" & "1000" & "00001110";
		tmp(13) := "1000" & "0000" & "0000" & "0000" & "00000000";
		tmp(14) := "0100" & "0000" & "0000" & "0000" & "00010000"; -- #16
		tmp(15) := "0101" & "0000" & "0000" & "0000" & "00001100"; -- loop #12
		-- passou_um_segundo
		tmp(16) := "0010" & "0001" & "0111" & "0001" & "00000000";
		tmp(17) := "1000" & "1001" & "0001" & "0000" & "00000000";
		tmp(18) := "0100" & "0000" & "0000" & "0000" & "00010100"; -- #20
		tmp(19) := "0101" & "0000" & "0000" & "0000" & "00110100"; -- atualiza #52
		-- passou_10_segundos
		tmp(20) := "0111" & "0001" & "0000" & "0000" & "00000000";
		tmp(21) := "0010" & "0010" & "0111" & "0010" & "00000000";
		tmp(22) := "1000" & "1010" & "0010" & "0000" & "00000000";
		tmp(23) := "0100" & "0000" & "0000" & "0000" & "00011001"; -- #25
		tmp(24) := "0101" & "0000" & "0000" & "0000" & "00110100"; -- atualiza #52
		-- passou_60_segundos
		tmp(25) := "0111" & "0010" & "0000" & "0000" & "00000000";
		tmp(26) := "0010" & "0011" & "0111" & "0011" & "00000000";
		tmp(27) := "1000" & "1001" & "0011" & "0000" & "00000000";
		tmp(28) := "0100" & "0000" & "0000" & "0000" & "00011110"; -- #30
		tmp(29) := "0101" & "0000" & "0000" & "0000" & "00110100"; -- atualiza #52
		-- passou_10_minutos
		tmp(30) := "0111" & "0011" & "0000" & "0000" & "00000000";
		tmp(31) := "0010" & "0100" & "0111" & "0100" & "00000000";
		tmp(32) := "1000" & "1010" & "0100" & "0000" & "00000000";
		tmp(33) := "0100" & "0000" & "0000" & "0000" & "00100011"; -- #35
		tmp(34) := "0101" & "0000" & "0000" & "0000" & "00110100"; -- atualiza #52
		-- passou_60_minutos
		tmp(35) := "0111" & "0100" & "0000" & "0000" & "00000000";
		tmp(36) := "0010" & "0101" & "0111" & "0101" & "00000000";
		tmp(37) := "1000" & "1001" & "0101" & "0000" & "00000000";
		tmp(38) := "0100" & "0000" & "0000" & "0000" & "00101000"; -- #40
		tmp(39) := "0101" & "0000" & "0000" & "0000" & "00110100"; -- atualiza #52
		-- passou_10_horas
		tmp(40) := "0111" & "0101" & "0000" & "0000" & "00000000";
		tmp(41) := "0010" & "0110" & "0111" & "0110" & "00000000";
		tmp(42) := "1000" & "1011" & "0110" & "0000" & "00000000";
		tmp(43) := "0100" & "0000" & "0000" & "0000" & "00101101"; -- #45
		tmp(44) := "0101" & "0000" & "0000" & "0000" & "00110100"; -- atualiza #52
		-- passou_20_horas
		tmp(45) := "0111" & "0101" & "0000" & "0000" & "00000000";
		tmp(46) := "0010" & "0110" & "0111" & "0110" & "00000000";
		tmp(47) := "1000" & "1100" & "0101" & "0000" & "00000000";
		tmp(48) := "0100" & "0000" & "0000" & "0000" & "00110010"; -- #50
		tmp(49) := "0101" & "0000" & "0000" & "0000" & "00110100"; -- atualiza #52
		-- passou_24_horas
		tmp(50) := "0111" & "0101" & "0000" & "0000" & "00000000";
		tmp(51) := "0111" & "0110" & "0000" & "0000" & "00000000";
		-- atualiza
		tmp(52) := "0110" & "0001" & "0000" & "0000" & "01000000";
		tmp(53) := "0110" & "0010" & "0000" & "0000" & "01000001";
		tmp(54) := "0110" & "0011" & "0000" & "0000" & "01000010";
		tmp(55) := "0110" & "0100" & "0000" & "0000" & "01000011";
		tmp(56) := "0110" & "0101" & "0000" & "0000" & "01000100";
		tmp(57) := "0110" & "0110" & "0000" & "0000" & "01000101";
		tmp(58) := "0101" & "0000" & "0000" & "0000" & "00001100"; -- loop #12
			
			
        -- Inicializa os endereços:
		  --        OpCode     Ra       Rb        Rc     Imediato
--        tmp(0) := "0000" & "0000" & "0000" & "0000" & "00000000"; -- NOP
--        tmp(1) := "0111" & "0000" & "0000" & "0001" & "00001110"; -- MOVI R1, #14
--		  tmp(2) := "0111" & "0000" & "0000" & "0010" & "00001110"; -- MOVI R2, #14
--		  tmp(3) := "1000" & "0001" & "0010" & "0000" & "00000000"; -- CMP R1, R2
--		  tmp(4) := "0100" & "0000" & "0000" & "0000" & "00001010"; -- JE R1, #10
--		  tmp(5) := "0000" & "0000" & "0000" & "0000" & "00000000"; -- NOP
--		  tmp(6) := "0111" & "0000" & "0000" & "0011" & "00001100"; -- MOVI R3, #12
--		  tmp(7) := "0010" & "0010" & "0011" & "0100" & "00000000"; -- ADD R2 + R3 => R4 
--	  
--		   tmp(0) := "0111" & "0000" & "0000" & "0001" & "00000011";
--         tmp(1) := "0111" & "0000" & "0000" & "0010" & "00000001";
--         tmp(2) := "0010" & "0001" & "0010" & "0011" & "00000000";
--         tmp(3) := "0110" & "0011" & "0000" & "0000" & "01000000";
--         tmp(4) := "0110" & "0010" & "0000" & "0000" & "01000001";
--         tmp(5) := "0111" & "0001" & "0000" & "0000" & "00001111";

--		  tmp(8) := "1000" & "0000" & "0000" & "1111" & "00000111"; -- LOAD R0 <= [7]
--		  tmp(9) := "0110" & "0100" & "0000" & "0000" & "00010000"; -- STORE [8] <= R4
--		  
--		  
--		  tmp(10) := "0101" & "0000" & "0000" & "0000" & "00000101"; -- JMP 0x5
--        tmp(11) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(12) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(13) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(14) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(15) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(16) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(17) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(18) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(19) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(20) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(21) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(22) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  tmp(23) := "0000" & "0000" & "0000" & "0000" & "00000000";
--		  
       return tmp;
   end initMemory;

	-- sinal que instancia a memória ROM
   signal memROM : blocoMemoria := initMemory;

	begin
		-- salva o endereço da instrução da memória ROM no dado de saída
		Dado <= memROM (to_integer(unsigned(Endereco)));
		
end architecture;