library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_temporizador is
end entity tb_temporizador;

architecture temp of tb_temporizador is
    component temporizador
        Port (
            clock        : in  STD_LOGIC;
            reset        : in  STD_LOGIC;
            enable       : in  STD_LOGIC;
            tempo_limite : in  INTEGER;
            timeout      : out STD_LOGIC
        );
    end component;

    signal clock        : STD_LOGIC := '0';        
    signal reset        : STD_LOGIC := '0';         
    signal enable       : STD_LOGIC := '0';         
    signal tempo_limite : INTEGER := 10;           
    signal timeout      : STD_LOGIC;               

begin
     uut: temporizador
	  Port map (
			clock        => clock,
			reset        => reset,
			enable       => enable,
			tempo_limite => tempo_limite,
			timeout      => timeout
	  );

    clock <= not clock after 10 ms; 

    reset        <= '1' after 10 ms, '0' after 20 ms;           
    enable       <= '0' after 20 ms, '1' after 30 ms, '0' after 60 ms, '1' after 90 ms;  
    tempo_limite <= 3  after 30 ms;
	 
end architecture temp;
