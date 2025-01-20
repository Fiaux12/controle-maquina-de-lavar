library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity Comparador_Modo_Lavgm is
generic
	(
		DATA_WIDTH : natural := 4
	);

	port 
	(
		modo_lavgm	: in std_logic_vector	((DATA_WIDTH-1) downto 0);
		pino_economico	: out std_logic;
		pino_delicado	: out std_logic;
		pino_pesado	: out std_logic;
		pino_normal	: out std_logic
	);
end Comparador_Modo_Lavgm;

architecture rtl of Comparador_Modo_Lavgm is
begin
	pino_economico <= '1' when modo_lavgm = "0001" else '0';
   pino_delicado  <= '1' when modo_lavgm = "0010" else '0';
   pino_pesado    <= '1' when modo_lavgm = "0100" else '0';
   pino_normal    <= '1' when modo_lavgm = "1000" else '0';
end rtl;

