-- inserir imports da IEEE
ENTITY jogo IS
	PORT(	A,B,C,D	: IN STD_LOGIC;
			h			: IN STD_LOGIC;
			Dsp		: OUT STD_LOGIC_VECTOR(0 TO 6));
END jogo;

ARCHITECTURE jogar OF jogo IS
SIGNAL X,Y 	: STD_LOGIC;
SIGNAL S		: STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN
-- ESCREVER as expressoes para X e Y
	X <= ... (EXPRESSAO)
	Y <= ... (EXPRESSAO)
-- S[2] habilita ou desabilita as saidas X e Y
	S(1) <= X OR h;
	S(0) <= Y OR h;
-- INSERIR CODIGO DISPLAY COM S DE ENTREDA
	WITH S SELECT
	Dsp <= 	"0000001" WHEN "00",
			"0000000" WHEN OTHERS;
END jogar;