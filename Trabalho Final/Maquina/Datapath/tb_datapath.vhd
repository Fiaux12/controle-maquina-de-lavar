library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_datapath is
end tb_datapath;

architecture arch of tb_datapath is
	component Datapath is 
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
	end component;
	
	
	signal Fio_Volume_Agua: std_logic_vector(3 downto 0); --2 bits
	signal Fio_Modo_Lavagem: std_logic_vector(3 downto 0); --3 bits
	signal Fio_clock: std_logic := '0'; 
	
	signal Fio_Reset_Vol_Agua: std_logic;
	signal Fio_Load_Vol_Agua: std_logic;
	
	signal Fio_Reset_Modo: std_logic;
	signal Fio_Load_Modo: std_logic;
	
	signal Fio_Load_temp: std_logic;
	signal Fio_Reset_Cont: std_logic;
	
	signal Fio_Timeout: std_logic;
	
	signal Fio_pino_extra_baixo: std_logic;
	signal Fio_pino_baixo: std_logic;
	signal Fio_pino_medio: std_logic;
	signal Fio_pino_alto: std_logic;
	
	signal Fio_pino_economico: std_logic;
	signal Fio_pino_delicado: std_logic;
	signal Fio_pino_pesado: std_logic;
	signal Fio_pino_normal:  std_logic;
	
	signal Fio_BCD: std_logic_vector(6 downto 0);
	
begin
	 uut_Datapath: datapath
	 
	 generic map (DATA_WIDTH => 4)
		port map(
		
			Volume_Agua   => Fio_Volume_Agua,
			Modo_Lavagem =>  Fio_Modo_Lavagem,
			clock =>  Fio_clock,
			Reset_Vol_Agua =>  Fio_Reset_Vol_Agua,
			Load_Vol_Agua =>  Fio_Load_Vol_Agua,
			Reset_Modo =>  Fio_Reset_Modo,
			Load_Modo =>  Fio_Load_Modo,
			Load_temp =>  Fio_Load_temp,
			Reset_Cont =>  Fio_Reset_Cont,
			Timeout =>  Fio_Timeout,
		  	
			pino_extra_baixo => Fio_pino_extra_baixo,
			pino_baixo => Fio_pino_baixo,
			pino_medio => Fio_pino_medio,
			pino_alto => Fio_pino_alto,

			pino_economico => Fio_pino_economico,
			pino_delicado => Fio_pino_delicado,
			pino_pesado => Fio_pino_pesado,
			pino_normal => Fio_pino_normal,

			BCD => Fio_BCD
		  
		);

		
		Fio_clock <= not Fio_clock after 5 ns;
		Fio_Volume_Agua <= "0000", "0001" after 20 ns;
		Fio_Modo_Lavagem <= "0000", "0010" after 20 ns;

		Fio_Reset_Vol_Agua <= '0';
		Fio_Reset_Modo <= '0';
		Fio_Reset_Cont <= '0';
		
		Fio_Load_Vol_Agua <= '1';
		Fio_Load_Modo <= '1';
		Fio_Load_temp <= '1';
		
    
end arch;