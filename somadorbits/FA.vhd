

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY FA is 

	port(
		Ai, Bi: IN STD_LOGIC;
		Cin: IN STD_LOGIC;
		Si : OUT STD_LOGIC;
		Cout : OUT STD_LOGIC);
	
END FA;


ARCHITECTURE sumbit OF FA IS

SIGNAL X : STD_LOGIC; 

BEGIN 

	X <= Ai XOR Bi;	
	Si <= X XOR Cin;
	Cout <= (Ai and Bi) OR (X AND Cin);
END sumbit;