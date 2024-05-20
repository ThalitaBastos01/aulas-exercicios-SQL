select * from usuarios;

-- min retorna sempre o menos valor apartir de um campo que informarmos como argumento
-- ele aceita qualquer campo
select min(cadastro) from usuarios; -- 2023-05-22 03:09:18

select min(name) from usuarios; -- Aaron Bates


select min(idade) from usuarios; -- 13

--max tras o maior valor que tem no campo que informamos como argumento 

select max(cadastro) from usuarios; -- 2025-05-18 07:57:27

select max(name) from usuarios; -- Zia Carlson


select max(idade) from usuarios; -- 80