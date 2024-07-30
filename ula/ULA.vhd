LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ULA IS 
	PORT ();
END ULA;

ARCHITECTURE U OF somadorbits IS
	COMPONENT logica
        PORT(
				A, B : IN STD_LOGIC_VECTOR(0 TO 4);
				RE, RXOR, ROU : OUT STD_LOGIC_VECTOR(0 TO 4)
			);
   END COMPONENT;

   COMPONENT aritmetica
			PORT(
			
			);
   END COMPONENT;
	 
	COMPONENT controle
			PORT(
			
			);
   END COMPONENT;

BEGIN
    FA0: FA Port Map(A(0), X(0), C(0), S(0), C(1));
    FA1: FA Port Map(A(1), X(1), C(1), S(1), C(2));
    FA2: FA Port Map(A(2), X(2), C(2), S(2), C(3));
    FA3: FA Port Map(A(3), X(3), C(3), S(3), C(4));
    FA4: FA Port Map(A(4), X(4), C(4), S(4), C(5));
END U;