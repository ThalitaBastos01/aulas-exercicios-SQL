-- ele me retorna o intervalo das datas comparadas em um objeto
select age('2024-05-21 12:00:00');

-- quando é passado somente uma data, ele compara com a data atual
-- e sempre que é passado somente uma comparação de data temos que converter
select age(cast('2023-05-21 12:00:00' as date));
select age(cast('2023-05-21 12:00:00' as timestamp));

select *, age(cast(agendamento as timestamp)) from agendamentos where cast(agendamento as timestamp) > now()
-- seleciono todos os campos, e pego tbm o campo, e pego o campo agendamentos, e pego da tabela agendamentos, e pego somente os agendamentos que irão acontecer.