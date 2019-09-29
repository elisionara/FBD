#drop database cadastro; # drop = abandonar/largar um BD
use cadastro;
create database cadastro
default character set utf8 #definindo duas counstrains
default collate utf8_general_ci;
#colocando os atributos como chave estrangeira 
alter table aluno add foreign key (curso) references curso (codigo);
create table pessoas(
id int not null auto_increment, #id = campo novo indicando a chave primária
nome varchar(30) not null,#obrigatório digitar a informação
nascimento date, 
sexo enum('M','F'),
peso decimal(5,2),#5 espaços e dois dígitos depois da vírgula
altura decimal(3,2),
nacionalidade varchar(20) default 'brasil',
primary key(id)
)default charset = utf8;

#drop database meubanco;