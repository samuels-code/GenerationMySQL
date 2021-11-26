create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria (
id bigint auto_increment,
descricao varchar(255) not null,
disponibilidade boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, disponibilidade) values ("Revestimento", true);
insert into tb_categoria (descricao, disponibilidade) values ("Hidráulicos", true);
insert into tb_categoria (descricao, disponibilidade) values ("Elétricos", true);
insert into tb_categoria (descricao, disponibilidade) values ("Fixadores", true);
insert into tb_categoria (descricao, disponibilidade) values ("Moveis", true);

select * from tb_categoria;
delete from tb_categoria where id = 6;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255),
preco decimal(6,2) not null,
qtproduto int not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtproduto, categoria_id) values ("Pia", 258.00, 18, 5);
insert into tb_produtos (nome, preco, qtproduto, categoria_id) values ("Piso de Madeira", 500.00, 8000, 1);
insert into tb_produtos (nome, preco, qtproduto, categoria_id) values ("Argamassa", 80.00, 74, 1);
insert into tb_produtos (nome, preco, qtproduto, categoria_id) values ("Cano pvc", 15.00, 600, 2);
insert into tb_produtos (nome, preco, qtproduto, categoria_id) values ("Disjuntor", 45.54, 100, 3);
insert into tb_produtos (nome, preco, qtproduto, categoria_id) values ("Suporte para televisão", 600.00, 8, 4);
insert into tb_produtos (nome, preco, qtproduto, categoria_id) values ("Interruptor", 17.70, 630, 3);
insert into tb_produtos (nome, preco, qtproduto, categoria_id) values ("Tomada", 4.80, 180, 3);

select * from tb_produtos;

select * from tb_produtos where preco > 50.00;

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome like "%c%";

select nome, preco, qtproduto, tb_categoria.descricao from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos where categoria_id = 3;