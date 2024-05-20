select avg(idade) from usuarios; --46.3620000000000000 -- colocamos o avg no lugar do * e ele sempre vai receber numeros somente 

-- vimos que ele retorna a media de idade do banco q é 46.3620000000000000, como podemos arredondar numeros, usando a função round() 

select round(avg(idade)) from usuarios; -- 46

select round(avg(idade), 2) from usuarios; -- aquie é quantas casas decimais que quero  acrescentar a mais nessa media. 