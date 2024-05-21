select idade, count(id), sum(idade) from usuarios group by idade;
-- ele tras grupos e a quantidade de registro para cada grupo
--ele é usado em combinações com outras funções