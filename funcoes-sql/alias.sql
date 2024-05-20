select count(*) from usuarios where idade >= 18;
-- essa função count é retornado com o nome da coluna correspondente 

select name as nomeCompleto from usuarios where idade >= 18
-- alias é representado pela função 'as' e o argumento vamos se dizer assim, que é passado é o nome que vc deseja colocar para aquela coluna, caso queira separar usamos ' as "nome completo" -- aspas duplas como string

select name as "nome completo" from usuarios where idade >= 18
