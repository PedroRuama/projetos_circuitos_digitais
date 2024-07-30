
-- include da bliblioteca  std_LOGIC
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mainVHDL is 
--definicoes das portas e variaveis
	port(
		a,b,c : IN STD_LOGIC;
		y : OUT STD_LOGIC
	);
	
END mainVHDL;


ARCHITECTURE func OF mainVHDL IS
-- z variavel intermediaria, apenas para armazenar uma expressao
SIGNAL z : STD_LOGIC; 
BEGIN 
--circuito logico
	z <= (NOT b OR c);	
	y <= (a OR b) AND z;
			
END func;