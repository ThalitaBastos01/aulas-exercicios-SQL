select name || ' - ' || email as nomeCompleto from usuarios;
-- para concatenar nome com email podemos ultilizar dessa mesma forma acima, o ' - ' é somente para fazer a separação com um traço

-- ultilizando a função concat() 
select concat(name, ' - ', email) as nomeCompleto from usuarios;
