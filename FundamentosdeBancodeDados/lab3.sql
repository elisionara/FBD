 #banco de dados de um mercado

create database lab3
default character set utf8 
default collate utf8_general_ci;

use lab3;

create table estoque(
id int(7) not null auto_increment,id_produto int(7) ,quant varchar(100), valor_unitario float,
primary key(id)
)default charset = utf8;

create table produto(
id varchar(7), nome varchar(100), cod_barras varchar(7), descricao text, preco float, 
primary key(id)
)default charset = utf8;

create table carrinho(
id varchar(7), decricao_prod text, subtotal float,
primary key(id)
)default charset = utf8;

create table venda(
nota_fiscal int, datacao varchar(13), valor_total float, cod_cliente varchar(7), 
primary key(nota_fiscal)
)default charset = utf8;

create table cliente(
id varchar(7), nome varchar(100), email varchar(50), senha varchar(8),
primary key(id)
)default charset = utf8;

create table compra(
id varchar(7), produto_preco varchar(50), total float, 
primary key(id)
)default charset = utf8;

create table fornecedor(
id_cidade varchar(7), endereco text,contato varchar(13), cnpj int,
primary key(id_cidade)
)default charset = utf8;

alter table estoque add foreign key (id_produto) references produto (id);
alter table estoque add foreign key (valor_unitario) references produto (preco);