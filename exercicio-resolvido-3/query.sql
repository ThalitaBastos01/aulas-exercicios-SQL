select compositor, composicao, tempo 
from musicas where tempo between 60*2 AND 60*5 AND compositor != 'Mozart';
