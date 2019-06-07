library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--Divisor de clock � respons�vel por "retardar o clock", tem como entrada o clock da m�quina
entity clock1 is
    Port ( 
           clock_in : in STD_LOGIC;
           clock_out : out STD_LOGIC
           );
end clock1;

architecture Behavioral of clock1 is
-- O contador vai at� a 20 posi��o segundo o calculo F/2^N
   signal count : STD_LOGIC_VECTOR (20 downto 0):=(others => '0');
   
begin

process(clock_in)

    begin
        if rising_edge(clock_in) then   -- Detecta mudan�a de n�vel l�gico alto para baixo     
             count <= count + 1;
        end if;  
     clock_out <= count(20); -- o clock almejado corresponde ao clock da �ltima posi��o  
   end process;

    
end Behavioral;