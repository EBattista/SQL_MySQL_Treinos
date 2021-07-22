#CRIANDO JOINS DE TABELAS

select c.primeiro_nome, c.ultimo_nome, count(*) from aluguel a, cliente c
where a.cliente_id = c.cliente_id		#Conecta chave primária (cliente_id na table Cliente) com chave estrangeira (cliente_id na table Aluguel)
										#Essa join resulta em todos os filmes alugados por cliente

group by c.primeiro_nome
order by c.primeiro_nome
