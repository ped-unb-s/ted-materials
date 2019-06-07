

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flipflop is
    Port ( set1 : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC
           );
end flipflop;

architecture Behavioral of flipflop is

begin
process(CLK, set1)
begin
    if(CLK = '1')then
       Q <= set1;
    end if; 
  end process; 
end Behavioral;
