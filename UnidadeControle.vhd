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
    ALIAS jump            : std_logic IS palavraControle(9);
	 ALIAS jmpCompare     : std_logic IS palavraControle(8);
	 ALIAS sel_mux_ula    : std_logic IS palavraControle(7);
    ALIAS sel_muxImed    : std_logic IS palavraControle(6);
    ALIAS habEscritaReg  : std_logic IS palavraControle(5);
    ALIAS operacao       : std_logic_vector(2 DOWNTO 0) IS palavraControle(4 DOWNTO 2);
    ALIAS habLeituraMEM  : std_logic IS palavraControle(1);
    ALIAS habEscritaMEM  : std_logic IS palavraControle(0);
	 
	 SIGNAL instrucao     : std_logic_vector(8 DOWNTO 0);
	 

    CONSTANT opcodeMOV   : std_logic_vector(3 DOWNTO 0) := "0001";
    CONSTANT opcodeADD   : std_logic_vector(3 DOWNTO 0) := "0010";
    CONSTANT opcodeSUB   : std_logic_vector(3 DOWNTO 0) := "0011";
    CONSTANT opcodeJE    : std_logic_vector(3 DOWNTO 0) := "0100";	 
    CONSTANT opcodeJMP   : std_logic_vector(3 DOWNTO 0) := "0101";
    CONSTANT opcodeSTORE : std_logic_vector(3 DOWNTO 0) := "0110"; 
--    CONSTANT opcodeAND   : std_logic_vector(3 DOWNTO 0) := "0111";
--    CONSTANT opcodeOR    : std_logic_vector(3 DOWNTO 0) := "1000";
	 CONSTANT opcodeMOVI  : std_logic_vector(3 DOWNTO 0) := "0111";
	 	 CONSTANT opcodeLOAD  : std_logic_vector(3 DOWNTO 0) := "1000";
	
	 
	 --           jump   jmpCompare  sel_mux_ula  sel_muxImed  habEscritaReg   operacao  habLeituraMEM  habEscritaMEM
	 -- load			0	       0        0	  				 1              0           0000        0                 0
	 -- mov			0	       0        0	  				 1              0           0000        0                 0
	 -- add			0	       0        0	  				 1              0           0000        0                 0
	 -- sub        0	       0        0	  				 1              0           0000        0                 0
	 -- je			0			 0			 0					 0              0           0000        0                 0
	 -- jmp        0         0        0              0              0           0000        0                 0
	 -- store      0         0        0              1              0           0000        1                 0
	 -- And_       0         0        0              0              0           0000        0                 1
	 -- opOr			0	       0        0	  				 1              1           0000        0                 0
	 
BEGIN

jump <= '1' when opcode = opcodeJMP else '0';
jmpCompare <= '1' when opcode = opcodeJE else '0';
sel_mux_ula <= '1' when opcode = opcodeADD or opcode = opcodeSUB else '0';
sel_muxImed <= '1' when opcode = opcodeMOVI else '0';

habEscritaReg <= '1' when opcode = opcodeLOAD or opcode = opcodeMOV or opcode = opcodeSUB or opcode = opcodeADD or opcode = opcodeMOVI else '0';

operacao <= "000" when opcode = opcodeADD else
				"001" when opcode = opcodeSUB else
				"010";
habLeituraMEM <= '1' when opcode = opcodeLOAD else '0';
habEscritaMEM <= '1' when opcode = opcodeSTORE else '0';

--
--	 
--	 CONSTANT opcodeLOAD  : std_logic_vector(3 DOWNTO 0) := "0000";
--    CONSTANT opcodeMOV   : std_logic_vector(3 DOWNTO 0) := "0001";
--    CONSTANT opcodeADD   : std_logic_vector(3 DOWNTO 0) := "0010";
--    CONSTANT opcodeSUB   : std_logic_vector(3 DOWNTO 0) := "0011";
--    CONSTANT opcodeJE    : std_logic_vector(3 DOWNTO 0) := "0100";	 
--    CONSTANT opcodeJMP   : std_logic_vector(3 DOWNTO 0) := "0101";
--    CONSTANT opcodeSTORE : std_logic_vector(3 DOWNTO 0) := "0110"; 
--    CONSTANT opcodeAND   : std_logic_vector(3 DOWNTO 0) := "0111";
--    CONSTANT opcodeOR    : std_logic_vector(3 DOWNTO 0) := "1000";
	 
END ARCHITECTURE;