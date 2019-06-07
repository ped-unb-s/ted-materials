library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Seleciona qual display será ligado ou desligado

entity seletor is
    Port ( clock1 : in STD_LOGIC;
           an : out STD_LOGIC;
           bn : out STD_LOGIC);
end seletor;

architecture Behavioral of seletor is

begin

an <= clock1; -- O A recebe o clock então liga e desliga o outro
bn <= not clock1;

end Behavioral;
