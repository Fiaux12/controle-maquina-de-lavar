library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_maquina is
end tb_maquina;

architecture arch of tb_maquina is
	component Maquina is 
		port(
		RESET   : in    std_logic; -- reset input
      	CLOCK   : in    std_logic; -- clock input
		Ligar_maquina 		: in std_logic;
		Porta		: in std_logic;
		Display_7seg : out std_logic_vector(6 downto 0)
   );
	end component;
	
	
    
end arch;