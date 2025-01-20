library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity Comparador_Vol_Agua is
generic
	(
		DATA_WIDTH : natural := 4
	);

	port 
	(
		vol_agua	: in std_logic_vector	((DATA_WIDTH-1) downto 0);
		pino_extra_baixo	: out std_logic;
		pino_baixo	: out std_logic;
		pino_medio	: out std_logic;
		pino_alto	: out std_logic
	);
end Comparador_Vol_Agua;

architecture rtl of Comparador_Vol_Agua is
begin
	pino_extra_baixo <= '1' when vol_agua = "0001" else '0';
   pino_baixo  <= '1' when vol_agua = "0010" else '0';
   pino_medio    <= '1' when vol_agua = "0100" else '0';
   pino_alto    <= '1' when vol_agua = "1000" else '0';
end rtl;

