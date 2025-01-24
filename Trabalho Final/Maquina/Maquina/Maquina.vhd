LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity Maquina is
	generic
	(
		DATA_WIDTH : natural := 4
	);
	port(
		RESET   : in    std_logic; -- reset input
      CLOCK   : in    std_logic; -- clock input
		E			: in std_logic_vector(DATA_WIDTH -1 downto 0);
		Sobe 		: out std_logic;
		Desce		: out std_logic;
		Display_7seg : out std_logic_vector(6 downto 0)
   );
end Maquina;
architecture FSM of Maquina is
 

component Datapath is
	generic
	(
		DATA_WIDTH : natural := 4
	);

	port( 
		
		
   );
end component;
	
component Controladora is
	port (
       
    );
end component;

--signal Load_E, Reset_MA, Maior, Menor, Descendo, Subindo, Atualize : std_logic;

begin 
	instancia_controladora: Controladora
		port map(
			 
		);
	instance_datapath: Datapath
		port map(
			
		);
	
	
end FSM;