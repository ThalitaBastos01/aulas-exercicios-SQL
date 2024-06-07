create database aula_modelagem; --criando o banco
drop database aula_modelagem; -- excluindo um banco de dados (obs: ele não pode estar selecionado),
drop table nomedatabela; -- excluir uma tabela.
-- sempre que for passado o campo eu preciso passar o tipo de dado que ele vai receber
create table editoras (
	id serial primary key, 
  nome text not null,
  cnpj text unique,
  data_cadastro timestamp default now()
);

insert into editoras (nome, cnpj) values ('Cubos Academy', '00112233445566');

--tabela livros - Relacionamento um para muitos (1 - n)
create table livros (
  isbn integer primary key,
  editora_id integer references editoras(id),
  titulo text not null,
  data_publicacao date not null
);
--inserindo dados na tabela livros
insert into livros 
(isbn, editora_id, titulo, data_publicacao)
values
(12345, 2, 'Backend com node.js', '2024-12-01'); -- nesse exemplo colocamos um id que não existe na tabela editoras, então da esse erro (inserção ou atualização em tabela "livros" viola restrição de chave estrangeira "livros_editora_id_fkey")

-- modo em que o id existe, ele executa normalmente

insert into livros 
(isbn, editora_id, titulo, data_publicacao)
values
(12345, 1, 'Backend com node.js', '2024-12-01');

-- Tabela enderecos - Relacionamento um para um

create table enderecos (
  id serial primary key,
  editora_id integer references editoras (id),
  cep text not null,
  rua text,
  bairro text, 
  cidade text,
  estado char(2),
  pais text
);

insert into enderecos (editora_id, cep)
values 
(1, '41000-000');

--Tabela categorias - Relacionamento muitos para muitos

create table categorias (
	id serial primary key,
  nome text not null
);

create table livro_categoria (
	livro_isbn integer references livros(isbn),
  categoria_id integer references categorias(id)
);

insert into categorias (nome) values ('Tecnologia'), ('Programação'), ('Nodejs');

-- relacionamento entre livro e categoria

insert into livro_categoria 
(livro_isbn, categoria_id)
values
(12344, 1),
(12345, 2),
(12345, 3),
(12344, 2);

--Tabela comentarios - Auto relacionamento

create table comentarios (
	id serial primary key,
  descricao text not null,
  comentario_id integer references comentarios(id),
  livro_isbn integer references livros(isbn)
);

insert into comentarios (livro_isbn, descricao)
values
(12345, 'Livro muito bom');

insert into comentarios (comentario_id, descricao)
values
(1, 'Obrigado pelo elogio');


-- Alteração de tabelas

alter table categorias add column descricao text;

-- não vou querer mais esse campo quero remover 

alter table categorias drop column descricao;

-- quero mudar o tipo 

alter table categorias alter column descricao type varchar(100);

-- criando uma nova tabela

create table telefons (
	id serial primary key,
  editora_id integer,
  numero text
);

--estou alterando que é a tabela telefons, estou adicionando uma constraints que é foreign key é no campo editora_id, que vai fazer referencia na tabela editoras no campo id 
alter table telefons 
add constraint fk_telefones_editoras 
foreign key (editora_id) references editoras(id); 