
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity frequency_divider is
GENERIC(M:INTEGER:=2);
 Port (clk_in: IN std_logic;
       clk_out: OUT std_logic:='0' );
end frequency_divider;

architecture Behavioral of frequency_divider is
begin
c1:process(clk_in)
   VARIABLE count1: INTEGER RANGE 0 to M:=0;
   begin
   if(clk_in'EVENT AND clk_in='1') THEN
      count1:=count1+1;
      if(count1 mod M =0) THEN
         clk_out<='1';
      else 
         clk_out<='0';
      END IF;
    END IF;
    END process c1;

end Behavioral;
