# CRIANDO TABLE BACKUP

CREATE TABLE city_backup AS SELECT * FROM sakila.city;		#backup da table city from schema sakila to sakila_portugues

select * from city_backup;

TRUNCATE TABLE city_backup;			#Apaga todos os datos da tabela

# CRIANDO PROCEDURE PARA COPIAR OS DADOS USANDO CURSOR

DELIMITER |

CREATE PROCEDURE cria_backup()

BEGIN

DECLARE done INT DEFAULT FALSE;

DECLARE v_city_id smallint unsigned;
DECLARE v_city varchar(50) CHARACTER SET utf8;
DECLARE v_country_id smallint unsigned;
DECLARE v_last_update timestamp;

DECLARE cur1 CURSOR FOR (
	SELECT city_id, city, country_id, last_update FROM sakila.city);
    
DECLARE CONTINUE HANDLER 
	FOR NOT FOUND 
		SET done = TRUE;

OPEN cur1;

REPEAT
FETCH cur1 INTO v_city_id, v_city, v_country_id, v_last_update;

	IF NOT done THEN
		INSERT INTO city_backup(city_id, city, country_id, last_update) VALUES(v_city_id, v_city, v_country_id, v_last_update);
	END IF;

UNTIL done
END REPEAT;

CLOSE cur1;

END |

DELIMITER ;

SELECT * FROM city_backup;

CALL cria_backup;
