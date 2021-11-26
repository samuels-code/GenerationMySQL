create database db_ecommerce;

use db_ecommerce;

create table produtos (
id bigint auto_increment,
nomeProduto varchar (255) not null,
quantidade int,
preco decimal (8,2) not null,
tamanho char, 
primary key (id)
);

insert into produtos (nome, marca, preco, ativo) values ("Televisão", "Samsung", 6700.00, true);
insert into produtos (nome, marca, preco, ativo) values ("Celular", "Apple", 2500.00, true);
insert into produtos (nome, marca, preco, ativo) values ("Notebook", "Dell", 7000.00, true);
insert into produtos (nome, marca, preco, ativo) values ("Headseat", "JBL", 169.00, true);
insert into produtos (nome, marca, preco, ativo) values ("Monitor", "Samsung", 2000.00, true);
insert into produtos (nome, marca, preco, ativo) values ("Mouse", "Razer", 200.00, true);
insert into produtos (nome, marca, preco, ativo) values ("Cadeira Gamer", "DX Racer", 2624.00, true);
insert into produtos (nome, marca, preco, ativo) values ("Teclado Gamer", "Dell", 1094.00, true);

select * from produtos;

select nomeProduto from produtos where preco >= 500.00;
select nomeProduto from produtos where preco <= 500.00;

update produtos set preco = 540.60 where id = 7;