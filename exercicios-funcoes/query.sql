select * from usuarios

select count(id) from usuarios;

-- 1 - Faça uma query que retorna a quantidade de medicamentos da tabela `farmacia`.
select count(medicamento) from farmacia;

-- 2 - Faça uma query que retorna apenas a idade do usuario mais novo cadastrado na tabela `usuarios`.

select min(idade) from usuarios;

-- 3 - Faça uma query que retorna apenas a idade do usuario mais velho cadastrado na tabela `usuarios`.

select max(idade) from usuarios;

-- 4 - Faça uma query que retorna a média de idade entre os usuários cadastrados na tabela `usuarios` com idade maior ou igual a 18 anos.

select count(idade) from usuarios where idade >= 18;

--5 - Faça uma query que retorna a soma total do estoque de todos os medicamentos das categorias `blue` e `black` na tabela `farmacia`.

select categoria, count(id), sum(estoque) from farmacia group by categoria;