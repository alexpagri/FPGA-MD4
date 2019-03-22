----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2018 02:03:58 AM
-- Design Name: 
-- Module Name: Pipe - Behavioral
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

entity Pipe is
    Port (     clk : in std_logic;
               nb : in unsigned (3 downto 0);
               pX : in unsigned (127 downto 0);
               Ao : out unsigned (31 downto 0);
               Bo : out unsigned (31 downto 0);
               Co : out unsigned (31 downto 0);
               Do : out unsigned (31 downto 0));
end Pipe;

architecture Behavioral of Pipe is

component Rn1 is
    Port ( A : in unsigned (31 downto 0);
           B : in unsigned (31 downto 0);
           C : in unsigned (31 downto 0);
           D : in unsigned (31 downto 0);
           X : in unsigned (31 downto 0);
           S : in unsigned (4 downto 0);
           nA : out unsigned (31 downto 0));
end component;

component Rn2 is
    Port ( A : in unsigned (31 downto 0);
           B : in unsigned (31 downto 0);
           C : in unsigned (31 downto 0);
           D : in unsigned (31 downto 0);
           X : in unsigned (31 downto 0);
           S : in unsigned (4 downto 0);
           nA : out unsigned (31 downto 0));
end component;

component Rn3 is
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

type ar32 is array (0 to 11) of unsigned (31 downto 0);
type ar8 is array (0 to 47) of unsigned (7 downto 0);
type ar4 is array (0 to 47) of unsigned (3 downto 0);
constant v : integer := 4;

signal gA, gB, gC, gD : ar32 := (others => (others => '0'));

signal gX : unsigned (511 downto 0) := (others => '0');

constant xS : ar4 := (
x"0",
x"1",
x"2",
x"3",
x"4",
x"5",
x"6",
x"7",
x"8",
x"9",
x"A",
x"B",
x"C",
x"D",
x"E",
x"F",

x"0",
x"4",
x"8",
x"C",
x"1",
x"5",
x"9",
x"D",
x"2",
x"6",
x"A",
x"E",
x"3",
x"7",
x"B",
x"F",

x"0",
x"8",
x"4",
x"C",
x"2",
x"A",
x"6",
x"E",
x"1",
x"9",
x"5",
x"D",
x"3",
x"B",
x"7",
x"F"
);

constant S : ar8 := (
x"03",
x"07",
x"0B",
x"13",

x"03",
x"07",
x"0B",
x"13",

x"03",
x"07",
x"0B",
x"13",

x"03",
x"07",
x"0B",
x"13",


x"03",
x"05",
x"09",
x"0D",

x"03",
x"05",
x"09",
x"0D",

x"03",
x"05",
x"09",
x"0D",

x"03",
x"05",
x"09",
x"0D",


x"03",
x"09",
x"0B",
x"0F",

x"03",
x"09",
x"0B",
x"0F",

x"03",
x"09",
x"0B",
x"0F",

x"03",
x"09",
x"0B",
x"0F"
);

begin

gX(127 downto 0) <= pX(127 downto 0);
gx(454 downto 451) <= nb;

rn1_0A : Rn1 port map (x"67452301", x"efcdab89", x"98badcfe", x"10325476", gX(31 + to_integer(xS(0))*32 downto to_integer(xS(0))*32), S(0)(4 downto 0), gA(0));
rn1_0B : Rn1 port map (x"10325476", gA(0), x"efcdab89", x"98badcfe", gX(31 + to_integer(xS(1))*32 downto to_integer(xS(1))*32), S(1)(4 downto 0), gD(0));
rn1_0C : Rn1 port map (x"98badcfe", gD(0), gA(0), x"efcdab89", gX(31 + to_integer(xS(2))*32 downto to_integer(xS(2))*32), S(2)(4 downto 0), gC(0));
rn1_0D : Rn1 port map (x"efcdab89", gC(0),  gD(0), gA(0), gX(31 + to_integer(xS(3))*32 downto to_integer(xS(3))*32), S(3)(4 downto 0), gB(0));
--sta_0 : Stage port map (gA(0), gB(0), gC(0), gD(0), nb, pX(127 downto 0), gA(0), gB(0), gC(0), gD(0), gX(0)(454 downto 451), gX(0)(127 downto 0));

f0 : for i in 0 to v-2 generate
    
    rn1_iA : Rn1 port map (gA(i), gB(i), gC(i), gD(i), gX(31 + to_integer(xS((i+1)*4))*32 downto to_integer(xS((i+1)*4))*32), S((i+1)*4)(4 downto 0), gA(i+1));
    rn1_iB : Rn1 port map (gD(i), gA(i+1), gB(i), gC(i), gX(31 + to_integer(xS((i+1)*4+1))*32 downto to_integer(xS((i+1)*4+1))*32), S((i+1)*4+1)(4 downto 0), gD(i+1));
    rn1_iC : Rn1 port map (gC(i), gD(i+1), gA(i+1), gB(i), gX(31 + to_integer(xS((i+1)*4+2))*32 downto to_integer(xS((i+1)*4+2))*32), S((i+1)*4+2)(4 downto 0), gC(i+1));
    rn1_iD : Rn1 port map (gB(i), gC(i+1), gD(i+1), gA(i+1), gX(31 + to_integer(xS((i+1)*4+3))*32 downto to_integer(xS((i+1)*4+3))*32), S((i+1)*4+3)(4 downto 0), gB(i+1));
    --sta_i : Stage port map (clk, gD(i), outp(i+1), gB(i), gC(i), gX(i)(454 downto 451), gX(i)(127 downto 0), gA(i+1), gB(i+1), gC(i+1), gD(i+1), gX(i+1)(454 downto 451), gX(i+1)(127 downto 0));
    
end generate;

f1 : for i in v-1 to 2*v-2 generate
    
    rn2_iA : Rn2 port map (gA(i), gB(i), gC(i), gD(i), gX(31 + to_integer(xS((i+1)*4))*32 downto to_integer(xS((i+1)*4))*32), S((i+1)*4)(4 downto 0), gA(i+1));
    rn2_iB : Rn2 port map (gD(i), gA(i+1), gB(i), gC(i), gX(31 + to_integer(xS((i+1)*4+1))*32 downto to_integer(xS((i+1)*4+1))*32), S((i+1)*4+1)(4 downto 0), gD(i+1));
    rn2_iC : Rn2 port map (gC(i), gD(i+1), gA(i+1), gB(i), gX(31 + to_integer(xS((i+1)*4+2))*32 downto to_integer(xS((i+1)*4+2))*32), S((i+1)*4+2)(4 downto 0), gC(i+1));
    rn2_iD : Rn2 port map (gB(i), gC(i+1), gD(i+1), gA(i+1), gX(31 + to_integer(xS((i+1)*4+3))*32 downto to_integer(xS((i+1)*4+3))*32), S((i+1)*4+3)(4 downto 0), gB(i+1));
    --sta_i : Stage port map (clk, gD(i), outp(i+1), gB(i), gC(i), gX(i)(454 downto 451), gX(i)(127 downto 0), gA(i+1), gB(i+1), gC(i+1), gD(i+1), gX(i+1)(454 downto 451), gX(i+1)(127 downto 0));
    
end generate;

f2 : for i in 2*v-1 to 3*v-2 generate
    
    rn3_iA : Rn3 port map (gA(i), gB(i), gC(i), gD(i), gX(31 + to_integer(xS((i+1)*4))*32 downto to_integer(xS((i+1)*4))*32), S((i+1)*4)(4 downto 0), gA(i+1));
    rn3_iB : Rn3 port map (gD(i), gA(i+1), gB(i), gC(i), gX(31 + to_integer(xS((i+1)*4+1))*32 downto to_integer(xS((i+1)*4+1))*32), S((i+1)*4+1)(4 downto 0), gD(i+1));
    rn3_iC : Rn3 port map (gC(i), gD(i+1), gA(i+1), gB(i), gX(31 + to_integer(xS((i+1)*4+2))*32 downto to_integer(xS((i+1)*4+2))*32), S((i+1)*4+2)(4 downto 0), gC(i+1));
    rn3_iD : Rn3 port map (gB(i), gC(i+1), gD(i+1), gA(i+1), gX(31 + to_integer(xS((i+1)*4+3))*32 downto to_integer(xS((i+1)*4+3))*32), S((i+1)*4+3)(4 downto 0), gB(i+1));
    --sta_i : Stage port map (clk, gD(i), outp(i+1), gB(i), gC(i), gX(i)(454 downto 451), gX(i)(127 downto 0), gA(i+1), gB(i+1), gC(i+1), gD(i+1), gX(i+1)(454 downto 451), gX(i+1)(127 downto 0));
    
end generate;

--process(gA, gB, gC, gD, sel)
--begin
--    if to_integer(unsigned(sel)) < 48 then
--        Ao <= gA(to_integer(unsigned(sel)));-- + x"67452301";
--        Bo <= gB(to_integer(unsigned(sel)));-- + x"efcdab89";
--        Co <= gC(to_integer(unsigned(sel)));-- + x"98badcfe";
--        Do <= gD(to_integer(unsigned(sel)));-- + x"10325476";
--    else
--        Ao <= x"00000000";-- + x"67452301";
--        Bo <= x"00000000";-- + x"efcdab89";
--        Co <= x"00000000";-- + x"98badcfe";
--        Do <= x"00000000";-- + x"10325476";
--    end if;
--end process;

Ao <= gA(11) + x"67452301";
Bo <= gB(11) + x"efcdab89";
Co <= gC(11) + x"98badcfe";
Do <= gD(11) + x"10325476";

end Behavioral;
