LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY UnidadeControle IS

    GENERIC (
		  -- total de bits do dado e do endereço
        DATA_WIDTH : NATURAL := 8; -- dado
        ADDR_WIDTH : NATURAL := 8  -- endereço 
    );
	 
    PORT (
        -- portas de entrada
        clk    : IN std_logic;
        opCode : IN std_logic_vector(3 DOWNTO 0); -- opcode tem quatro bits
		  flagZero : IN std_logic;
		  
        -- portas de saída
        palavraControle : OUT std_logic_vector(10 DOWNTO 0)
    );
	 
END ENTITY;


ARCHITECTURE main OF unidadeControle IS

	 -- declara novas variáveis para instanciar partes do vetor da palavra de controle
	 ALIAS habFlipFlop	 : std_logic IS palavraControle(10);
    ALIAS jump           : std_logic IS palavraControle(9);
	 ALIAS jmpCompare     : std_logic IS palavraControle(8);
	 ALIAS sel_mux_ula    : std_logic IS palavraControle(7);
    ALIAS sel_muxImed    : std_logic IS palavraControle(6);
    ALIAS habEscritaReg  : std_logic IS palavraControle(5);
    ALIAS operacao       : std_logic_vector(2 DOWNTO 0) IS palavraControle(4 DOWNTO 2);
    ALIAS habLeituraMEM  : std_logic IS palavraControle(1);
    ALIAS habEscritaMEM  : std_logic IS palavraControle(0);
	 
	 -- declara o sinal da instrução
	 SIGNAL instrucao     : std_logic_vector(8 DOWNTO 0);
	 
	 -- declara as constantes com os op codes de cada instrução
    CONSTANT opcodeLOAD  : std_logic_vector(3 DOWNTO 0) := "0001";
    CONSTANT opcodeADD   : std_logic_vector(3 DOWNTO 0) := "0010";
    CONSTANT opcodeSUB   : std_logic_vector(3 DOWNTO 0) := "0011";
    CONSTANT opcodeJE    : std_logic_vector(3 DOWNTO 0) := "0100";	 
    CONSTANT opcodeJMP   : std_logic_vector(3 DOWNTO 0) := "0101";
    CONSTANT opcodeSTORE : std_logic_vector(3 DOWNTO 0) := "0110"; 
	 CONSTANT opcodeMOVI  : std_logic_vector(3 DOWNTO 0) := "0111";
	 CONSTANT opcodeCMP   : std_logic_vector(3 DOWNTO 0) := "1000";
	
 --										  			    	 INSTRUÇÕES
 
 --           		        load   	mov  		add  		sub	  je   	 jmp		store  	movi		cmp
 -- 		  habFlipFlop		 0			 0			 0			 0			0		  0	  	  0		  0 		 1
 --     C  jump				 0	       0        0			 0       0       1        0        0		 0
 -- P   O  jmpCompare		 0	       0        0	  		 0       1       0        0        0		 0
 -- O   N  sel_mux_ula		 0	       0        1			 1       0       0        0        0		 0
 -- N D T  sel_muxImed      0	       0        0			 0       0       0        0        1		 1
 -- T E R  habEscritaReg	 1			 1			 1			 1       0       0        0        1		 0
 -- O   O  operação        010      010      000      001     010     010      010      010		001
 -- S   L  habLeituraMEM    1        0        0        0       0       0        0        0		 0
 --     E  habEscritaMEM    0        0        0        0       0       0        1        0		 0
	 
	 -- habilita os pontos de controle para cada instrução
	 BEGIN
		 habFlipFlop   <= '1' when opcode = opcodeCMP else '0';
	 	 jump 			<= '1' when opcode = opcodeJMP else '0';
		 jmpCompare 	<= '1' when opcode = opcodeJE else '0';
		 sel_mux_ula 	<= '1' when opcode = opcodeADD or
											opcode = opcodeSUB or 
											opcode = opcodeCMP else '0';
		 sel_muxImed 	<= '1' when opcode = opcodeMOVI else '0';
		 habEscritaReg <= '1' when opcode = opcodeLOAD or
											opcode = opcodeSUB or 
											opcode = opcodeADD or 
											opcode = opcodeMOVI else '0';
		 operacao 		<= "000" when opcode = opcodeADD else
								"001" when opcode = opcodeSUB or 
											  opcode = opcodeCMP else "010";
		 habLeituraMEM <= '1' when opcode = opcodeLOAD else '0';
		 habEscritaMEM <= '1' when opcode = opcodeSTORE else '0';
	 
END ARCHITECTURE;