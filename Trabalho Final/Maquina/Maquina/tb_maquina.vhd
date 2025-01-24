LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tb_maquina IS
-- Testbench não tem portas
END tb_maquina;

ARCHITECTURE behavior OF tb_maquina IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Maquina
        PORT(
            RESET        : IN  std_logic;
            CLOCK        : IN  std_logic;
            Ligar_maquina: IN  std_logic;
            Porta        : IN  std_logic;
            Display_7seg : OUT std_logic_vector(6 DOWNTO 0);
            vol_agua     : IN  std_logic_vector(3 DOWNTO 0); -- Assumindo DATA_WIDTH = 4
            modo_lavgm   : IN  std_logic_vector(3 DOWNTO 0); -- Assumindo DATA_WIDTH = 4
            Led_Enchendo : OUT std_logic;
            Led_Molho    : OUT std_logic;
            Led_Lavar    : OUT std_logic;
            Led_Enxague  : OUT std_logic;
            Led_Centrifuga: OUT std_logic;
            Led_Finalizado: OUT std_logic;
            Valvula_Agua : OUT std_logic;
            Load_Motor   : OUT std_logic
        );
    END COMPONENT;

    -- Signals for testing
    SIGNAL RESET        : std_logic := '0';
    SIGNAL CLOCK        : std_logic := '0';
    SIGNAL Ligar_maquina: std_logic := '0';
    SIGNAL Porta        : std_logic := '0';
    SIGNAL Display_7seg : std_logic_vector(6 DOWNTO 0);
    SIGNAL vol_agua     : std_logic_vector(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL modo_lavgm   : std_logic_vector(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL Led_Enchendo : std_logic;
    SIGNAL Led_Molho    : std_logic;
    SIGNAL Led_Lavar    : std_logic;
    SIGNAL Led_Enxague  : std_logic;
    SIGNAL Led_Centrifuga: std_logic;
    SIGNAL Led_Finalizado: std_logic;
    SIGNAL Valvula_Agua : std_logic;
    SIGNAL Load_Motor   : std_logic;

    -- Clock period definition
    CONSTANT clk_period : time := 10 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: Maquina
        PORT MAP (
            RESET        => RESET,
            CLOCK        => CLOCK,
            Ligar_maquina=> Ligar_maquina,
            Porta        => Porta,
            Display_7seg => Display_7seg,
            vol_agua     => vol_agua,
            modo_lavgm   => modo_lavgm,
            Led_Enchendo => Led_Enchendo,
            Led_Molho    => Led_Molho,
            Led_Lavar    => Led_Lavar,
            Led_Enxague  => Led_Enxague,
            Led_Centrifuga=> Led_Centrifuga,
            Led_Finalizado=> Led_Finalizado,
            Valvula_Agua => Valvula_Agua,
            Load_Motor   => Load_Motor
        );

    -- Clock process definitions
    clk_process :process
    begin
        CLOCK <= '0';
        wait for clk_period/2;
        CLOCK <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset process
        RESET <= '1';
        wait for 20 ns;
        RESET <= '0';

        -- Test Case 1: Ligar máquina com porta fechada
        Ligar_maquina <= '1';
        Porta <= '1';
        vol_agua <= "0011";  -- Volume baixo
        modo_lavgm <= "0001"; -- Modo econômico
        wait for 100 ns;

        -- Test Case 2: Modo normal, volume médio
        modo_lavgm <= "0010";
        vol_agua <= "0110";
        wait for 100 ns;

        -- Test Case 3: Porta aberta (erro esperado)
        Porta <= '0';
        wait for 50 ns;

        -- Test Case 4: Ligar centrifugação
        modo_lavgm <= "0101"; -- Simula um modo específico
        vol_agua <= "1001";  -- Volume alto
        Porta <= '1';        -- Fechar porta
        wait for 100 ns;

        -- End simulation
        wait;
    end process;

END behavior;
