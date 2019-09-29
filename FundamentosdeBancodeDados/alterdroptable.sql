#adicionando uma nova coluna(campos da tabela) com ALETR TABLE
#cadastrando a profissão das pessoas
#descrevendo a tabela
describe gafanhotos;

#add profissão após um nome
alter table pessoas
add column profissao varchar(10) after nome;

#renomeando a tabela pessoas
alter table pessoas
rename to gafanhotos;

#modificando a estrutura da variável da tabela pessoas
alter table pessoas
modify column profissao varchar(20)not null default '';
 
#renomeando uma variãvel da tabela
alter table pessoas
change column profissao prof varchar(20);

#add uma variável para o primeiro lugar da tabela
alter table pessoas
add column codigo int first;

#apagando a variável profissao
alter table pessoas
drop column profissao;

#criando uma tabela cursos(caso essa tabela seja inexistente) 
create table if not exists cursos(
	nome varchar(30)not null unique,
    descricao text,
    carga int unsigned,
    totalaulas int unsigned,
    ano year default '2016'
    )default charset = utf8; 

#descrevendo uma tabela
describe cursos;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key(idcurso);

drop table cursos;

select * from pessoas;