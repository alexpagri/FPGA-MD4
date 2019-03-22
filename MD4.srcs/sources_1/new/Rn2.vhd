----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2018 01:19:44 AM
-- Design Name: 
-- Module Name: Rn2 - Behavioral
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

entity Rn2 is
    Port ( A : in unsigned (31 downto 0);
           B : in unsigned (31 downto 0);
           C : in unsigned (31 downto 0);
           D : in unsigned (31 downto 0);
           X : in unsigned (31 downto 0);
           S : in unsigned (4 downto 0);
           nA : out unsigned (31 downto 0));
end Rn2;

architecture Behavioral of Rn2 is

begin

nA <= (A + x"5A827999" + X + ((B and C) or (B and D) or (C and D))) rol TO_INTEGER(S);

end Behavioral;
