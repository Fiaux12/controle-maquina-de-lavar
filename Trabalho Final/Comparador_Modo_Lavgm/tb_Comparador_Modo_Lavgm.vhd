library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_TEXTIO.all;
use std.textio.all;

entity tb_Comparador_Modo_Lavgm is
end tb_Comparador_Modo_Lavgm;

architecture tb of tb_Comparador_Modo_Lavgm is
    signal modo_lavgm    : std_logic_vector(3 downto 0);
    signal pino_economico: std_logic;
    signal pino_delicado : std_logic;
    signal pino_pesado   : std_logic;
    signal pino_normal   : std_logic;

begin
    uut: entity work.Comparador_Modo_Lavgm
        port map (
            modo_lavgm    => modo_lavgm,
            pino_economico=> pino_economico,
            pino_delicado => pino_delicado,
            pino_pesado   => pino_pesado,
            pino_normal   => pino_normal
        );

    stimulus: process
    begin
        modo_lavgm <= "0000";
        wait for 10 ns;
        modo_lavgm <= "0001"; -- after 10 ns
        wait for 20 ns;
        modo_lavgm <= "0111"; -- after 20 ns
        wait for 30 ns;
        modo_lavgm <= "0100"; -- after 40 ns
        wait for 40 ns;
        modo_lavgm <= "0001"; -- after 60 ns
		  wait for 50 ns;
		  modo_lavgm <= "1000"; -- after 60 ns
		  wait for 60 ns;
		  modo_lavgm <= "1111"; -- after 60 ns
        wait;
    end process;
end tb;
