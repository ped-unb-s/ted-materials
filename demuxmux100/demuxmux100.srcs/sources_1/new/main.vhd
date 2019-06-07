library ieee;
use ieee.std_logic_1164.all;

entity main is
    Port ( IG : in STD_LOGIC_VECTOR (7 downto 0);
           SELG : in STD_LOGIC_VECTOR(2 downto 0);
           SG : out STD_LOGIC);
end main;

architecture Behavioral of main is

component demux 
    Port ( II : in STD_LOGIC;
           SEL : in STD_LOGIC_VECTOR (2 downto 0);
           OUTF : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component mux 
    Port ( IN4 : in STD_LOGIC_VECTOR (7 downto 0);
           SEL : in STD_LOGIC_VECTOR(2 downto 0);
           S : out STD_LOGIC);
end component;

signal L : STD_LOGIC_VECTOR(7 downto 0);

begin




end Behavioral;