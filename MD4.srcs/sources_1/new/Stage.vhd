----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2018 01:29:30 AM
-- Design Name: 
-- Module Name: Stage - Behavioral
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

entity Stage is
    Port ( clk : in std_logic;
           A : in unsigned (31 downto 0);
           B : in unsigned (31 downto 0);
           C : in unsigned (31 downto 0);
           D : in unsigned (31 downto 0);
           nb : in unsigned (3 downto 0);
           X : in unsigned (127 downto 0);
           Ao : out unsigned (31 downto 0);
           Bo : out unsigned (31 downto 0);
           Co : out unsigned (31 downto 0);
           Do : out unsigned (31 downto 0);
           nbo : out unsigned (3 downto 0);
           Xo : out unsigned (127 downto 0));
end Stage;

architecture Behavioral of Stage is

begin

process(clk)
begin
    if rising_edge(clk) then
        Ao <= A;
        Bo <= B;
        Co <= C;
        Do <= D;
        nbo <= nb;
        Xo <= X;
    end if;
end process;

end Behavioral;
