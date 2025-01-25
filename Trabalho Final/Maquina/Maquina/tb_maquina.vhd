library ieee;
use ieee.std_logic_1164.all;

entity tb_maquina is
end tb_maquina;

architecture behavior of tb_maquina is

    component maquina
        generic (
            data_width : natural := 4
        );
        port(
            reset         : in  std_logic;
            clock         : in  std_logic;
            ligar_maquina : in  std_logic;
            porta         : in  std_logic;
            display_7seg  : out std_logic_vector(6 downto 0);
            vol_agua      : in  std_logic_vector((data_width-1) downto 0);
            modo_lavgm    : in  std_logic_vector((data_width-1) downto 0);
            led_enchendo  : out std_logic;
            led_molho     : out std_logic;
            led_lavar     : out std_logic;
            led_enxague   : out std_logic;
            led_centrifuga: out std_logic;
            led_finalizado: out std_logic;
            valvula_agua  : out std_logic;
            load_motor    : out std_logic
        );
    end component;

    signal reset         : std_logic := '0';
    signal clock         : std_logic := '0';
    signal ligar_maquina : std_logic := '0';
    signal porta         : std_logic := '0';
    signal vol_agua      : std_logic_vector(3 downto 0) := (others => '0');
    signal modo_lavgm    : std_logic_vector(3 downto 0) := (others => '0');
    signal display_7seg  : std_logic_vector(6 downto 0);
    signal led_enchendo  : std_logic;
    signal led_molho     : std_logic;
    signal led_lavar     : std_logic;
    signal led_enxague   : std_logic;
    signal led_centrifuga: std_logic;
    signal led_finalizado: std_logic;
    signal valvula_agua  : std_logic;
    signal load_motor    : std_logic;

		 -- Clock period
    constant CLOCK_PERIOD : time := 10 ns;
begin

    uut: maquina
        generic map (
            data_width => 4
        )
        port map (
            reset         => reset,
            clock         => clock,
            ligar_maquina => ligar_maquina,
            porta         => porta,
            display_7seg  => display_7seg,
            vol_agua      => vol_agua,
            modo_lavgm    => modo_lavgm,
            led_enchendo  => led_enchendo,
            led_molho     => led_molho,
            led_lavar     => led_lavar,
            led_enxague   => led_enxague,
            led_centrifuga=> led_centrifuga,
            led_finalizado=> led_finalizado,
            valvula_agua  => valvula_agua,
            load_motor    => load_motor
        );
		  
	 clock_process: process
    begin
        while true loop
            CLOCK <= '0';
            wait for CLOCK_PERIOD / 2;
            CLOCK <= '1';
            wait for CLOCK_PERIOD / 2;
        end loop;
    end process;

    stimulus: process
    begin
	 
		ligar_maquina <= '1';
		Porta <= '0';
		vol_agua <= "0001";
		modo_lavgm <= "0001";
		wait for 20 ns;
		ligar_maquina <= '0';
		
		
	 
      wait;
    end process;



end behavior;
