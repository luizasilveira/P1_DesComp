-- referências: modelos VHDL da matéria de Design de Computadores - Insper 2020.2 - professor Paulo Santos

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA is

    generic (
	   -- Total de bits das entradas e saidas
	   larguraDados : natural := 8
    );
	 
    port (
	   -- portas de entrada
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(2 downto 0);
		
		--portas de saída
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      flagZero: out std_logic
    );
	 
end entity;


architecture comportamento of ULA is

	-- constante com valor 0
	constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');

	-- sinais que instanciam o tamanho das possíveis operações da ULA
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_and :    STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_or :     STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_xor :    STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal op_not :    STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal saida_ULA:  STD_LOGIC_VECTOR((larguraDados-1) downto 0);

   begin
		-- operações com as entradas A e B da ULA de cada um dos sinais
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
      op_and    <= entradaA and entradaB;
      op_or     <= entradaA or entradaB;
      op_xor    <= entradaA xor entradaB;
      op_not    <= not entradaA;

		-- instancia a saída da ULA com o resultado da operação escolhida pelo seletor
      saida_ULA <= soma when (seletor = "000") else
						 subtracao when (seletor = "001") else
						 entradaA when  (seletor = "010") else
						 entradaB when  (seletor = "011") else
						 op_xor when    (seletor = "100") else
						 op_not when    (seletor = "101") else
						 op_and when    (seletor = "110") else
						 op_or when     (seletor = "111") else
						 entradaA;      -- outra opcao: saida = entradaA

		saida <= saida_ULA;
		
      flagZero <= '1' when unsigned(saida_ULA) = unsigned(zero) else '0';

end architecture;