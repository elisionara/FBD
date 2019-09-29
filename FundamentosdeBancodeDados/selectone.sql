select * from gafanhotos;
select * from cursos;

select * from cursos
order by nome;

select * from cursos
order by nome desc;#desc:ordem decrescente

#filtrando as colunas
select nome, carga, ano from cursos
order by nome;

#selecionando apenas linhas
select * from cursos
where ano = '2016'
order by nome;

#selecionando linhas e colunas - result set = resultado de uma consulta
#query = question = pergunta = solicitação de busca
select  nome, carga from cursos
where ano = '2016'
order by nome;

#utilizando operadores relacionais
select  nome, descricao from cursos
where ano <= '2016'
order by nome;