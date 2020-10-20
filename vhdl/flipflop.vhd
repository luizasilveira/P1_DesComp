-- referências: modelos VHDL da matéria de Design de Computadores - Insper 2020.2 - professor Paulo Santos

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflop is

    port (
		 -- portas de entrada
		 data_in : in std_logic;
       ENABLE : in std_logic;
       clk,rst : in std_logic;
		 
		 -- porta de saída
		 data_out : out std_logic
     );
	  
end entity;


architecture comportamento of flipflop is

	begin
		 -- In Altera devices, register signals have a set priority.
		 -- The HDL design should reflect this priority.
		 process(rst, clk)
		 begin
			  -- The asynchronous reset signal has the highest priority
			  if (rst = '1') then
					data_out <= '0';    -- Código reconfigurável.
			  else
					-- At a clock edge, if asynchronous signals have not taken priority,
					-- respond to the appropriate synchronous signal.
					-- Check for synchronous reset, then synchronous load.
					-- If none of these takes precedence, update the register output
					-- to be the register input.
					if (rising_edge(clk)) then
						 if (ENABLE = '1') then
									data_out <= data_in;
						 end if;
					end if;
			  end if;
		 end process;
		 
end architecture;