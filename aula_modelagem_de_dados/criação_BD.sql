create database aula_modelagem; --criando o banco
drop database aula_modelagem; -- excluindo um banco de dados (obs: ele não pode estar selecionado),
-- sempre que for passado o campo eu preciso passar o tipo de dado que ele vai receber
create table editoras (
	id serial primary key, 
  nome text not null,
  cnpj text unique,
  data_cadastro timestamp default now()
);

insert into editoras (nome, cnpj) values ('Cubos Academy', '00112233445566');