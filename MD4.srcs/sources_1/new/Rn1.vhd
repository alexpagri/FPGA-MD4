----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2018 12:43:29 AM
-- Design Name: 
-- Module Name: Rn1 - Behavioral
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
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Rn1 is
    Port ( A : in unsigned (31 downto 0);
           B : in unsigned (31 downto 0);
           C : in unsigned (31 downto 0);
           D : in unsigned (31 downto 0);
           X : in unsigned (31 downto 0);
           S : in unsigned (4 downto 0);
           nA : out unsigned (31 downto 0));
end Rn1;

architecture Behavioral of Rn1 is

begin

nA <= (A + X + ((B and C) or (not B and D))) rol TO_INTEGER(S);

end Behavioral;
