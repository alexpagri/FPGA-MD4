----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2018 01:49:05 PM
-- Design Name: 
-- Module Name: main - Behavioral
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

entity main is
    Port ( SW : in STD_LOGIC_VECTOR (15 downto 0);
           LED : out STD_LOGIC_VECTOR (15 downto 0);
           BTN : in STD_LOGIC_VECTOR (4 downto 0);
           AN : out STD_LOGIC_VECTOR (7 downto 0);
           CAT : out STD_LOGIC_VECTOR (6 downto 0);
           CLK : in STD_LOGIC;
           LED17_B : out STD_LOGIC;
           LED17_G : out STD_LOGIC;
           LED17_R : out STD_LOGIC;
           LED16_B : out STD_LOGIC;
           LED16_G : out STD_LOGIC;
           LED16_R : out STD_LOGIC);
end main;

architecture Behavioral of main is

component Pipe is
    Port (     clk : in std_logic;
               nb : in unsigned (3 downto 0);
               pX : in unsigned (127 downto 0);
               Ao : out unsigned (31 downto 0);
               Bo : out unsigned (31 downto 0);
               Co : out unsigned (31 downto 0);
               Do : out unsigned (31 downto 0));
end component;

component mpg is
    Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC;
           en : out STD_LOGIC);
end component;

component SEGDISP is
    Port ( clk : in STD_LOGIC;
           an : out STD_LOGIC_VECTOR (7 downto 0);
           cat : out STD_LOGIC_VECTOR (6 downto 0);
           inp : in STD_LOGIC_VECTOR (15 downto 0);
           inp2 : in STD_LOGIC_VECTOR (15 downto 0));
end component;

component clk_wiz_0 is
    Port ( clk_out1 : out std_logic;
           clk_out2 : out std_logic;
           clk_in1 : in std_logic);
end component;

component Rn1 is
    Port ( A : in unsigned (31 downto 0);
           B : in unsigned (31 downto 0);
           C : in unsigned (31 downto 0);
           D : in unsigned (31 downto 0);
           X : in unsigned (31 downto 0);
           S : in unsigned (4 downto 0);
           nA : out unsigned (31 downto 0));
end component;

component Stage is
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
end component;

signal wa : std_logic;

signal sout : std_logic_vector (31 downto 0);
signal Ao, Bo, Co, Do, Ao2, Bo2, Co2, Do2 : unsigned (31 downto 0);

signal cm : std_logic;

signal cntc : unsigned (31 downto 0);

signal cnt : unsigned (4 downto 0);

signal ck, ck2 : std_logic;

type testarr is array (0 to 47) of unsigned (127 downto 0);

constant testarr_n : testarr := (
x"0000000000000000_000080727473796d",
x"0000000000000000_000080727473796e",
x"0000000000000000_000080727473796f",
x"0000000000000000_0000807274737970",
x"0000000000000000_0000807274737972",
x"0000000000000000_0000807274737973",
x"0000000000000000_0000807274737974",
x"0000000000000000_0000807274737975",
x"0000000000000000_0000807274737976",
x"0000000000000000_0000807274737977",
x"0000000000000000_0000807274737978",
x"0000000000000000_0000807274737979",
x"0000000000000000_000080727473797a",
x"0000000000000000_0000807274736d6d",
x"0000000000000000_0000807274736e6e",
x"0000000000000000_0000807274736f6e",
x"0000000000000000_000080727473706e",
x"0000000000000000_000080727473726e",
x"0000000000000000_000080727473736e",
x"0000000000000000_000080727473746e",
x"0000000000000000_000080727473756e",
x"0000000000000000_000080727473766e",
x"0000000000000000_000080727473776e",
x"0000000000000000_000080727473786e",
x"0000000000000000_000080727473796e",
x"0000000000000000_0000807274737a6e",
x"0000000000000000_00008072746d796d",
x"0000000000000000_00008072746e796e",
x"0000000000000000_00008072746f796e",
x"0000000000000000_000080727470796e",
x"0000000000000000_000080727471796e",
x"0000000000000000_000080727472796e",
x"0000000000000000_000080727473796e",
x"0000000000000000_000080727474796e",
x"0000000000000000_000080727475796e",
x"0000000000000000_000080727476796e",
x"0000000000000000_000080727477796e",
x"0000000000000000_000080727478796e",
x"0000000000000000_000080727479796e",
x"0000000000000000_00008072747a796e",
x"0000000000000000_000080727461796e",
x"0000000000000000_000080727462796e",
x"0000000000000000_000080727463796e",
x"0000000000000000_000080727464796e",
x"0000000000000000_000080727465796e",
x"0000000000000000_000080727466796e",
x"0000000000000000_000080727467796e",
x"0000000000000000_000080727468796e"
);

signal sarray, sarray2 : unsigned (127 downto 0);

begin

ck0 : clk_wiz_0 port map(clk_in1 => CLK, clk_out1 => ck, clk_out2 => ck2);

process(wa)
begin
    if rising_edge(wa) then
        cnt <= cnt + 1;
    end if;
end process;

process(cnt)
begin
    if cnt < 24 then
        sarray <= testarr_n(to_integer(cnt));
        sarray2 <= testarr_n(to_integer(cnt+24));
    else
        sarray <= (others => '0');
        sarray2 <= (others => '0');
    end if;
end process;

LED(4 downto 0) <= std_logic_vector(cnt);

process(Ao, Bo, Co, Do, Ao2, Bo2, Co2, Do2, sw(2 downto 0))
begin
    case sw(2 downto 0) is
        when "000" => sout <= std_logic_vector(Ao);
        when "001" => sout <= std_logic_vector(Bo);
        when "010" => sout <= std_logic_vector(Co);
        when "011" => sout <= std_logic_vector(Do);
        when "100" => sout <= std_logic_vector(Ao2);
        when "101" => sout <= std_logic_vector(Bo2);
        when "110" => sout <= std_logic_vector(Co2);
        when "111" => sout <= std_logic_vector(Do2);
        when others => sout <= x"00000000";
    end case;
end process;

sgd0 : SEGDISP port map (clk => CLK, an => AN, cat => CAT, inp2 => std_logic_vector(cntc(31 downto 16)), inp => std_logic_vector(cntc(15 downto 0)));

--mpg0 : mpg port map (clk => ck, btn => btn(0), en => wa);

--pip0: Pipe port map (clk => wa, nb => x"5", pX => sarray, Ao => Ao, Bo => Bo, Co => Co, Do => Do);
--pip1: Pipe port map (clk => wa, nb => x"5", pX => sarray2, Ao => Ao2, Bo => Bo2, Co => Co2, Do => Do2);

cm <= ck xnor ck2;

process(cm)
begin
    if rising_edge(cm) then
        cntc(0) <= not cntc(0);
    end if;
end process;

end Behavioral;
