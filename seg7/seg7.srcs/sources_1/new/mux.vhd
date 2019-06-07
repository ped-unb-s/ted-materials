library ieee;
use ieee.std_logic_1164.all;

-- Escolha do valor que irá aparecer, possui seletora, e saída
entity mux is 
    Port(
        A : in std_logic_vector (3 downto 0); -- É BCD então é 4 bits
        B : in std_logic_vector (3 downto 0);
        sel : in std_logic;
        numout : out std_logic_vector(3 downto 0));
end mux;

architecture behavioral of mux is

begin

-- para cada valor de saída é aplicada a expressão lógica do mux
numout(0) <= (B(0) and not(sel)) or (A(0) and sel);
numout(1) <= (B(1) and not(sel)) or (A(1) and sel);
numout(2) <= (B(2) and not(sel)) or (A(2) and sel);
numout(3) <= (B(3) and not(sel)) or (A(3) and sel);

end behavioral;