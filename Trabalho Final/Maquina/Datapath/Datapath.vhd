LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity Datapath is
	generic
	(
		DATA_WIDTH : natural := 4
	);

	port( 
		Volume_Agua: in std_logic_vector((DATA_WIDTH-1) downto 0); --2 bits
		Modo_Lavagem: in std_logic_vector((DATA_WIDTH-1) downto 0); --3 bits
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
end Datapath;


architecture RTL of Datapath is

	COMPONENT Bcd_7seg is
		port (
		entrada: in std_logic_vector (3 downto 0);
		saida: out std_logic_vector (6 downto 0)
		);
	end COMPONENT;
	
	COMPONENT RegW is

		generic
		(
			W : natural := 4
		);

		port( 
			clock: in std_logic;
			D: in std_logic_vector(W -1 downto 0);
			load: in std_logic;
			reset: in std_logic;
			preset: in std_logic;
			Q: out std_logic_vector(W -1 downto 0)
		 );
	end COMPONENT;
	
	COMPONENT temporizador is
		 generic
			  (
					DATA_WIDTH : natural := 4
			  );
		 Port (
			  clock        : in  STD_LOGIC;        
			  reset        : in  STD_LOGIC;        
			  enable       : in  STD_LOGIC;   -- permite pausar 
			  modo_lav     : in std_logic_vector ((DATA_WIDTH-1) downto 0);       
			  vol_agua     : in std_logic_vector ((DATA_WIDTH-1) downto 0);    
			  timeout      : out STD_LOGIC;    
			  counter_out  : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0)    		  
		 );
	end COMPONENT temporizador;
	
	COMPONENT Comparador_Vol_Agua is
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
	end COMPONENT Comparador_Vol_Agua;
	
	COMPONENT Comparador_Modo_Lavgm is
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
	end COMPONENT Comparador_Modo_Lavgm;
	
	
	signal Sig_mod_lav: std_logic_vector ((DATA_WIDTH-1) downto 0);
	signal Sig_vol_agua: std_logic_vector ((DATA_WIDTH-1) downto 0);
	signal Sig_tempo_ciclo: std_logic_vector ((DATA_WIDTH-1) downto 0);
	
	begin
	
	instancia_Reg_Vol_Agua: RegW generic map (W => 4) 
		port map(clock=>clock, D=>Volume_Agua, load=>Load_Vol_Agua, reset=>Reset_Vol_Agua, preset=>'0', Q=>Sig_vol_agua);
		
	instancia_Reg_Modo: RegW generic map (W => 4) 
		port map(clock=>clock, D=>Modo_Lavagem, load=>Load_Modo, reset=>Reset_Modo, preset=>'0', Q=>Sig_mod_lav);
	
	instancia_Comp_vol_agua: Comparador_Vol_Agua generic map (DATA_WIDTH => 4) 
		port map(vol_agua=>Sig_vol_agua, pino_extra_baixo=>pino_extra_baixo, pino_baixo=>pino_baixo, pino_medio=>pino_medio, pino_alto=>pino_alto);
	
	instancia_Comp_modo_lavgm: Comparador_Modo_Lavgm generic map (DATA_WIDTH => 4) 
		port map(modo_lavgm=>Sig_mod_lav, pino_economico=>pino_economico, pino_delicado=>pino_delicado, pino_pesado=>pino_pesado, pino_normal=>pino_normal);
	
	instancia_Bcd_7seg: Bcd_7seg 
		port map(entrada=>Sig_tempo_ciclo,saida=>BCD);
		
	instancia_Temporizador: temporizador generic map (DATA_WIDTH => 4)
		port map(clock=>clock, reset=>Reset_Cont, enable=>Load_temp, modo_lav=>Sig_mod_lav, vol_agua=>Sig_vol_agua, timeout=> Timeout, counter_out=>Sig_tempo_ciclo);
		
	
end RTL;