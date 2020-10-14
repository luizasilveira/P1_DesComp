LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY UnidadeControle IS
    GENERIC (
        DATA_WIDTH : NATURAL := 8; -- dado
        ADDR_WIDTH : NATURAL := 8  -- endereço 
    );
    PORT (
        -- Input ports
        clk    : IN std_logic;
        opCode : IN std_logic_vector(3 DOWNTO 0); -- opcode tem quatro bits
		  flagZero : IN std_logic;
        -- Output ports
        palavraControle : OUT std_logic_vector(9 DOWNTO 0)
    );
END ENTITY;

ARCHITECTURE main OF unidadeControle IS
    ALIAS jmp            : std_logic IS palavraControle(9);
	 ALIAS jmpCompare     : std_logic IS palavraControle(8);
	 ALIAS sel_mux_ula    : std_logic IS palavraControle(7);
    ALIAS sel_muxImed    : std_logic IS palavraControle(6);
    ALIAS habEscritaReg  : std_logic IS palavraControle(5);
    ALIAS operacao       : std_logic_vector(2 DOWNTO 0) IS palavraControle(4 DOWNTO 2);
    ALIAS habLeituraMEM  : std_logic IS palavraControle(1);
    ALIAS habEscritaMEM  : std_logic IS palavraControle(0);
	 
	 SIGNAL instrucao     : std_logic_vector(8 DOWNTO 0);
	 
	 CONSTANT opcodeLOAD  : std_logic_vector(3 DOWNTO 0) := "0000";
    CONSTANT opcodeMOV   : std_logic_vector(3 DOWNTO 0) := "0001";
    CONSTANT opcodeADD   : std_logic_vector(3 DOWNTO 0) := "0010";
    CONSTANT opcodeSub   : std_logic_vector(3 DOWNTO 0) := "0011";
    CONSTANT opcodeJE    : std_logic_vector(3 DOWNTO 0) := "0100";	 
    CONSTANT opcodeJMP   : std_logic_vector(3 DOWNTO 0) := "0101";
    CONSTANT opcodeSTORE : std_logic_vector(3 DOWNTO 0) := "0110"; 
    CONSTANT opcodeAND   : std_logic_vector(3 DOWNTO 0) := "0111";
    CONSTANT opcodeOR    : std_logic_vector(3 DOWNTO 0) := "1000";
	 
	 ALIAS load    : std_logic IS instrucao(0);
    ALIAS mov     : std_logic IS instrucao(1);
    ALIAS add     : std_logic IS instrucao(2);
    ALIAS sub     : std_logic IS instrucao(3);
    ALIAS je		: std_logic IS instrucao(4);
	 ALIAS jmp     : std_logic IS instrucao(5);
    ALIAS store   : std_logic IS instrucao(6);
    ALIAS And_    : std_logic IS instrucao(7);
    ALIAS or_     : std_logic IS instrucao(8);
	 
	 --           jmp   jmpCompare  sel_mux_ula  sel_muxImed  habEscritaReg   operacao  habLeituraMEM  habEscritaMEM
	 -- load			0	       0        0	  				 1              0           0000        0                 0
	 -- mov			0	       0        0	  				 1              0           0000        0                 0
	 -- add			0	       0        0	  				 1              0           0000        0                 0
	 -- sub        0	       0        0	  				 1              0           0000        0                 0
	 -- je			0			 0			 0					 0              0           0000        0                 0
	 -- jmp        0         0        0              0              0           0000        0                 0
	 -- store      0         0        0              1              0           0000        1                 0
	 -- And_       0         0        0              0              0           0000        0                 1
	 -- or_			0	       0        0	  				 1              1           0000        0                 0
	 
BEGIN
	WITH opCode SELECT
		  instrucao <= 
		  "000000001" WHEN opcodeLOAD,
        "000000010" WHEN opcodeMOV,
        "000000100" WHEN opcodeADD,
        "000001000" WHEN opcodeSub,
        "000010000" WHEN opcodeJE,
        "000100000" WHEN opcodeJMP,
        "001000000" WHEN opcodeSTORE,
        "010000000" WHEN opcodeAND,
		  "100000000" WHEN opcodeOR,
        "000000000" WHEN OTHERS;
		  
--	WITH opcode SELECT		  		  
--		  operacao <= 
--		  "001" WHEN opcodeLOAD,
--		  
--        "001" WHEN opcodeMOV,
--		  
--        "000" WHEN opcodeADD,
--        "001" WHEN opcodeSub,
--        "001" WHEN opcodeJE,
--        "001" WHEN opcodeJMP,
--		  
--        "011" WHEN opcodeSTORE,
--		  
--        "110" WHEN opcodeAND,
--        "111" WHEN opcodeOR,
--        "000" WHEN OTHERS;
		  


    jmp <= jmp OR (je AND flagZero);

    jmpCompare <= (je AND flagZero);

--    sel_mux_ula <= 
	 
	 sel_muxImed <= add OR sub OR mov OR or_ OR and_;
	 
	 habEscritaReg <= add OR sub OR or_ OR and_ OR mov OR load ;
	 
	 habLeituraMEM <= add OR sub OR mov OR OR_ OR AND_;

    habEscritaMEM <= mov;

	 
END ARCHITECTURE;