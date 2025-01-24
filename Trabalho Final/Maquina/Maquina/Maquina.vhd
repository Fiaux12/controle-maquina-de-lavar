LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity Maquina is
	port(
		RESET   : in    std_logic; -- reset input
      	CLOCK   : in    std_logic; -- clock input
		Ligar_maquina 		: in std_logic;
		Porta		: in std_logic;
		Display_7seg : out std_logic_vector(6 downto 0)
		vol_agua	: in std_logic_vector	((DATA_WIDTH-1) downto 0);
		modo_lavgm	: in std_logic_vector	((DATA_WIDTH-1) downto 0);

   );
end Maquina;
architecture FSM of Maquina is
 

component Datapath is
	generic
	(
		DATA_WIDTH : natural := 4
	);
	port( 
		Volume_Agua: in std_logic_vector((DATA_WIDTH-1) downto 0); 
		Modo_Lavagem: in std_logic_vector((DATA_WIDTH-1) downto 0); 
		clock: in std_logic; 
		
		Reset_Vol_Agua: in std_logic;
		Load_Vol_Agua: in std_logic;
		
		Reset_Modo: in std_logic;
		Load_Modo: in std_logic;
		
		Load_temp: in std_logic;
		Reset_Cont: in std_logic;
		
		Timeout: out std_logic;
		
		pino_extra_baixo: out std_logic;
		pino_baixo: out std_logic;
		pino_medio: out std_logic;
		pino_alto: out std_logic;
		
		pino_economico: out std_logic;
		pino_delicado: out std_logic;
		pino_pesado: out std_logic;
		pino_normal: out std_logic;
		
		BCD: out std_logic_vector(6 downto 0)
		
   );
end component;
	
component Controladora is
	port (
        RESET   			: in    std_logic; -- reset input
		CLOCK   			: in    std_logic; -- clock input
		Ligar_maquina     : in    std_logic;
		Porta     			:in    std_logic;
		Reset_Vol_Agua    : out   std_logic;
		Load_Vol_Agua     : out   std_logic;
		Reset_Modo        : out   std_logic;
		Load_Modo				: out   std_logic;
		Load_temp				: out   std_logic;
		Reset_Cont			: out   std_logic;
		Timeout				: in std_logic;
		pino_extra_baixo  : in std_logic;
		pino_baixo			: in std_logic;
		pino_medio			: in std_logic;
		pino_alto			: in std_logic;

		pino_economico		: in std_logic;
		pino_delicado		: in std_logic;
		pino_pesado			: in std_logic;
		pino_normal			: in std_logic;
);
end component;

--signal Load_E, Reset_MA, Maior, Menor, Descendo, Subindo, Atualize : std_logic;

begin 
	instancia_controladora: Controladora
		port map(
			RESET=>RESET,
			CLOCK=>CLOCK,
			Ligar_maquina=>Ligar_maquina,
			Porta=>Porta,
			Reset_Vol_Agua=>
			Load_Vol_Agua=>
			Reset_Modo=>
			Load_Modo=>
			Load_temp=>Load_temp,
			Reset_Cont=>Reset_Cont
			Timeout	=>Timeout,
			pino_extra_baixo =>pino_extra_baixo
			pino_baixo=>pino_baixo
			pino_medio=>pino_medio
			pino_alto=>pino_alto

			pino_economico=>pino_economico,
			pino_delicado=>pino_delicado
			pino_pesado=>pino_pesado
			pino_normal=>pino_normal
		);
	instance_datapath: Datapath
		port map(
			Volume_Agua=>vol_agua,
			Modo_Lavagem=>modo_lavgm,
			clock=>CLOCK,
			
			Reset_Vol_Agua=>
			Load_Vol_Agua=>,
			
			Reset_Modo=>
			Load_Modo=>
			
			Load_temp=>
			Reset_Cont=>
			
			Timeout=>
			
			pino_extra_baixo=>
			pino_baixo=>
			pino_medio=>
			pino_alto=>
			
			pino_economico=>
			pino_delicado=>
			pino_pesado=>
			pino_normal=>
		);
	
	
end FSM;