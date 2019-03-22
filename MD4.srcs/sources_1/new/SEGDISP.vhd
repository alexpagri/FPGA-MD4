----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2018 01:57:27 PM
-- Design Name: 
-- Module Name: SEGDISP - Behavioral
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

entity SEGDISP is
    Port ( clk : in STD_LOGIC;
           an : out STD_LOGIC_VECTOR (7 downto 0);
           cat : out STD_LOGIC_VECTOR (6 downto 0);
           inp : in STD_LOGIC_VECTOR (15 downto 0);
           inp2 : in STD_LOGIC_VECTOR (15 downto 0));
end SEGDISP;

architecture Behavioral of SEGDISP is

signal cnt1 : std_logic_vector(15 downto 0);

signal cnt2 : std_logic_vector(24 downto 0);

signal outp : std_logic_vector(3 downto 0);

signal dim : std_logic;

begin

process(clk)
begin
    if rising_edge(clk) then
        cnt1 <= cnt1 + 1;
        cnt2 <= cnt2 + 1;
    end if;
end process;

--process(cnt1, cnt2)
--begin
--    if cnt1(12 downto 0) < cnt2(23 downto 11) then
--        dim <=  cnt2(24);
--    else
--        dim <=  not cnt2(24);
--    end if;
--end process;

dim <= '0';

process(cnt1(15 downto 13), dim)
begin
        case cnt1(15 downto 13) is
            when "000" => an <= "11111110" or (dim, dim, dim, dim, dim, dim, dim, dim);
            when "001" => an <= "11111101" or (dim, dim, dim, dim, dim, dim, dim, dim);
            when "010" => an <= "11111011" or (dim, dim, dim, dim, dim, dim, dim, dim);
            when "011" => an <= "11110111" or (dim, dim, dim, dim, dim, dim, dim, dim);
            when "100" => an <= "11101111" or (dim, dim, dim, dim, dim, dim, dim, dim);
            when "101" => an <= "11011111" or (dim, dim, dim, dim, dim, dim, dim, dim);
            when "110" => an <= "10111111" or (dim, dim, dim, dim, dim, dim, dim, dim);
            when others => an <= "01111111" or (dim, dim, dim, dim, dim, dim, dim, dim);
        end case;
end process;

process(cnt1(15 downto 13))
begin
        case cnt1(15 downto 13) is
            when "000" => outp <= inp(3 downto 0);
            when "001" => outp <= inp(7 downto 4);
            when "010" => outp <= inp(11 downto 8);
            when "011" => outp <= inp(15 downto 12);
            when "100" => outp <= inp2(3 downto 0);
            when "101" => outp <= inp2(7 downto 4);
            when "110" => outp <= inp2(11 downto 8);
            when others => outp <= inp2(15 downto 12);
        end case;
end process;

process(outp)
begin
    case outp is
        when "0000"=> cat <="1000000" or (dim, dim, dim, dim, dim, dim, dim);  -- '0'
        when "0001"=> cat <="1111001" or (dim, dim, dim, dim, dim, dim, dim);  -- '1'
        when "0010"=> cat <="0100100" or (dim, dim, dim, dim, dim, dim, dim);  -- '2'
        when "0011"=> cat <="0110000" or (dim, dim, dim, dim, dim, dim, dim);  -- '3'
        when "0100"=> cat <="0011001" or (dim, dim, dim, dim, dim, dim, dim);  -- '4' 
        when "0101"=> cat <="0010010" or (dim, dim, dim, dim, dim, dim, dim);  -- '5'
        when "0110"=> cat <="0000010" or (dim, dim, dim, dim, dim, dim, dim);  -- '6'
        when "0111"=> cat <="1111000" or (dim, dim, dim, dim, dim, dim, dim);  -- '7'
        when "1000"=> cat <="0000000" or (dim, dim, dim, dim, dim, dim, dim);  -- '8'
        when "1001"=> cat <="0010000" or (dim, dim, dim, dim, dim, dim, dim);  -- '9'
        when "1010"=> cat <="0001000" or (dim, dim, dim, dim, dim, dim, dim);
        when "1011"=> cat <="0000011" or (dim, dim, dim, dim, dim, dim, dim);
        when "1100"=> cat <="1000110" or (dim, dim, dim, dim, dim, dim, dim);
        when "1101"=> cat <="0100001" or (dim, dim, dim, dim, dim, dim, dim);
        when "1110"=> cat <="0000110" or (dim, dim, dim, dim, dim, dim, dim);
        when others=> cat <="0001110" or (dim, dim, dim, dim, dim, dim, dim);
    end case;
end process;

end Behavioral;
