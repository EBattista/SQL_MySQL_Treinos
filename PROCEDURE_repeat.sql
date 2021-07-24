CREATE DEFINER=`root`@`localhost` PROCEDURE `contar_repeat`(limite int)
BEGIN
DECLARE CONTADOR INT DEFAULT 0;
DECLARE SOMA INT DEFAULT 0;

	REPEAT

	SET contador = contador + 1;
	SET soma = soma + contador;
	
    UNTIL limite <= contador
    
	END REPEAT;

SELECT SOMA;
END