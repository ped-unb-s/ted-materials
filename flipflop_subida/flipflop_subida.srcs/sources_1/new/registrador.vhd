library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity registrador is
    Port ( dado : in STD_LOGIC;
           clock : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (0 to 3));
end registrador;

architecture Behavioral of registrador is

component flipflop 
    Port ( set1 : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC
           );
end component;

signal S1,S2,S3,S4: STD_LOGIC;

begin

ff0 : flipflop port map(set1 => dado, CLK => clock,  Q => S1);
ff1 : flipflop port map(set1 => S1, CLK => clock, Q=>S2);
ff2 : flipflop port map(set1 =>S2,CLK => clock, Q=>S3);
ff3 : flipflop port map(set=> S3, CLK=> clock, Q=>S4 );

S(0)<= S1;
S(1)<= S2;
S(2)<= S3;
S(3)<= S4;
end Behavioral;
