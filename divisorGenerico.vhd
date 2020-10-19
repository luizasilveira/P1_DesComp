-- referências: modelos VHDL da matéria de Design de Computadores - Insper 2020.2 - professor Paulo Santos

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity divisorGenerico is

	generic (
		-- Total de bits do divisor
		divisor : natural := 8
	);
	
	port(
		-- porta de entrada
      clk      :   in std_logic;
		
		-- porta de saída
      saida_clk :   out std_logic
	);
	
end entity;

-- O valor "n" do divisor, define a divisao por "2n".
-- Ou seja, n é metade do período da frequência de saída.

architecture divInteiro of divisorGenerico is

	 -- sinais do contador e do tick
    signal tick : std_logic := '0';
    signal contador : integer range 0 to divisor+1 := 0;
	 
	 -- verifica se o valor do contador é o mesmo que o divisor
	 -- se sim, zera o contador e muda o valor do tick
	 -- caso contrário, incrementa 1 no contador
	 begin
		 process(clk)
		 begin
			  if rising_edge(clk) then
					if contador = divisor then
						 contador <= 0;
						 tick <= not tick;
					else
						 contador <= contador + 1;
					end if;
			  end if;
		 end process;
		 
	 -- a saída do clock recebe o valor do tick 
	 saida_clk <= tick;
	 
end architecture divInteiro;