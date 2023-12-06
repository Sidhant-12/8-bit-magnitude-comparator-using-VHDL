----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2019 20:29:38
-- Design Name: 
-- Module Name: eight - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity eight is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           aeb : out STD_LOGIC;
           alb : out STD_LOGIC;
           agb : out STD_LOGIC);
end eight;

architecture Behavioral of eight is

component comparator4bit is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           greater : out STD_LOGIC;
           less : out STD_LOGIC;
           equal : out STD_LOGIC);
end component;

 signal g,l,ee,g1,l1,e1:std_logic;
 
begin

x1:comparator4bit port map(a(7 downto 4),b(7 downto 4),g,l,ee);
x2:comparator4bit port map(a(3 downto 0),b(3 downto 0),g1,l1,e1);

process(g1,l1,e1,g,l,ee) is 
begin
if(g='1') then agb<='1';alb<='0';aeb<='0';
elsif(l='1') then agb<='0';alb<='1';aeb<='0';
else--if(e='1') then
if(g1='1')then agb<='1';alb<='0';aeb<='0';
elsif(l1='1') then agb<='0';alb<='1';aeb<='0';
else aeb<='1'; alb<='0';agb<='0';
end if;
end if; 
end process;

end Behavioral;
