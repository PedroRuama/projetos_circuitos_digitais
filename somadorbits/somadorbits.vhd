LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY somadorbits is 
 
 Port(
	A, B: IN STD_LOGIC_VECTOR(3 downto 0);
	S: OUT STD_LOGIC_VECTOR(4 downto 0));
	
END somadorbits;


ARCHITECTURE Q OF somadorbits IS

	Component FA
		port(
			Ai, Bi: IN STD_LOGIC;
			Cin: IN STD_LOGIC;
			Si : OUT STD_LOGIC;
			Cout : OUT STD_LOGIC);
	
	end Component;

	Signal C: STD_LOGIC_VECTOR(4 downto 0);
	
	
BEGIN
	C(0) <= '0';
	FA0: FA Port Map(A(0), B(0), C(0), S(0), C(1));
	FA1: FA Port Map(A(1), B(1), C(1), S(1), C(2));
	FA2: FA Port Map(A(2), B(2), C(2), S(2), C(3));
	FA3: FA Port Map(A(3), B(3), C(3), S(3), C(4));

	S(4) <= C(4);


END Q;