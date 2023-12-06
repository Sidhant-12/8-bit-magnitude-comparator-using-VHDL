----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2019 22:39:51
-- Design Name: 
-- Module Name: first_part - Behavioral
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
use IEEE.STD_LOGIC_arith.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity first_part is
 PORT (a: IN SIGNED (7 DOWNTO 0);
       b: IN SIGNED (7 DOWNTO 0);
       greater: OUT STD_LOGIC;
       less: OUT STD_LOGIC;
       equal : OUT STD_LOGIC); 
end first_part;

architecture Behavioral of first_part is

begin
greater <= '1' WHEN a > b ELSE '0';
equal <= '1' WHEN a = b ELSE '0'; 
less <= '1' WHEN a < b ELSE '0'; 

end Behavioral;
