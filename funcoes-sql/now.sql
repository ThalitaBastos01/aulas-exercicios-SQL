-- utilizamos a função now  no postgreSQL para obter data e hora atuais.

select now();

-- agendamentos que ainda não aconteceram

select * from agendamentos where cast(agendamento as date) < now();

--quando quero pegar algum agendamento futuro
select * from agendamentos where cast(agendamento as timestamp) < now();

--tras somente a data
select cast(agendamento as date) from agendamentos;

--me tras somente a hora
select cast(agendamento as time) from agendamentos;

--tras a data e a hora 
select cast(agendamento as timestamp) from agendamentos;

