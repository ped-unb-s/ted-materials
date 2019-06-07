
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux is
    Port ( II : in STD_LOGIC;
           SEL : in STD_LOGIC_VECTOR (2 downto 0);
           OUTF : out STD_LOGIC_VECTOR (7 downto 0));
end demux;

architecture Behavioral of demux is

begin

OUTF <=( others=>'0');

process(SEL,II)
    begin
        if (SEL = "000") then 
            OUTF(0)<= '1';
        elsif (SEL = "001")then
             OUTF(2)<=not(II);
        elsif (SEL = "100")then 
             OUTF(3)<= not(II);
        end if;    
 end process;

end Behavioral;
