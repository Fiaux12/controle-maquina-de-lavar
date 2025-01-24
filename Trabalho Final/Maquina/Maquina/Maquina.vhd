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
		Led_Enchendo : out std_logic;
		Led_Molho: out std_logic;
		Led_Lavar: out std_logic;
		Led_Enxague: out std_logic;
		Led_Centrifuga: out std_logic;
		Led_Finalizado: out std_logic;
		Valvula_Agua: out std_logic;
		Load_Motor: out std_logic

   );
end Maquina;
architecture FSM of Maquina is

begin 
	-- Instância da Controladora
	instancia_controladora: Controladora
		port map(
			Ligar_maquina   => Ligar_maquina,
			Porta           => Porta,
			RESET           => RESET, 
			CLOCK           => CLOCK,
			Reset_Vol_Agua  => Reset_Vol_Agua,
			Load_Vol_Agua   => Load_Vol_Agua,
			Reset_Modo      => Reset_Modo,
			Load_Modo       => Load_Modo,
			Load_temp       => Load_temp,
			Reset_Cont      => Reset_Cont,
			Timeout         => Timeout,
			pino_extra_baixo=> pino_extra_baixo,
			pino_baixo      => pino_baixo,
			pino_medio      => pino_medio,
			pino_alto       => pino_alto,
			pino_economico  => pino_economico,
			pino_delicado   => pino_delicado,
			pino_pesado     => pino_pesado,
			pino_normal     => pino_normal,
			Load_Motor      => Load_Motor,
			Led_Enchendo    => Led_Enchendo,
			Led_Molho       => Led_Molho,
			Led_Lavar       => Led_Lavar,
			Led_Enxague     => Led_Enxague,
			Led_Centrifuga  => Led_Centrifuga,
			Led_Finalizado  => Led_Finalizado,
			Valvula_Agua    => Valvula_Agua

		);

	-- Instância do Datapath
	instance_datapath: Datapath
		port map(
			Volume_Agua     => vol_agua,
			Modo_Lavagem    => modo_lavgm,
			clock           => CLOCK,
			
			Reset_Vol_Agua  => Reset_Vol_Agua,
			Load_Vol_Agua   => Load_Vol_Agua,
			
			Reset_Modo      => Reset_Modo,
			Load_Modo       => Load_Modo,
			
			Load_temp       => Load_temp,
			Reset_Cont      => Reset_Cont,
			
			Timeout         => Timeout,
			
			pino_extra_baixo=> pino_extra_baixo,
			pino_baixo      => pino_baixo,
			pino_medio      => pino_medio,
			pino_alto       => pino_alto,
			
			pino_economico  => pino_economico,
			pino_delicado   => pino_delicado,
			pino_pesado     => pino_pesado,
			pino_normal     => pino_normal,
			
			BCD             => Display_7seg
		);

end FSM;