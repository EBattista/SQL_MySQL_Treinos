CREATE DEFINER=`root`@`localhost` FUNCTION `imposto_case`(salario dec(8,2)) RETURNS decimal(8,2)
BEGIN

DECLARE imposto dec (8,2);

CASE
	when salario <1000 then
    set imposto = salario *0.15;
    
	when salario = 1000 then 
    set imposto = salario * 0.18;
    
    when salario > 1000 then
    set imposto = salario *0.20;

END CASE;
    
RETURN imposto;
END