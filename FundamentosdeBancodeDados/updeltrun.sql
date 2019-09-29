select * from gafanhotos; 

select * from cursos;

#manipulando linhas
insert into cursos values
('1', 'HTML4', 'Curso de HTMLS', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução á Linguagem Java','10','29','2000'),
('6','MySQL','Bancos de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças Ritmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','YouTuber','Gerar polêmica e ganhar inscritos','5','2','2018');

#update = modifica as informações de uma linha, através da primary key
update cursos
set nome = 'HTML5'
where idcurso = '1';

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

update cursos
set nome = 'Java', carga = 40, ano = '2015'
where idcurso = '5';

#limit = limita a quantidade de linhas que podem ser afetadas pelo update
update cursos
set nome = 'Java', carga = 40, ano = '2015'
where idcurso = '5'
limit 1;

#delete = apagando o curso de id determinado
delete from cursos
where idcurso = '8';

#truncate(apaga todos os registros) = remove todas as lnhas da tabela
truncate table cursos;

select * from cursos;
