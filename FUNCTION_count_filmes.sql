DELIMITER $$
drop function if exists contar;

CREATE FUNCTION CONTAR ()
RETURNS INTEGER
BEGIN
DECLARE contador integer;
SELECT 
    COUNT(1)
INTO contador FROM
    filme;

RETURN contador;
END$$

SELECT contar()$$