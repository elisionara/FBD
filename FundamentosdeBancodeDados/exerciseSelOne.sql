#seleção por nome
select * from cursos;

#seleção por nome com filtro
select * from cursos
where nome = 'PHP';

#seleção por nome com filtro/operador LIKE = parecido/semelhança
select * from cursos
where nome like 'P%';#nenhum ou vários caracteres

#wildcards = operadores % ou %% quando a palavra é encerrada com a letra correspondente
select * from cursos
where nome like 'a%';

select * from cursos
where nome like '%A%';#qualquer coisa antes ou depois

update cursos set nome = 'PáOO' where idcurso = '9';

#Distinguindo = distinct(seleciona todas as informações iguais e retira dqas informações da tabela)
select distinct carga from cursos;