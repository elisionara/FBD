create database elis
default character set utf8 
default collate utf8_general_ci;

use elis;

create table aluno(
matricula varchar(7),
nome varchar(100),
contato varchar(13),
cpf varchar(15),
ira decimal(5,4),
curso varchar(30),#chave estrangeira
primary key(matricula)
)default charset = utf8;

create table turma(
codigo varchar(30),
cod_disc varchar(30),#chave estrangeira da entidade disciplina - codigo
mat_professor varchar(30),#chave estrangeira da entidade professor - matricula
horario varchar(6),
sala int(4),
vagas int(2),
ira decimal(5,4),
situacao varchar(9),
semestre varchar(7),
cod_curso varchar(30),#chave estrangeira de curso - codigo
primary key(codigo)
)default charset = utf8;

create table disciplina(
codigo varchar(30),
nome varchar(50),
ementa varchar(100),
creditos int,
primary key(codigo)
)default charset = utf8;

create table pre_requisito(
cod_disciplina varchar(30),#chave estrangeira de disciplina - codigo
cod_preRequisito varchar(30)
)default charset = utf8;

create table professor(
matricula varchar(7),
nome varchar(100),
area varchar(100),
formacao varchar(50),
cpf varchar(15),
contato varchar(13),
primary key(matricula)
)default charset = utf8;

create table curso(
codigo varchar(30),
nome varchar(100),
carga_horaria int(2),
cod_coord varchar(30),#chave estrangeira da entidade coordenação
primary key(codigo)
)default charset = utf8;

create table historico(
cod_matricula varchar(30),#chave estrangeira da entidade matricula
media float,
frequencia varchar(3),
resultado varchar(9)
)default charset = utf8;

create table coordenacao(
codigo varchar(30),
cod_curso varchar(30),
mat_curso varchar(30),
data_entrada date,
data_saida date,
situacao varchar(9),
primary key(codigo)
)default charset = utf8;

create table matricula(
codigo varchar(30),
cod_turma varchar(30),
mat_aluno varchar(7),
nota_1 decimal(4,2),
nota_2 decimal(4,2),
faltas int,
situacao varchar(9),
primary key(codigo)
)default charset = utf8;

alter table aluno add foreign key (curso) references curso (codigo);

alter table turma add foreign key (cod_disc)references disciplina (codigo);
alter table turma add foreign key (mat_professor) references professor(matricula);
alter table turma add foreign key (cod_curso) references curso (codigo);

alter table pre_requisito add foreign key (cod_disciplina) references disciplina(codigo);

alter table curso add foreign key (cod_coord) references coordenacao (codigo);

alter table historico add foreign key(cod_matricula) references matricula (codigo);