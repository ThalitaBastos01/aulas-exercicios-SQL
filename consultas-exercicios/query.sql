--Selecione apenas os compositores e o identificador de todos os registros da tabela musicas.
SELECT compositor, id FROM musicas;

--Selecione as composições e o tempo de cada composição, de todos os registros da tabela musicas, onde o tempo seja maior que 4 minutos

select composicao, tempo from musicas where tempo > 60*4;

--Selecione os compositores e suas composições que tenham identificadores entre 47 e 123.

select compositor, composicao from musicas where id between 47 and 123;

--Selecione todos os registros com todos os campos da tabela musicas, onde o compositor não seja nulo, o tempo seja menor que 5 minutos e o nome do compositor seja diferente de Bach.

select * from musicas where compositor is not null
AND tempo < 60*5 AND compositor != 'Bach';

--Selecione as composições e o tempo de cada composição, de todos os registros da tabela musicas, onde o compositor seja Mozart ou Bach.

