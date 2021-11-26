create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
descricao varchar (255) not null,
disponibilidade boolean not null,
primary key (id)
);

insert into tb_categoria(descricao, disponibilidade) values ("Remédio", true);
insert into tb_categoria(descricao, disponibilidade) values ("Cosmético", true);
insert into tb_categoria(descricao, disponibilidade) values ("Comida", true);
insert into tb_categoria(descricao, disponibilidade) values ("Higiene", true);
insert into tb_categoria(descricao, disponibilidade) values ("Perfume", true);

select * from tb_categoria;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255),
preco decimal(6,2) not null,
qtproduto int not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos(nome, preco, qtproduto, categoria_id) values ("Colírio", 15.45, 84, 1);
insert into tb_produtos(nome, preco, qtproduto, categoria_id) values ("Suplemento vitaminico", 70.55, 50, 1);
insert into tb_produtos(nome, preco, qtproduto, categoria_id) values ("Fraldas", 45.50, 200, 4);
insert into tb_produtos(nome, preco, qtproduto, categoria_id) values ("Base para pele", 32.00, 15, 2);
insert into tb_produtos(nome, preco, qtproduto, categoria_id) values ("Chocolate diet", 7.50, 25, 3);
insert into tb_produtos(nome, preco, qtproduto, categoria_id) values ("Hidratante labial", 25.10, 120, 2);
insert into tb_produtos(nome, preco, qtproduto, categoria_id) values ("La nuit", 200.55, 17, 5);
insert into tb_produtos(nome, preco, qtproduto, categoria_id) values ("Dipirona", 10.50, 184, 1);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome like "%b%";

select nome, preco, qtproduto, tb_categoria.descricao from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos where categoria_id = 2;
