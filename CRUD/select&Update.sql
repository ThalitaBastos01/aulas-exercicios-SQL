select * from produtos; -- select

--sintaxe para fazer atualização dentro de um bd 

update produtos
set nome = 'Camisa Preta'
where id = 2; 

-- atualizar o nome e o valor do produto com id 12 

update produtos 
set nome = 'Calça Jeans',
valor = 13450 
where id = 2;