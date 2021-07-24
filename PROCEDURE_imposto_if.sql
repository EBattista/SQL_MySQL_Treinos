CREATE DEFINER=`root`@`localhost` FUNCTION `IMPOSTO`(salario dec (8,2)) RETURNS decimal(8,2)
BEGIN

DECLARE imposto_if dec(8,2);

IF salario <1000 THEN
SET imposto = salario * 0.15;

ELSEIF salario <2000 THEN
SET imposto = salario *0.20;

ELSEIF salario <3000 THEN
SET imposto = salario * 0.25;

ELSE 
SET imposto = salario * 0.27;

END IF;

RETURN imposto;
END