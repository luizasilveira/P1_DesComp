-- referências: modelos VHDL da matéria de Design de Computadores Insper 2020.2 - professor Paulo Santos

library ieee;
use ieee.std_logic_1164.all;

entity muxStd_logic is

  generic (
	 -- Total de bits das entradas e saidas
	 larguraDados : natural := 8
	);
	
  port (
    -- portas de entrada
    entradaA_MUX, entradaB_MUX : in std_logic;
    seletor_MUX : in std_logic;
	 
    -- porta de saída
    saida_MUX : out std_logic
	);
	
end entity;


architecture comportamento of muxStd_logic is

  begin
	 -- se o seletor for acionado, seleciona a entrada B, senão, seleciona a entrada A como saída
    saida_MUX <= entradaB_MUX when (seletor_MUX = '1') else entradaA_MUX;
	 
end architecture;