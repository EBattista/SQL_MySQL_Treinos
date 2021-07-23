#Criar procedure para inserir novo filme no database

DELIMITER $
DROP PROCEDURE IF exists novo_filme;

CREATE PROCEDURE novo_filme(_filme_id smallint unsigned,
_titulo varchar(255),
_descricao text,
_ano_de_lancamento year,
_idioma_id tinyint unsigned,
_idioma_original_id tinyint unsigned,
_duracao_da_locacao tinyint unsigned,
_preco_da_locacao decimal(4,2),
_duracao_do_filme smallint unsigned,
_custo_de_substituicao decimal(5,2),
_classificacao enum('G','PG','PG-13','R','NC-17'),
_recursos_especiais set('Trailers','Commentaries','Deleted Scenes','Behind the Scenes'),
_ultima_atualizacao timestamp)

BEGIN
INSERT INTO `sakila_portugues`.`filme`
(`filme_id`,
`titulo`,
`descricao`,
`ano_de_lancamento`,
`idioma_id`,
`idioma_original_id`,
`duracao_da_locacao`,
`preco_da_locacao`,
`duracao_do_filme`,
`custo_de_substituicao`,
`classificacao`,
`recursos_especiais`,
`ultima_atualizacao`)
VALUES
(_filme_id,
_titulo,
_descricao,
_ano_de_lancamento,
_idioma_id,
_idioma_original_id,
_duracao_da_locacao,
_preco_da_locacao,
_duracao_do_filme,
_custo_de_substituicao,
_classificacao,
_recursos_especiais,
_ultima_atualizacao);

END$

DELIMITER ;

SELECT 
    *
FROM
    filme
ORDER BY 1 DESC;

CALL novo_filme(1999, 'POLICE STATE', 'A Epic Drama', 2010, 1, null, 6, 49.99, 86, 20.99, 'PG', 'Deleted Scenes,Behind the Scenes', '2020-02-15 05:03:42');

SELECT 
    *
FROM
    filme
ORDER BY 1 DESC;


