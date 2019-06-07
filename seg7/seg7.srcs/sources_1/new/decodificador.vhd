library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- Tem como entrada um vetor em BDC de 4 dígitos e saída a conversão para o display de 7 segmentos
entity decodificador is
    Port ( E : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (6 downto 0)
           );
end decodificador;

architecture Behavioral of decodificador is

begin

--De acordo à entrada seleciona uma saída, para números decimais
with E select
    S <= "1000000" when "0000", --0
         "1111001" when "0001", --1
         "0100100" when "0010", --2
         "0110000" when "0011", --3
         "0011001" when "0100", --4
         "0010010" when "0101", --5
         "0000010" when "0110", --6
         "1111000" when "0111", --7
         "0000000" when "1000", --8
         "0010000" when "1001", --9
         "1111111" when others; -- outros valores ele desliga tudo
end Behavioral;
