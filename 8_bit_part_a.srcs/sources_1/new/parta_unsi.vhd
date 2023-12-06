----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2019 23:16:29
-- Design Name: 
-- Module Name: parta_unsi - Behavioral
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
use IEEE.STD_LOGIC_unsigned.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity parta_unsi is
    Port ( a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           greater : out STD_LOGIC;
           less : out STD_LOGIC;
           equal : out STD_LOGIC);
end parta_unsi;

architecture Behavioral of parta_unsi is

begin

greater <= '1' WHEN a > b ELSE '0';
equal <= '1' WHEN a = b ELSE '0'; 
less <= '1' WHEN a < b ELSE '0'; 

end Behavioral;
