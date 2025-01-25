library ieee;
use ieee.std_logic_1164.all;

entity Controladora is
    port (
        Ligar_maquina   : in    std_logic;
        Porta           : in    std_logic;          
        RESET           : in    std_logic; -- reset input
        CLOCK           : in    std_logic; -- clock input
        Reset_Vol_Agua  : out   std_logic;
        Load_Vol_Agua   : out   std_logic;
        Reset_Modo      : out   std_logic;
        Load_Modo       : out   std_logic;
        Load_temp       : out   std_logic;
        Reset_Cont      : out   std_logic;
        Timeout         : in    std_logic;
        pino_extra_baixo: in    std_logic;
        pino_baixo      : in    std_logic;
        pino_medio      : in    std_logic;
        pino_alto       : in    std_logic;
        pino_economico  : in    std_logic;
        pino_delicado   : in    std_logic;
        pino_pesado     : in    std_logic;
        pino_normal     : in    std_logic;
        Load_Motor      : out   std_logic;
        Led_Enchendo    : out   std_logic;
        Led_Molho       : out   std_logic;
        Led_Lavar       : out   std_logic;
        Led_Enxague     : out   std_logic;
        Led_Centrifuga  : out   std_logic;
        Led_Finalizado  : out   std_logic;
        Valvula_Agua    : out   std_logic
    );
end Controladora;

architecture arch of Controladora is
    type estado is (
        Ligar,
        Load,
        Enchendo,
        Molho,
        Lavar,
        Enxague,
        Centrifuga,
        Finalizado,
        Pause
    );
    signal estado_atual, proximo_estado: estado;
begin
    -- Processo sequencial
    sequencial: process(RESET, CLOCK)
    begin
        if (RESET = '1') then 
            estado_atual <= Ligar;
        elsif (rising_edge(CLOCK)) then 
            estado_atual <= proximo_estado;
        end if;
    end process;

    -- Processo combinacional
    process(
        estado_atual, Ligar_maquina, Porta, Timeout,
        pino_extra_baixo, pino_baixo, pino_medio, pino_alto, 
        pino_economico, pino_delicado, pino_pesado, pino_normal)
        variable volume_valido : std_logic := '0';
        variable modo_valido   : std_logic := '0';
    begin
        -- Estado padrão
        proximo_estado <= estado_atual;
		  
		  
		   Load_Motor	     <= '0';
                Led_Enchendo 	  <= '0';
                Led_Molho       <= '0';
                Led_Lavar		  <= '0';
                Led_Enxague	  <= '0';
                Led_Centrifuga  <= '0';
                Led_Finalizado  <= '0';
                Valvula_Agua    <= '0';
					 
					 Reset_Vol_Agua <= '1';
				    Reset_Modo     <= '1';
				    Reset_Cont     <= '1';
				    Load_Vol_Agua   <= '1';
	
				
		  
		  
		  
        case estado_atual is
            when Ligar => 
                Load_Motor	     <= '0';
                Led_Enchendo 	  <= '0';
                Led_Molho       <= '0';
                Led_Lavar		  <= '0';
                Led_Enxague	  <= '0';
                Led_Centrifuga  <= '0';
                Led_Finalizado  <= '0';
                Valvula_Agua    <= '0';
					 
					
				    Load_Vol_Agua   <= '1';
				    Load_temp 			<= '0';
				
                if Ligar_maquina = '0' then
                    Reset_Vol_Agua <= '1';
                    Reset_Modo     <= '1';
                    Reset_Cont     <= '1';
                else
                    Reset_Vol_Agua <= '0';
                    Reset_Modo     <= '0';
                    Reset_Cont     <= '0';
                    proximo_estado <= Load;
                end if;

            when Load =>
					Load_Modo     <= '1';
               Load_Vol_Agua     <= '1';
					
					
					
					Load_Motor	     <= '0';
                Led_Enchendo 	  <= '0';
                Led_Molho       <= '0';
                Led_Lavar		  <= '0';
                Led_Enxague	  <= '0';
                Led_Centrifuga  <= '0';
                Led_Finalizado  <= '0';
                Valvula_Agua    <= '0';
					 
					 Reset_Vol_Agua <= '0';
				    Reset_Modo     <= '0';
				    Reset_Cont     <= '0';

					
					
               
					-- Verificar volume válido
                if pino_extra_baixo = '1' and pino_baixo = '0' and pino_medio = '0' and pino_alto = '0' then
                    volume_valido := '1';
                elsif pino_baixo = '1' and pino_extra_baixo = '0' and pino_medio = '0' and pino_alto = '0' then
                    volume_valido := '1';
                elsif pino_medio = '1' and pino_extra_baixo = '0' and pino_baixo = '0' and pino_alto = '0' then
                    volume_valido := '1';
                elsif pino_alto = '1' and pino_extra_baixo = '0' and pino_baixo = '0' and pino_medio = '0' then
                    volume_valido := '1';
                else
                    volume_valido := '0';
                end if;

                -- Verificar modo válido
                if pino_economico = '1' and pino_delicado = '0' and pino_pesado = '0' and pino_normal = '0' then
                    modo_valido := '1';
                elsif pino_delicado = '1' and pino_economico = '0' and pino_pesado = '0' and pino_normal = '0' then
                    modo_valido := '1';
                elsif pino_pesado = '1' and pino_economico = '0' and pino_delicado = '0' and pino_normal = '0' then
                    modo_valido := '1';
                elsif pino_normal = '1' and pino_economico = '0' and pino_delicado = '0' and pino_pesado = '0' then
                    modo_valido := '1';
                else
                    modo_valido := '0';
                end if;

                -- Avançar estado
                if volume_valido = '1' and modo_valido = '1' then
                    Load_temp <= '1';
                    proximo_estado <= Enchendo;
                else
                    Load_temp <= '0';
                    proximo_estado <= Load;
                end if;

            when Enchendo =>
					
					 Load_Motor	     <= '0';
                Led_Molho       <= '0';
                Led_Lavar		  <= '0';
                Led_Enxague	  <= '0';
                Led_Centrifuga  <= '0';
                Led_Finalizado  <= '0';
       
					 
					 Reset_Vol_Agua <= '0';
				    Reset_Modo     <= '0';
				    Reset_Cont     <= '0';
				    Load_Vol_Agua   <= '0';
					
					
					if Porta = '0' then
						 Load_temp <= '1';
						 if Timeout = '0' then
							  Led_Enchendo <= '1';
							  Valvula_Agua <= '1';
							  proximo_estado <= Enchendo;
						 else
							  Led_Enchendo <= '0';
							  Valvula_Agua <= '0';
							  proximo_estado <= Molho;
						 end if;
					else
						Load_temp <= '0';
						Valvula_Agua <= '0';
					end if;
					 

            when Molho => 
					
					 Load_Motor	     <= '0';
                Led_Enchendo 	  <= '0';
                Led_Lavar		  <= '0';
                Led_Enxague	  <= '0';
                Led_Centrifuga  <= '0';
                Led_Finalizado  <= '0';
                Valvula_Agua    <= '0';
					 
					 Reset_Vol_Agua <= '0';
				    Reset_Modo     <= '0';
				    Reset_Cont     <= '0';
				    Load_Vol_Agua   <= '0';
				
					if Porta = '0' then
						Load_temp <= '1';
						 if Timeout = '0' then
							  Led_Molho <= '1';
							  proximo_estado <= Molho;
							  
						 else
							  Led_Molho <= '0';
							  proximo_estado <= Lavar;
						 end if;
					else
						Load_temp <= '0';
					end if;

            when Lavar =>
				
                Led_Enchendo 	  <= '0';
                Led_Molho       <= '0';
                Led_Enxague	  <= '0';
                Led_Centrifuga  <= '0';
                Led_Finalizado  <= '0';
                Valvula_Agua    <= '0';
					 
					 Reset_Vol_Agua <= '0';
				    Reset_Modo     <= '0';
				    Reset_Cont     <= '0';
				    Load_Vol_Agua   <= '0';
				
					if Porta = '0' then
						 Load_temp <= '1';
						 if Timeout = '0' then
							  Led_Lavar <= '1';
							  Load_Motor <= '1';
							  
							  proximo_estado <= Lavar;
						 else
							  Led_Lavar  <= '0';
							  Load_Motor <= '0';
							  proximo_estado <= Enxague;
						 end if;
					 else
						Load_Motor <= '0';
						Load_temp <= '0';
					end if;

            when Enxague =>
                Led_Enchendo 	  <= '0';
                Led_Molho       <= '0';
                Led_Lavar		  <= '0';
                Led_Centrifuga  <= '0';
                Led_Finalizado  <= '0';
					 
					 Reset_Vol_Agua <= '0';
				    Reset_Modo     <= '0';
				    Reset_Cont     <= '0';
				    Load_Vol_Agua   <= '0';
				
					if Porta = '0' then
						 Load_temp <= '1';
						 if Timeout = '0' then
							  Led_Enxague <= '1';
							  Load_Motor  <= '1';
							  Valvula_Agua <= '1';
							  
							  proximo_estado <= Enxague;
						 else
							  Led_Enxague <= '0';
							  Load_Motor  <= '0';
							  Valvula_Agua  <= '0';
							  proximo_estado <= Centrifuga;
						 end if;
					 else
					   Valvula_Agua  <= '0';
						Load_Motor  <= '0';
						Load_temp <= '0';
					end if;

            when Centrifuga =>
				
                Led_Enchendo 	  <= '0';
                Led_Molho       <= '0';
                Led_Lavar		  <= '0';
                Led_Enxague	  <= '0';
                Led_Finalizado  <= '0';
                Valvula_Agua    <= '0';
					 
					 Reset_Vol_Agua <= '0';
				    Reset_Modo     <= '0';
				    Reset_Cont     <= '0';
				    Load_Vol_Agua   <= '0';
					 
					if Porta = '0' then
						 Load_temp <= '1';
						 if Timeout = '0' then
							  Led_Centrifuga <= '1';
							  Load_Motor <= '1';
							  
							  proximo_estado <= Centrifuga;
						 else
							  Led_Centrifuga <= '0';
							  Load_Motor <= '0';
							  proximo_estado <= Finalizado;
						 end if;
					 else
						Load_temp <= '0';
						Load_Motor <= '0';
					end if;

            when Finalizado =>
					Load_Motor	     <= '0';
                Led_Enchendo 	  <= '0';
                Led_Molho       <= '0';
                Led_Lavar		  <= '0';
                Led_Enxague	  <= '0';
                Led_Centrifuga  <= '0';
                Valvula_Agua    <= '0';
					 
					 Reset_Vol_Agua <= '0';
				    Reset_Modo     <= '0';
				    Reset_Cont     <= '0';
				    Load_Vol_Agua   <= '0';
					 Load_temp <= '0';
					 
                
					  Led_Finalizado <= '1';
					  proximo_estado <= Ligar;
		  

            when others =>
                -- Default para outros estados
					 
					 Load_Motor	     <= '0';
                Led_Enchendo 	  <= '0';
                Led_Molho       <= '0';
                Led_Lavar		  <= '0';
                Led_Enxague	  <= '0';
                Led_Centrifuga  <= '0';
                Led_Finalizado  <= '0';
                Valvula_Agua    <= '0';
					 
					 Reset_Vol_Agua <= '0';
				    Reset_Modo     <= '0';
				    Reset_Cont     <= '0';
				    Load_Vol_Agua   <= '0';
					 Load_temp <= '0';

        end case;
    end process;
end arch;
