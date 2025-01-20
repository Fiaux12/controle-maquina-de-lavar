library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_temporizador is
end entity tb_temporizador;

architecture behavior of tb_temporizador is
    signal clock        : STD_LOGIC := '0';
    signal reset        : STD_LOGIC := '0';
    signal enable       : STD_LOGIC := '0';
    signal modo_lav     : std_logic_vector(3 downto 0) := "0000"; -- Modos de lavagem
    signal vol_agua     : std_logic_vector(3 downto 0) := "0000"; -- Volume de água
    signal timeout      : STD_LOGIC;
	 signal counter_out  : std_logic_vector(3 downto 0) := "0000";

    component temporizador
        generic (
            DATA_WIDTH : natural := 4
        );
        Port (
            clock        : in  STD_LOGIC;
            reset        : in  STD_LOGIC;
            enable       : in  STD_LOGIC;
            modo_lav     : in std_logic_vector ((DATA_WIDTH-1) downto 0);
            vol_agua     : in std_logic_vector ((DATA_WIDTH-1) downto 0);
            timeout      : out STD_LOGIC;
				counter_out  : out std_logic_vector ((DATA_WIDTH-1) downto 0)
        );
    end component;

begin
    uut: temporizador
        port map (
            clock        => clock,
            reset        => reset,
            enable       => enable,
            modo_lav     => modo_lav,
            vol_agua     => vol_agua,
            timeout      => timeout,
				counter_out  => counter_out
        );

    clock_process: process
    begin
        clock <= '0';
        wait for 10 ns;
        clock <= '1';
        wait for 10 ns;
    end process clock_process;

    -- Processo para aplicar os estímulos com tempos de atraso
    stimulus_process: process
    begin
        -- Teste 1: Reset do sistema
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait for 20 ns;

        -- Teste 2: Modo de lavagem e volume de água
        modo_lav <= "0001";  -- Exemplo de modo de lavagem 1
        vol_agua <= "0001";  -- Volume de água 1
        enable <= '1';
        wait for 100 ns;

		  -- Tempo suficiente para passar por todos os estágios

        -- Finalizando a simulação
        wait;
    end process stimulus_process;

end architecture behavior;
