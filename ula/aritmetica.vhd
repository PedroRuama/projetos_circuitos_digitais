LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY aritmetica IS 
	PORT (
	A, B: IN STD_LOGIC_VECTOR(4 downto 0);
	S: OUT STD_LOGIC_VECTOR(4 downto 0);
	
	);
END aritmetica;
ARCHITECTURE funcaritmetica OF aritmetica IS

BEGIN

	S <= A AND B;

END funcaritmetica;