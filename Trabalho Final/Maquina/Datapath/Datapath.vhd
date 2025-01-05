LIBRARY IEEE;
use ieee.std_logic_1164.all;

entity Datapath is
	generic
	(
		DATA_WIDTH : natural := 4
	);

	port( 
		Volume_Agua: in std_logic_vector(1 downto 0); --2 bits
		Modo_Lavagem: in std_logic_vector(2 downto 0); --3 bits
		clock: in std_logic; 
		
		Reset_Vol_Agua: in std_logic;
		Load_Vol_Agua: in std_logic;
		Reset_Modo: in std_logic;
		Load_Modo: in std_logic;
		Tempo_Limite: in std_logic_vector(3 downto 0) --4 bits
		Reset_Cont: in std_logic;
		Porta: in std_logic;
		Estado_Atual: in std_logic_vector(2 downto 0); --3 bits
		
		Volume_Agua: out std_logic_vector(1 downto 0);
		Modo: out std_logic_vector(2 downto 0);
		Prox_Estado_Lavagem: out std_logic_vector((DATA_WIDTH-1) downto 0)
		
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
	
	COMPONENT contador is
		 Port (
			  clock        : in  STD_LOGIC;        
			  reset        : in  STD_LOGIC;        
			  enable       : in  STD_LOGIC;   
			  tempo_limite : in  INTEGER;         
			  timeout      : out STD_LOGIC         
		 );
	end COMPONENT contador;
	
	
end RTL;