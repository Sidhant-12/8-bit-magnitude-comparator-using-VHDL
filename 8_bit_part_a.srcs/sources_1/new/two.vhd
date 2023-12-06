----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2019 18:10:53
-- Design Name: 
-- Module Name: two - Behavioral
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

entity two is
    Port ( l1 : in STD_LOGIC;
           l2 : in STD_LOGIC;
           e1 : in STD_LOGIC;
           e2 : in STD_LOGIC;
           g1 : in STD_LOGIC;
           g2 : in STD_LOGIC;
           l : out STD_LOGIC;
           eq : out STD_LOGIC;
           g : out STD_LOGIC);
end two;

architecture Behavioral of two is
component my_not is
    Port ( a : in STD_LOGIC;
           y_not : out STD_LOGIC);
end component;
component my_and is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           y : out STD_LOGIC);
end component;
component my_orr is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           y : out STD_LOGIC);
end component;


signal s1,s2,s3,s4,s5:std_logic;
begin

u1:my_not port map(e1,s1);
u2:my_not port map (e1,s2);
u3:my_and port map(g2,e1,s3);
u4:my_and port map(e1,l2,s4);
u5:my_orr port map(g1,s3,g);
u6:my_orr port map(l1,s4,l);
u7:my_orr port map(e2,e1,s5);
u8:my_not port map(s1,eq);

end Behavioral;
