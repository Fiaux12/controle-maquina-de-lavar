library ieee;
use ieee.std_logic_1164.all;

entity Controladora is
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
end Controladora;

architecture arch of Controladora is
	type estado is (
		Ligar,
		Load, 
		Economico,
		Delicado,
		Pesado,
		Normal, 
		Enchendo, 
		Enchendo, 
		Molho, 
		Lavar, 
		Enxague,
		Centrifuga,
		Finalizado, 
		Pause);
	signal estado_atual, proximo_estado: estado;
begin
    sequencial: 
	 process(RESET, CLOCK) is
		begin
			if(RESET = '1') then 
				estado_atual <= S0;
			elsif(rising_edge(CLOCK)) then 
				estado_atual <= proximo_estado;
			end if;
	end process;
	
	 process(estado_atual,
		Ligar_maquina, 
		Porta, 
		pino_extra_baixo, 
		pino_baixo,
		pino_medio,
		pino_alto,
		pino_economico,
		pino_delicado,
		pino_pesado,
		pino_normal) is
		
		variable volume_valido : std_logic := '0';
		variable modo_valido : std_logic := '0';

		begin
			proximo_estado <= estado_atual;
			 case estado_atual is
            when Ligar => 

					 if Ligar_maquina = '0' then
						 Reset_Vol_Agua <= '1';
						 Reset_Modo     <= '1';
						 Reset_Cont     <= '1';
					 else
						 Reset_Vol_Agua <= '0';
						 Reset_Modo     <= '0';
						 Reset_Cont     <= '0';
					 end if;
					 
					 proximo_estado <= Load;
                
            when Load =>
						if pino_extra_baixo = '1' and pino_baixo = '0' and pino_medio = '0'and pino_alto = '0' then
							volume_valido := '1';
						elsif pino_extra_baixo = '0' and pino_baixo = '1' and pino_medio = '0'and pino_alto = '0' then
							volume_valido := '1';
						elsif pino_extra_baixo = '0' and pino_baixo = '0' and pino_medio = '1'and pino_alto = '0' then
							volume_valido := '1';
						elsif pino_extra_baixo = '0' and pino_baixo = '0' and pino_medio = '0'and pino_alto = '1' then
							volume_valido := '1';
						else
							volume_valido := '0';
						end if;
						
						if pino_economico = '1' and pino_delicado = '0' and pino_pesado = '0'and pino_normal = '0' then
							modo_valido := '1';
						elsif pino_economico = '0' and pino_delicado = '1' and pino_pesado = '0'and pino_normal = '0' then
							modo_valido := '1';
						elsif pino_economico = '0' and pino_delicado = '0' and pino_pesado = '1'and pino_normal = '0' then
							modo_valido := '1';
						elsif pino_economico = '0' and pino_delicado = '0' and pino_pesado = '0'and pino_normal = '1' then
							modo_valido := '1';
						else
							modo_valido := '0';
						end if;
						
						if volume_valido = '1' and modo_valido = '1' then
							Load_Vol_Agua = '1';
				
					 -- não sei se ta certo, vou só subir assim pq to cansada msm
					 
					
					
            when S2 => 
                Load_E    <= '1';
                Subindo   <= '1';
                Descendo  <= '0';
                Atualize  <= '1';
                Reset_MA  <= '0';
                proximo_estado <= S1;

            when S3 => 
               Load_E    <= '1';
					Reset_MA  <= '0';
					Subindo   <= '0';
               Descendo  <= '1';
               Atualize  <= '1';
               proximo_estado <= S1;

             when S4 =>
                Load_E    <= '1';
                Subindo   <= '0';
                Descendo  <= '0';
                Atualize  <= '1';
                Reset_MA  <= '0';
                proximo_estado <= S1;
					 
				when others =>
					 Load_E    <= '0';
                Subindo   <= '0';
                Descendo  <= '0';
                Atualize  <= '0';
                Reset_MA  <= '0';
						

        end case;
		end process;
						
	
end arch;