#Criando VIEW para consulta de todos os filmes com o menor preço de locaçao

CREATE VIEW locacao_menor AS
    SELECT 
        titulo, descricao, preco_da_locacao
    FROM
        filme
    WHERE
        preco_da_locacao = (SELECT 
                MIN(preco_da_locacao)
            FROM
                filme);
                
select * from locacao_menor;


