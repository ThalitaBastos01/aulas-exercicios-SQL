-- serve para substituir um valor null por um valor que iremos definir

select * from agendamentos;

select coalesce(NULL, 'batata');

select concat(name, ' - ', coalesce(phone, 'não possui telefone')) from usuarios;

-- aqui ele vai concatenar o telefone e email, mas caso o telefone seja null ele vai passar o email
--mas caso o telefone e o email seja null ele vai imprimir que o usuario não possui
select concat(name, ' - ', coalesce(phone, email, 'não possui')) from usuarios;

select id, concat(name, ' - ', coalesce(phone, email, 'não possui')) from usuarios;