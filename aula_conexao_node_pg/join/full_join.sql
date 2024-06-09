-- full join
-- ele vai juntar todos os registros, independente de ter relação com a tabela da direita ou esquerda
select e.id as empresaid, f.id as filialid, e.nome, f.pais 
from empresas e 
full join filiais f on e.id = f.empresa_id;