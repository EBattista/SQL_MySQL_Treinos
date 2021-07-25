# Triggers

#Sempre associado a uma table
#Procedimento invocado com comandos DML

/* Usos:

Verificaçao da integridade dos dados 
Rastreamento log
backup
*/

/* Sintaxe

CREATE TRIGGER nome timing operacao
ON table
FOR EACH ROW */

-- TIMING: BEFORE | AFTER

-- OPERACAO: INSERT | UPDATE | DELETE


#EXEMPLO:

CREATE TRIGGER desconto BEFORE INSERT
ON pagamento
FOR EACH ROW
SET NEW.valor = NEW.valor * 0.9;		-- Valor de novos pagamentos com 10% de desconto

-- Não existe alteração de Triggers - Necessário excluir

DROP TRIGGER desconto;


-- Utilizando TRIGGER para criar backup

CREATE TABLE filme_backup AS TABLE filme;

CREATE TRIGGER backup_filme BEFORE INSERT
ON filme
FOR EACH ROW
INSERT INTO filme_backup values(NEW.filme_id,
NEW.titulo,
NEW.descricao,
NEW.ano_de_lancamento,
NEW.idioma_id,
NEW.idioma_original_id,
NEW.duracao_da_locacao,
NEW.preco_da_locacao,
NEW.duracao_do_filme,
NEW.custo_de_substituicao,
NEW.classificacao,
NEW.recursos_especiais,
NEW.ultima_atualizacao);



