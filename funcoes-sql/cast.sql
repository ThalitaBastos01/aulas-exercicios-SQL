select idade::text from usuarios;

select '123'::integer; --inteiro


select cast(idade as text) from usuarios; -- agora ele é um campo para texto 


-- a função CAST() podemos converter dados de um tipo para outro