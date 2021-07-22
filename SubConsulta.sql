select min(preco_da_locacao) from filme;

select titulo, preco_da_locacao from filme
where preco_da_locacao = (select min(preco_da_locacao) from filme)		#Buscando alugueis com valor minimo utilizando SubConsulta
order by preco_da_locacao;												


select titulo, preco_da_locacao from filme
where preco_da_locacao >= (select avg(preco_da_locacao) from filme)
order by preco_da_locacao;

select * from cliente;

select * from aluguel;

#SubConsulta para retornar o endereço de clientes que alugaram menos de 20 filmes

select *from endereco c where c.endereco_id in (select b.endereco_id
from aluguel a, cliente b
where a.cliente_id = b.cliente_id
group by b.primeiro_nome
having (count(*)<20));







