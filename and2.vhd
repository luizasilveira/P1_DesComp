  
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and2 is
	port ( 
			a:   in  std_logic;
			b:   in  std_logic;
			q:   out std_logic;
end entity;

architecture rtl of Or2 is
begin
	q <= a and b;


end rtl;