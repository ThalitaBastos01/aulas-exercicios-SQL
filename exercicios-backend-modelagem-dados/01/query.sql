--faça a criação do banco de dados ecommerce
create database ecommerce;

-- criação das tabelas sem chave estrangeira


create table vendedores (cpf char(11) primary key, nome varchar(150));

create table clientes (
  cpf char(11) primary key, 
  nome varchar(150)
);

create table categorias (id serial primary key, nome varchar(50));

-- demais tabelas 

create table pedidos (
  id serial primary key, 
	valor integer, 
  cliente_cpf char(11) references clientes(cpf), 
  vendedor_cpf char(11) not null references vendedores(cpf)
);


create table produtos (
  id serial primary key, 
  nome varchar(100), 
  descricao text, 
  preco integer, 
  quantidade_em_estoque integer, 
  categoria_id integer not null references categorias(id)
);


create table itens_do_pedido (
	id serial primary key,
  quantidade integer not null,
  pedidos_id integer not null references pedidos(id),
  produto_id integer not null references produtos(id)
);


