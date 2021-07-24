CREATE DEFINER=`root`@`localhost` PROCEDURE `contar`(limite int)
BEGIN
DECLARE CONTADOR INT DEFAULT 0;
DECLARE SOMA INT DEFAULT 0;

loop_teste: loop

SET contador = contador + 1;
SET soma = soma + contador;

IF LIMITE <= CONTADOR THEN
	LEAVE loop_teste;
    end if;
    
END LOOP loop_teste;

SELECT SOMA;
END