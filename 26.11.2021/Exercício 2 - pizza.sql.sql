create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment,
descricao varchar(255) not null,
disponibilidade boolean not null,
primary key (id)
);

insert into tb_categoria(descricao, disponibilidade) values ("Queijo", true);
insert into tb_categoria(descricao, disponibilidade) values ("Carne Suína", true);
insert into tb_categoria(descricao, disponibilidade) values ("Vegetariana", true);
insert into tb_categoria(descricao, disponibilidade) values ("Carne bovina", true);
insert into tb_categoria(descricao, disponibilidade) values ("Doce", true);

select * from tb_categoria;

create table tb_pizza (
id bigint auto_increment,
nomeSabor varchar (255),
preco decimal (6,2),
tPreparo time,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza (nomeSabor, preco, tPreparo, categoria_id) values ("Calabresa", 40.40, 00-25-00, 2);
insert into tb_pizza (nomeSabor, preco, tPreparo, categoria_id) values ("Margherita", 32.25, 00-30-00, 1);
insert into tb_pizza (nomeSabor, preco, tPreparo, categoria_id) values ("Brigadeiro", 35.40, 00-20-00, 5);
Insert into tb_pizza (nomeSabor, preco, tPreparo, categoria_id) values ("Quatro Queijos", 47.60, 00-45-00, 1);
Insert into tb_pizza (nomeSabor, preco, tPreparo, categoria_id) values ("Romeu e Julieta", 35.00, 00- 21-00, 5);
Insert into tb_pizza (nomeSabor, preco, tPreparo, categoria_id) values ("Rúcula com tomate seco", 38.80, 00-25-00, 3);
Insert into tb_pizza (nomeSabor, preco, tPreparo, categoria_id) values ("Filé e cogumelos", 47.60, 00-45-00, 4);
Insert into tb_pizza (nomeSabor, preco, tPreparo, categoria_id) values ("Shitakerita", 45.50, 00-32-00, 3);

select * from tb_pizza;

select * from tb_pizza where preco >= 45.00;

select * from tb_pizza where preco < 45.00;

select * from tb_pizza where preco between 29.00 and 60.00;

select * from tb_pizza where nomeSabor like "%c%";

select nomeSabor, preco, tPreparo, tb_categoria.descricao as descricao_da_categoria, tb_categoria.disponibilidade as disponibilidade_da_categoria
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;