CREATE DEFINER=`root`@`localhost` PROCEDURE `contar_iterate`(limite int)
BEGIN
DECLARE CONTADOR INT DEFAULT 0;
DECLARE SOMA INT DEFAULT 0;

loop_teste: loop

SET contador = contador + 1;
SET soma = soma + contador;

IF CONTADOR < limite THEN
	ITERATE loop_teste; -- CHAMA NOVAMENTE O LOOP loop_teste
    END IF;

LEAVE loop_teste;    
END LOOP loop_teste;

SELECT SOMA;
END