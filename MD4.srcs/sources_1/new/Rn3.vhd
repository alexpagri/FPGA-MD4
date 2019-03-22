----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2018 01:22:11 AM
-- Design Name: 
-- Module Name: Rn3 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Rn3 is
    Port ( A : in unsigned (31 downto 0);
           B : in unsigned (31 downto 0);
           C : in unsigned (31 downto 0);
           D : in unsigned (31 downto 0);
           X : in unsigned (31 downto 0);
           S : in unsigned (4 downto 0);
           nA : out unsigned (31 downto 0));
end Rn3;

architecture Behavioral of Rn3 is

begin

nA <= (A + x"6ED9EBA1" + X + (B xor C xor D)) rol TO_INTEGER(S);

end Behavioral;
