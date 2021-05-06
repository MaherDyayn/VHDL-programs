
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
  Port (a,b:in std_logic_vector (7 downto 0);
        sel:in std_logic_vector (1 downto 0);
         x:out std_logic_vector (7 downto 0) );
end mux;

architecture Behavioral of mux is

begin
x<=a when sel="01" else
   b when sel="10" else
   "00000000" when sel="00" else
   "ZZZZZZZZ" when sel="11";
end Behavioral;
