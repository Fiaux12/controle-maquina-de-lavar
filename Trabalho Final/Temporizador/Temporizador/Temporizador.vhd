library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity temporizador is
    Port (
        clock        : in  STD_LOGIC;        
        reset        : in  STD_LOGIC;        
        enable       : in  STD_LOGIC;   -- permite pausar 
        tempo_limite : in  INTEGER;         
        timeout      : out STD_LOGIC         
    );
end entity temporizador;

architecture temp of temporizador is
    signal counter : INTEGER := 0;         
begin
    process (clock, reset)
    begin
        if reset = '1' then
            counter <= 0;                  
            timeout <= '0';
        elsif rising_edge(clock) then  -- detecta a transição de subida 
            if enable = '1' then
                if counter < tempo_limite then
                    counter <= counter + 1; 
                    timeout <= '0';        
                else
                    timeout <= '1';         
                end if;
            else
                timeout <= '0';             
            end if;
        end if;
    end process;
end architecture temp;
