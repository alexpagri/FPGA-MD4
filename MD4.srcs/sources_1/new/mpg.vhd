----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2018 01:54:27 PM
-- Design Name: 
-- Module Name: mpg - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mpg is
    Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC;
           en : out STD_LOGIC);
end mpg;

architecture Behavioral of mpg is

signal cnt1 : std_logic_vector(15 downto 0) := x"0000";
signal Q1, Q2, Q3 : std_logic;

begin

process(clk)
begin
    if rising_edge(clk) then
        cnt1 <= cnt1 + 1;
    end if;
end process;

process(clk, btn, cnt1)
begin
    if rising_edge(clk) and cnt1 = x"FFFF" then
        Q1 <= btn;
    end if;
end process;

process(clk, Q1)
begin
    if rising_edge(clk) then
        Q2 <= Q1;
    end if;
end process;

process(clk, Q2)
begin
    if rising_edge(clk) then
        Q3 <= Q2;
    end if;
end process;

en <= not Q3 and Q2;

end Behavioral;
