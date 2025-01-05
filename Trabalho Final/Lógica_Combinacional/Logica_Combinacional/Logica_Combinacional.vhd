library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity logica_combinacional is
    Port (
        estado_atual      : in std_logic_vector(3 downto 0); -- 4 bits para 13 estados
        porta             : in std_logic; -- 1: aberta, 0: fechada
        volume_atual      : in std_logic_vector(1 downto 0); -- 2 bits
        volume_desejado   : in std_logic_vector(1 downto 0); -- 2 bits
        modo_lavagem      : in std_logic_vector(2 downto 0); -- 3 bits
        contador_zerado   : in std_logic; -- 1: tempo esgotado
        proximo_estado    : out std_logic_vector(3 downto 0); -- Próximo estado
        habilita_contador : out std_logic; -- Sinal para habilitar contador
        sinal_pausa       : out std_logic  -- Sinal para estado de pausa
    );
end logica_combinacional;

architecture Behavioral of logica_combinacional is
begin
    process(estado_atual, porta, volume_atual, volume_desejado, modo_lavagem, contador_zerado)
    begin
        -- Inicialização padrão
        proximo_estado <= estado_atual; -- Mantém o estado atual por padrão
        habilita_contador <= '0';
        sinal_pausa <= '0';

        -- Verifica a porta
        if porta = '1' then
            sinal_pausa <= '1'; -- Porta aberta, ativa pausa
        else
            case estado_atual is
                when "0000" => -- Estado inicial
                    if volume_atual = volume_desejado then
                        proximo_estado <= "0001"; -- Vai para enchendo
                    end if;

                when "0001" => -- Enchendo
                    if contador_zerado = '1' then
                        proximo_estado <= "0010"; -- Vai para molho
                        habilita_contador <= '1'; -- Ativa o contador
                    end if;

                -- Outros estados
                when "0010" => -- Molho
                    if contador_zerado = '1' then
                        proximo_estado <= "0011"; -- Vai para lavar
                    end if;

                -- Adicione os demais estados aqui...
                
                when others =>
                    proximo_estado <= "1111"; -- Estado final (exemplo)
            end case;
        end if;
    end process;
end Behavioral;
