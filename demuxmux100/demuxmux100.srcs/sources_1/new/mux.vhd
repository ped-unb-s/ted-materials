library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
    Port ( IN4 : in STD_LOGIC_VECTOR (7 downto 0);
           SEL : in STD_LOGIC_VECTOR(2 downto 0);
           S : out STD_LOGIC);
end mux;

architecture Behavioral of mux is

begin

process(IN4,SEL)
begin

if SEL = "000" then
    S <= IN4(0);
elsif SEL = "001" then
     S <= IN4(1);
elsif SEL = "010" then
     S <= IN4(2);
elsif SEL = "011" then
     S <= IN4(3);
elsif SEL = "100" then
     S <= IN4(4);
elsif SEL = "101" then
     S <= IN4(5);
elsif SEL = "110" then
     S <= IN4(6);
elsif SEL = "111" then
     S <= IN4(7);
end if;
    
 end process;

end Behavioral;
