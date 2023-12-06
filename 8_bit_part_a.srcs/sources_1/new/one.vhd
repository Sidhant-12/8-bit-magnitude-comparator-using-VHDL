----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08.04.2019 17:49:06
-- Design Name: 
-- Module Name: one - Behavioral
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

entity one is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           g : out STD_LOGIC;
           l : out STD_LOGIC;
           eq : out STD_LOGIC);
end one;

architecture Behavioral of one is

component my_not is
    Port ( a : in STD_LOGIC;
           y_not : out STD_LOGIC);
end component;
component my_and is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           y : out STD_LOGIC);
end component;
component my_xor is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           y_xor : out STD_LOGIC);
end component;
signal s1,s2:std_logic;
begin
u1:my_not port map (x,s1);
u2:my_and port map (s1,y,l);
u3:my_xor port map (x,y,eq);
u4:my_not port map (y,s2);
u5:my_and port map (s2,x,g);




end Behavioral;
