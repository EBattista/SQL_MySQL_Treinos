# Comando HAVING ()

#Retornar quantidade de alugue por cliente

select b.primeiro_nome, b.ultimo_nome, count(*) total_alugueis
from aluguel a, cliente b
where a.cliente_id = b.cliente_id	#Join entre tables
group by primeiro_nome
having total_alugueis >= 20		#Condição para filtrar quantidade de alugueis por cliente
order by total_alugueis;