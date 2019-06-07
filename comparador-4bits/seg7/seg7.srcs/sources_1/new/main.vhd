library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main is
 Port(
       num1 : in STD_LOGIC_VECTOR(3 downto 0);
       num2 : in STD_LOGIC_VECTOR(3 downto 0);
       clockg : in STD_LOGIC;
       an : out STD_LOGIC_VECTOR(3 downto 0);
       segm : out STD_LOGIC_VECTOR(6 downto 0)
      );
end main;

architecture Behavioral of main is

component decodificador is
    Port ( E : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (6 downto 0)
           );
end component;

component seletor is
    Port ( clock1 : in STD_LOGIC;
           an : out STD_LOGIC;
           bn : out STD_LOGIC);
end component;

component clock1 is
    Port ( 
           clock_in : in STD_LOGIC;
           clock_out : out STD_LOGIC
           );
end component;

component mux is 
    Port(
        A : in std_logic_vector (3 downto 0); -- É BCD então é 4 bits
        B : in std_logic_vector (3 downto 0);
        sel : in std_logic;
        numout : out std_logic_vector(3 downto 0));
end component;

-- Declarar os sinais
signal smux : STD_LOGIC_VECTOR(3 DOWNTO 0);
signal displaya, displayb: STD_LOGIC;
signal selet : STD_LOGIC;

begin

clk : clock1 port map(clock_in=>clockg,clock_out=>selet);
seldisplay : seletor port map (clock1=>selet,an=>displaya,bn=>displayb);
multi : mux port map (A=>num1,B=>num2,sel=>selet,numout=>smux);
decod : decodificador port map(E=>smux,S=>segm);

an(0) <= displaya;
an(1) <= displayb;
an(2) <= '1';
an(3) <= '1';

end Behavioral;
