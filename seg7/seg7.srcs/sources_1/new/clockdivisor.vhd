library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--Divisor de clock é responsável por "retardar o clock", tem como entrada o clock da máquina
entity clock1 is
    Port ( 
           clock_in : in STD_LOGIC;
           clock_out : out STD_LOGIC
           );
end clock1;

architecture Behavioral of clock1 is
-- O contador vai até a 20 posição segundo o calculo F/2^N
   signal count : STD_LOGIC_VECTOR (20 downto 0):=(others => '0');
   
begin

process(clock_in)

    begin
        if rising_edge(clock_in) then   -- Detecta mudança de nível lógico alto para baixo     
             count <= count + 1;
        end if;  
     clock_out <= count(20); -- o clock almejado corresponde ao clock da última posição  
   end process;

    
end Behavioral;