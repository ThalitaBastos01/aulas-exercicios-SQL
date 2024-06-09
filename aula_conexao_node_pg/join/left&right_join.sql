-- left join
-- ele vai trazer todos os registros da tabela ha esquerda e vai tentar juntar cada uma dessas filiais
select e.id as empresaid, f.id as filialid, e.nome, f.pais from empresas e left join filiais f on e.id = f.empresa_id

-- right join 
--ele vai trazer todos os registros da tabela da direita e vai tentar juntar cada uma dessas filiais
select e.id as empresaid, f.id as filialid, e.nome, f.pais from empresas e right join filiais f on e.id = f.empresa_id