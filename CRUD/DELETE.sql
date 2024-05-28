--sintaxe para deletar dentro de um bd 

update 
from produtos
where id = 2;
-- deletar o nome e o valor do produto com id 12 

delete 
from produtos 
where descricao is null; --  condição 