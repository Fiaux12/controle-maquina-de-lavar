library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_TEXTIO.all;
use std.textio.all;

entity tb_Comparador_Vol_Agua is
end tb_Comparador_Vol_Agua;

architecture tb of tb_Comparador_Vol_Agua is
    signal vol_agua    : std_logic_vector(3 downto 0);
    signal pino_extra_baixo: std_logic;
    signal pino_baixo : std_logic;
    signal pino_medio : std_logic;
    signal pino_alto  : std_logic;

begin
    uut: entity work.Comparador_Vol_Agua
        port map (
            vol_agua => vol_agua,
            pino_extra_baixo  => pino_extra_baixo,
            pino_baixo => pino_baixo,
            pino_medio => pino_medio,
            pino_alto  => pino_alto
        );

    stimulus: process
    begin
        vol_agua <= "0000";
        wait for 10 ns;
        vol_agua <= "0001"; -- after 10 ns
        wait for 20 ns;
        vol_agua <= "0111"; -- after 20 ns
        wait for 30 ns;
        vol_agua <= "0100"; -- after 40 ns
        wait for 40 ns;
        vol_agua <= "0001"; -- after 60 ns
		  wait for 50 ns;
		  vol_agua <= "1000"; -- after 60 ns
		  wait for 60 ns;
		  vol_agua <= "1111"; -- after 60 ns
        wait;
    end process;
end tb;