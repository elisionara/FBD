#banco de dados de uma biblioteca
create database lab2
default character set utf8 
default collate utf8_general_ci;

use lab2;

create table livro(
codigo smallint,titulo varchar(100),cod_isbn bigint,edicao varchar(10),sinopse text,genero varchar(100),
primary key(codigo)
)default charset = utf8;

create table exemplar(
codigo smallint,cod_livro smallint,ano year,cod_editora smallint,estado varchar(20),situacao varchar(20),
primary key(codigo)
)default charset = utf8;

create table autor(
id smallint,nome varchar(100),contato varchar(20),biografia text,
primary key(id)
)default charset = utf8;

create table autoria(
id_autor smallint,cod_livro varchar(7)
)default charset = utf8;

create table editora(
id smallint,nome varchar(100),contato varchar(20),cnpj varchar(19),
primary key(id)
)default charset = utf8;

create table usuario(
id smallint,nome varchar(100),contato varchar(20),cpf varchar(15),login varchar(20),senha smallint,avatar varchar(10),emprestimo varchar(10),
primary key(id)
)default charset = utf8;

create table funcionario(
id smallint,nome varchar(100),contato varchar(20),cpf varchar(15),login varchar(50),senha varchar(6),cargo varchar(20),
primary key(id)
)default charset = utf8;

create table emprestimo(
codigo smallint,id_usuario smallint,id_funcionario smallint,data_in date, data_out date,prazo varchar(15),codigo_exemplar smallint,renovacao date,
primary key(codigo)
)default charset = utf8;

create table devolucao(
cod_emprestimo smallint,id_funcionario smallint,data date,multa float,observacao text
)default charset = utf8;

create table reserva(
cod_reserva smallint,id_usuario smallint,cod_livro smallint,data_reserva date,validade date,
primary key(cod_reserva)
)default charset = utf8;

alter table exemplar add foreign key (cod_livro) references livro (codigo);
alter table exemplar add foreign key (cod_editora) references editora (id);

alter table autoria add foreign key (id_autor) references autor(id);
alter table autoria add foreign key (cod_livro) references livro(codigo);

alter table emprestimo add foreign key (id_usuario) references usuario(id);
alter table emprestimo add foreign key (id_funcionario) references funcionario(id);
alter table emprestimo add foreign key (id_funcionario) references funcionario(id);
alter table emprestimo add foreign key (codigo_exemplar) references exemplar(codigo);

alter table devolucao add foreign key (cod_emp) references emprestimo(codigo);
alter table devolucao add foreign key (id_func) references funcionario(id);

alter table reserva add foreign key (id_usuario) references usuario(id);
alter table reserva add foreign key (cod_livro) references livro(codigo);

select * from livro;
insert into livro values
('102030','senhora','0001','1','Aurelia Camargo, é filha de uma costureira e uma mulher atrente que ficará presa a um dote','romantico'),
('405060','o cortiço','0002','1','João Romão é o dono do cortiço onde se passa a história e as tramas da obra','naturalista'),
('708090','capitães de areia','0003','1','Capitães da areia é o nome de um grupo de meninos de rua que circulam pelas ruas de Salvador – BA','político/social');

select * from exemplar;
insert into exemplar values
('000001','102030','1874','001','conservado','disponível'),
('000002','405060','1890','002','conservado','disponível'),
('000003','708090','1937','003','conservado','disponível');

select * from autor;
insert into autor values
('01','José de Alencar','86 9 99474397','José de Alencar (1829-1877) foi um romancista, dramaturgo, jornalista, advogado e político brasileiro. Foi um dos maiores representantes da corrente literária indianista. O principal romancista brasileiro da fase romântica.'),
('02','Aluísio de Azevedo','86 9 98192567','Aluísio Azevedo (1857-1913) foi um escritor brasileiro. "O Mulato" foi o romance que iniciou o Movimento Naturalista no Brasil. Foi também caricaturista, jornalista e diplomata.'),
('03','Jorge Amado','86 9 99434793','Jorge Amado de Farias nasceu na Fazenda Auricídia, em Ferradas, município de Itabuna, Bahia, no dia 10 de agosto de 1912. Filho de João Amado de Faria e Eulália Leal Amado, fazendeiros de cacau. Em janeiro de 1914 mudou-se com a família para a cidade de Ilhéus, onde passou a infância.');
