-- 1- Execute o script de criação da tabela farmacia

-- 2- Monte uma query que retorne a quantidade agrupados por categoria e soma do estoque
-- de todos os produtos de cada categoria.

select categoria, count(id), sum(estoque) from farmacia group by categoria;

--para somar eu usei a função sum() e para saber a quantidade de cada categoria usei a função count()