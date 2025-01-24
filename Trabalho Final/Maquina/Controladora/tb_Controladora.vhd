library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Controladora is
end tb_Controladora;

architecture tb of tb_Controladora is
    -- Component declaration
    component Controladora is
        port (
            Ligar_maquina   : in    std_logic;
            Porta           : in    std_logic;
            RESET           : in    std_logic;
            CLOCK           : in    std_logic;
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
    end component;

    -- Signals for inputs and outputs
    signal Ligar_maquina   : std_logic := '0';
    signal Porta           : std_logic := '0';
    signal RESET           : std_logic := '0';
    signal CLOCK           : std_logic := '0';
    signal Reset_Vol_Agua  : std_logic;
    signal Load_Vol_Agua   : std_logic;
    signal Reset_Modo      : std_logic;
    signal Load_Modo       : std_logic;
    signal Load_temp       : std_logic;
    signal Reset_Cont      : std_logic;
    signal Timeout         : std_logic := '0';
    signal pino_extra_baixo: std_logic := '0';
    signal pino_baixo      : std_logic := '0';
    signal pino_medio      : std_logic := '0';
    signal pino_alto       : std_logic := '0';
    signal pino_economico  : std_logic := '0';
    signal pino_delicado   : std_logic := '0';
    signal pino_pesado     : std_logic := '0';
    signal pino_normal     : std_logic := '0';
    signal Load_Motor      : std_logic;
    signal Led_Enchendo    : std_logic;
    signal Led_Molho       : std_logic;
    signal Led_Lavar       : std_logic;
    signal Led_Enxague     : std_logic;
    signal Led_Centrifuga  : std_logic;
    signal Led_Finalizado  : std_logic;
    signal Valvula_Agua    : std_logic;

    -- Clock period
    constant CLOCK_PERIOD : time := 10 ns;

begin
    -- Instantiate the Unit Under Test (UUT)
    UUT: Controladora
        port map (
            Ligar_maquina   => Ligar_maquina,
            Porta           => Porta,
            RESET           => RESET,
            CLOCK           => CLOCK,
            Reset_Vol_Agua  => Reset_Vol_Agua,
            Load_Vol_Agua   => Load_Vol_Agua,
            Reset_Modo      => Reset_Modo,
            Load_Modo       => Load_Modo,
            Load_temp       => Load_temp,
            Reset_Cont      => Reset_Cont,
            Timeout         => Timeout,
            pino_extra_baixo=> pino_extra_baixo,
            pino_baixo      => pino_baixo,
            pino_medio      => pino_medio,
            pino_alto       => pino_alto,
            pino_economico  => pino_economico,
            pino_delicado   => pino_delicado,
            pino_pesado     => pino_pesado,
            pino_normal     => pino_normal,
            Load_Motor      => Load_Motor,
            Led_Enchendo    => Led_Enchendo,
            Led_Molho       => Led_Molho,
            Led_Lavar       => Led_Lavar,
            Led_Enxague     => Led_Enxague,
            Led_Centrifuga  => Led_Centrifuga,
            Led_Finalizado  => Led_Finalizado,
            Valvula_Agua    => Valvula_Agua
        );

    -- Clock generation
    clock_process: process
    begin
        while true loop
            CLOCK <= '0';
            wait for CLOCK_PERIOD / 2;
            CLOCK <= '1';
            wait for CLOCK_PERIOD / 2;
        end loop;
    end process;

    -- Stimulus process
    stimulus: process
    begin
        -- Reset the system
        RESET <= '1';
        wait for 20 ns;
        RESET <= '0';

        wait;
    end process;

end tb;
