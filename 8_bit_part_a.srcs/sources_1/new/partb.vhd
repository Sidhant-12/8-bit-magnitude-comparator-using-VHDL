----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.03.2019 17:48:56
-- Design Name: 
-- Module Name: partb - Behavioral
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

entity partb is
    Port ( a : in STD_Logic_vector (3 downto 0);
           b: in STD_Logic_vector (3 downto 0);
          greater : out STD_LOGIC;
           less : out STD_LOGIC;
           equal : out STD_LOGIC);
end partb;

architecture Behavioral of partb is
component my_and is
   Port ( a : in STD_LOGIC;
        b : in STD_LOGIC;
        y : out STD_LOGIC);
end component;
component three_and is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           ythree_and : out STD_LOGIC);
end component;
component four_and is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           yfour_and : out STD_LOGIC);
end component;
component five_and is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           e_1 : in STD_LOGIC;
           yfive_and : out STD_LOGIC);
end component;
component my_xor is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           y_xor : out STD_LOGIC);
end component;
component four_or is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           yfour_or : out STD_LOGIC);
end component;
component my_not is
    Port ( a : in STD_LOGIC;
           y_not : out STD_LOGIC);
end component;

signal s: std_logic_vector(22 downto 0);
begin
u1: my_not port map (b(3),s(0));
u2: my_and port map (a(3),s(0),s(1));
u3: my_not port map (b(2),s(2));
u4: three_and port map (a(2),s(2),s(3),s(4));
u5: my_not port map (b(1),s(5));
u6: four_and port map (a(1),s(5),s(3),s(6),s(7));
u7: my_not port map (b(0),s(8));
u8: five_and port map (a(0),s(8),s(3),s(6),s(9),s(10));
u9: four_or port map (s(1),s(4),s(7),s(10),greater);
u10: my_xor port map (a(3),b(3),s(11));
u11: my_xor port map (a(2),b(2),s(12));
u12: my_xor port map (a(1),b(1),s(13));
u13: my_xor port map (a(0),b(0),s(14));
u14: four_and port map (s(11),s(12),s(13),s(14),equal);
u15: my_not port map (a(3),s(15));
u16: my_and port map (s(15),b(3),s(19));
u17: my_not port map (a(2),s(16));
u18: three_and port map (b(2),s(16),s(3),s(20));
u19: my_not port map (a(1),s(17));
u20: four_and port map (b(1),s(17),s(3),s(6),s(21));
u21: my_not port map (a(0),s(18));
u22: five_and port map (b(0),s(18),s(3),s(6),s(9),s(22));
u23: four_or port map (s(19),s(20),s(21),s(22),less);
u24: my_xor port map (a(3),b(3),s(3));
u25: my_xor port map (a(2),b(2),s(6));
u26: my_xor port map (a(1),b(1),s(9));

end Behavioral;
