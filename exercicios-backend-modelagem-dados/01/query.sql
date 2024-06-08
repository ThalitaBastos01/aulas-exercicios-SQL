--faça a criação do banco de dados ecommerce
create database ecommerce;

-- criação das tabelas sem chave estrangeira


create table vendedores (
  cpf char(14) unique primary key, 
  nome varchar(150)
  );

create table clientes (
  cpf char(14) unique primary key, 
  nome varchar(150)
);

create table categorias (
  id serial primary key, 
  nome varchar(50)
  );

-- demais tabelas 

create table pedidos (
  id serial primary key, 
	valor integer, 
  cliente_cpf char(14) references clientes(cpf), 
  vendedor_cpf char(14) not null references vendedores(cpf)
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


--Alimentar a tabela categorias com as seguintes informações.
insert into categorias (nome)
values
('frutas'),
('verduras'),
('massas'),
('bebidas'),
('utilidades');

--Alimentar a tabela produtos com as seguintes informações:

insert into produtos (nome, descricao, preco, quantidade_em_estoque, categoria_id)
values 
('Mamão', 'Rico em vitamina A, potássio e vitamina C', 300, 123, 1),
('Maça', 'Fonte de potássio e fibras.', 90, 34, 1),
('Cebola', 'Rico em quercetina, antocianinas, vitaminas do complexo B, C.', 50, 76, 2),
('Abacate', 'NÃO CONTÉM GLÚTEN.', 150, 64, 1),
('Tomate', 'Rico em vitaminas A, B e C.', 125, 88, 2),
('Acelga', 'NÃO CONTÉM GLÚTEN.', 235, 13, 2),
('Macarrão parafuso', 'Sêmola de trigo enriquecida com ferro e ácido fólico, ovos e corantes naturais', 690, 5, 3),
('Massa para lasanha', 'Uma reunião de família precisa ter comida boa e muita alegria.', 875, 19, 3),
('Refrigerante coca cola lata', 'Sabor original', 350, 189, 4),
('Refrigerante Pepsi 2l', 'NÃO CONTÉM GLÚTEN. NÃO ALCOÓLICO.', 700, 12, 4),
('Cerveja Heineken 600ml', 'Heineken é uma cerveja lager Puro Malte, refrescante e de cor amarelo-dourado', 1200, 500, 4),
('Agua mineral sem gás', 'Smartwater é água adicionado de sais mineirais (cálcio, potássio e magnésio) livre de sódio e com pH neutro.', 130, 478, 4),
('Vassoura', 'Pigmento, matéria sintética e metal.', 2350, 30, 5),
('Saco para lixo', 'Reforçado para garantir mais segurança', 1340, 90, 5),
('Escova dental', 'Faça uma limpeza profunda com a tecnologia inovadora', 1000, 44, 5),
('Balde para lixo 50l', 'Possui tampa e fabricado com material reciclado', 2290, 55, 5),
('Manga', 'Rico em Vitamina A, potássio e vitamina C', 198, 176, 1),
('Uva', 'NÃO CONTÉM GLÚTEN.', 420, 90, 1);

-- Alimentar a tabela clientes com as seguintes informações

insert into clientes (cpf, nome)
values
('803.713.500-42', 'José Augusto Silva'),
('676.428.690-61', 'Antonio Oliveira'),
('631.933.100-34', 'Ana Rodrigues'),
('756.705.050-18', 'Maria da Conceição');

--Alimentar a tabela vendedores com as seguintes informações

insert into vendedores (cpf, nome)
values 
('825.398.410-31', 'Rodrigo Sampaio'),
('232.625.460-03', 'Beatriz Souza Santos'),
('280.071.550-23', 'Carlos Eduardo');

--a) José Algusto comprou os seguintes itens com o vendedor Carlos Eduardo: 1 Mamão, 1 Pepsi de 2l, 6 Heinekens de 600ml, 1 Escova dental e 5 Maçãs.

-- inserindo pedido
insert into pedidos (valor, cliente_cpf, vendedor_cpf)
values
(9650, '803.713.500-42', '280.071.550-23');

-- inserindo itens do pedido
insert into itens_do_pedido (quantidade, pedidos_id, produto_id)
values 
(1, 1, 1),
(1, 1, 10),
(6, 1, 11),
(1, 1, 15),
(5, 1, 2);


-- atualizando o estoque

update produtos set quantidade_em_estoque = quantidade_em_estoque - 1
where id = 1; 

update produtos set quantidade_em_estoque = quantidade_em_estoque - 1
where id = 10;

update produtos set quantidade_em_estoque = quantidade_em_estoque - 6
where id = 11;

update produtos set quantidade_em_estoque = quantidade_em_estoque - 1
where id = 15;

update produtos set quantidade_em_estoque = quantidade_em_estoque - 5
where id = 2;


--b 
insert into pedidos (valor, cliente_cpf, vendedor_cpf)
values
(6460, '631.933.100-34', '232.625.460-03');

-- inserindo itens do pedido
insert into itens_do_pedido (quantidade, pedidos_id, produto_id)
values 
(10, 7, 17),
(3, 7, 18),
(5, 7, 1),
(10, 7, 5),
(2, 7, 6);


-- atualizando o estoque

update produtos set quantidade_em_estoque = quantidade_em_estoque - 10
where id = 17; 

update produtos set quantidade_em_estoque = quantidade_em_estoque - 3
where id = 18;

update produtos set quantidade_em_estoque = quantidade_em_estoque - 5
where id = 1;

update produtos set quantidade_em_estoque = quantidade_em_estoque - 10
where id = 5;

update produtos set quantidade_em_estoque = quantidade_em_estoque - 2
where id = 6;


-- c

insert into pedidos (valor, cliente_cpf, vendedor_cpf)
values
(4120, '756.705.050-18', '232.625.460-03');

insert into itens_do_pedido (quantidade, pedidos_id, produto_id)
values 
(1, 8, 13),
(6, 8, 12),
(10, 8, 17);

update produtos set quantidade_em_estoque = quantidade_em_estoque - 1
where id = 13; 

update produtos set quantidade_em_estoque = quantidade_em_estoque - 6
where id = 12;

update produtos set quantidade_em_estoque = quantidade_em_estoque - 10
where id = 17;

--d 
insert into pedidos (valor, cliente_cpf, vendedor_cpf)
values
(9370, '756.705.050-18', '825.398.410-31');

insert into itens_do_pedido (quantidade, pedidos_id, produto_id)
values 
(1, 8, 16),
(6, 8, 18),
(1, 8, 7),
(3, 8, 1),
(20, 8, 5),
(2, 8, 6);


update produtos set quantidade_em_estoque = quantidade_em_estoque - 1
where id = 16; 

update produtos set quantidade_em_estoque = quantidade_em_estoque - 6
where id = 18;

update produtos set quantidade_em_estoque = quantidade_em_estoque - 1
where id = 7;

update produtos set quantidade_em_estoque = quantidade_em_estoque - 3 
where id = 1;

update produtos set quantidade_em_estoque = quantidade_em_estoque - 20
where id = 5;

-- e

insert into pedidos (valor, cliente_cpf, vendedor_cpf)
values
(8229, '676.428.690-61', '825.398.410-31');

insert into itens_do_pedido (quantidade, pedidos_id, produto_id)
values 
(8, 9, 18),
(1, 9, 8),
(3, 9, 17),
(8, 9, 5),
(2, 9, 11);


update produtos set quantidade_em_estoque = quantidade_em_estoque - 8
where id = 18; 

update produtos set quantidade_em_estoque = quantidade_em_estoque - 1
where id = 8;

update produtos set quantidade_em_estoque = quantidade_em_estoque - 3
where id = 17;

update produtos set quantidade_em_estoque = quantidade_em_estoque - 8 
where id = 5;

update produtos set quantidade_em_estoque = quantidade_em_estoque - 2
where id = 11;

