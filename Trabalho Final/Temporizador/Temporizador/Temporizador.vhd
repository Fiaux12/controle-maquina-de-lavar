library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity temporizador is
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
end entity temporizador;

architecture temp of temporizador is
    signal counter : INTEGER := 0;
    signal state   : INTEGER := 0; -- Estado para controlar os modos de contagem

begin

    process (clock, reset)
			 variable tempo_limite_enchendo  : INTEGER := 0;
			 variable tempo_limite_molho   : INTEGER := 0;
			 variable tempo_limite_lavagem : INTEGER := 0;
			 variable tempo_limite_enxague  : INTEGER := 0;
			 variable tempo_limite_centrifuga : INTEGER := 0;
    begin
	 
			if vol_agua = "0001" then
				tempo_limite_enchendo := 2;
			
			elsif vol_agua = "0010" then
				tempo_limite_enchendo := 2;
				
			elsif vol_agua = "0100" then
				tempo_limite_enchendo := 3;
				
			elsif vol_agua = "1000" then
				tempo_limite_enchendo := 4;
			end if;
				
	 
			if modo_lav = "0001" then
				tempo_limite_molho := 3;
				tempo_limite_lavagem := 3;
				tempo_limite_enxague := 3;
				tempo_limite_centrifuga := 3;
				
			elsif modo_lav = "0010" then
				tempo_limite_molho := 3;
				tempo_limite_lavagem := 3;
				tempo_limite_enxague := 3;
				tempo_limite_centrifuga := 3;
				
			elsif modo_lav = "0100" then
				tempo_limite_molho := 3;
				tempo_limite_lavagem := 3;
				tempo_limite_enxague := 3;
				tempo_limite_centrifuga := 3;
				
			elsif modo_lav = "1000" then
				tempo_limite_molho := 3;
				tempo_limite_lavagem := 3;
				tempo_limite_enxague := 3;
				tempo_limite_centrifuga := 3;
			end if;

        if reset = '1' then
            counter <= 1;
            state <= 0; -- Volta ao estado inicial
            timeout <= '0';
        elsif rising_edge(clock) then
            if enable = '1' then
                case state is
						  when 0 => -- Enchendo
                        if counter <= tempo_limite_enchendo then
									 counter_out <= std_logic_vector(to_unsigned(counter, DATA_WIDTH));
                            counter <= counter + 1;
                            timeout <= '0';
                        else
                            state <= 1; 
                            counter <= 1; 
									 counter_out <= std_logic_vector(to_unsigned(0, DATA_WIDTH));
                        end if;
                    when 1 => -- Molho
								
                        if counter <= tempo_limite_molho then
									 counter_out <= std_logic_vector(to_unsigned(counter, DATA_WIDTH));
                            counter <= counter + 1;
                            timeout <= '0';
                        else
                            state <= 2; 
                            counter <= 1; 
									 counter_out <= std_logic_vector(to_unsigned(0, DATA_WIDTH));
                        end if;
                    when 2 => -- Lavagem
                        if counter <= tempo_limite_lavagem then
									 counter_out <= std_logic_vector(to_unsigned(counter, DATA_WIDTH));
									 counter <= counter + 1;
                            timeout <= '0';
                        else
                            state <= 3; 
                            counter <= 1; 
									 counter_out <= std_logic_vector(to_unsigned(0, DATA_WIDTH));
                        end if;
						  when 3 => -- Enxague
                        if counter <= tempo_limite_enxague then
									 counter_out <= std_logic_vector(to_unsigned(counter, DATA_WIDTH));
									 counter <= counter + 1;
                            timeout <= '0';
                        else
                            state <= 4; 
                            counter <= 1; 
									 counter_out <= std_logic_vector(to_unsigned(0, DATA_WIDTH));
                        end if;
                    when 4 => -- Centrifuga
                        if counter <= tempo_limite_centrifuga then
									 counter_out <= std_logic_vector(to_unsigned(counter, DATA_WIDTH));
									 counter <= counter + 1;
                            timeout <= '0';
                        else
                            timeout <= '1';
                            state <= 5;
                            counter <= 1;
									 counter_out <= std_logic_vector(to_unsigned(0, DATA_WIDTH)); 
                        end if;
							when 5 => -- Finaliza
                            timeout <= '1';      -- Quando trabalhar na controladora, colocar o enable em 0 aqui
                    when others =>
                        state <= 0;
                end case;
            end if;
        end if;
    end process;

end architecture temp;
