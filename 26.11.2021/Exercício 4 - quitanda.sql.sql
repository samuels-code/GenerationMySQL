create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria (
id bigint auto_increment,
descricao varchar(255) not null,
disponibilidade boolean not null,
primary key (id)
);

insert into tb_categoria(descricao, disponibilidade) values ("Verdura", true);
insert into tb_categoria(descricao, disponibilidade) values ("Legumes", true);
insert into tb_categoria(descricao, disponibilidade) values ("Fruta", true);
insert into tb_categoria(descricao, disponibilidade) values ("Chá", true);
insert into tb_categoria(descricao, disponibilidade) values ("Temperos", true);

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

insert into tb_produtos(nome, preco, qtproduto, categoria_id) values ("Alface", 1.50, 90, 1);
insert into tb_produtos(nome, preco, qtproduto, categoria_id) values ("Laranja", 8.50, 9000, 3);
insert into tb_produtos(nome, preco, qtproduto, categoria_id) values ("Ervilha", 5.00, 850, 2);
insert into tb_produtos(nome, preco, qtproduto, categoria_id) values ("Couve", 5.00, 97, 1);
insert into tb_produtos(nome, preco, qtproduto, categoria_id) values ("hortela", 2.80, 51, 4);
insert into tb_produtos(nome, preco, qtproduto, categoria_id) values ("salsa", 1.40, 45, 1);
insert into tb_produtos(nome, preco, qtproduto, categoria_id) values ("Cominho", 3.50, 400, 5);
insert into tb_produtos(nome, preco, qtproduto, categoria_id) values ("Morango", 10.50, 10000, 3);

select * from tb_produtos;

select * from tb_produtos where preco > 5.00; -- diminui o valor pedido no exercício apenas para garantir que houvesse algum retorno  

select * from tb_produtos where preco between 3.00 and 60.00;

select * from tb_produtos where nome like "%c%"; 

select nome, preco, qtproduto, tb_categoria.descricao from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select * from tb_produtos where categoria_id = 2;