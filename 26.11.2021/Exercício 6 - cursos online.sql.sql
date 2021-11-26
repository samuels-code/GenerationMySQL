create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
area varchar (255),
qtAlunos int,
primary key (id)
);

insert into tb_categoria (area, qtAlunos) values ("Tecnologia da informação", 35);
insert into tb_categoria (area, qtAlunos) values ("Jurídica", 40);
insert into tb_categoria (area, qtAlunos) values ("Comunicação", 15);
insert into tb_categoria (area, qtAlunos) values ("Vestibular", 28);
insert into tb_categoria (area, qtAlunos) values ("Marketing", 50);

select * from tb_categoria;

create table tb_cursos (
id bigint auto_increment,
nome varchar (255),
instrutor varchar (255),
valor decimal (6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_cursos (nome, instrutor, valor, categoria_id) values ("Introdução à lógica de Programação", "Jeff", 95.00, 1);
insert into tb_cursos (nome, instrutor, valor, categoria_id) values ("Conheça a LGPD", "Ana", 100.00, 2);
insert into tb_cursos (nome, instrutor, valor, categoria_id) values ("Técnicas para se comunicar melhor", "André", 40.00, 3);
insert into tb_cursos (nome, instrutor, valor, categoria_id) values ("Cursinho Enem", "Antonio", 60.00, 4);
insert into tb_cursos (nome, instrutor, valor, categoria_id) values ("Marketing digital", "Fernando", 45.00, 5);
insert into tb_cursos (nome, instrutor, valor, categoria_id) values ("Introdução à linguagem Java", "Aimée", 85.00, 1);
insert into tb_cursos (nome, instrutor, valor, categoria_id) values ("Intensivo FUVEST", "Luana", 65.00, 4);
insert into tb_cursos (nome, instrutor, valor, categoria_id) values ("Introdução à Banco de Dados", "Rafael", 33, 1);

select * from tb_cursos;

select * from tb_cursos where valor > 50.00;

select * from tb_cursos where valor between 3.00 and 60.00; 

select * from tb_cursos where nome like "%j%";

select * from tb_cursos inner join tb_categoria on tb_categoria.id = tb_cursos.categoria_id;

select * from tb_cursos where categoria_id = 1;