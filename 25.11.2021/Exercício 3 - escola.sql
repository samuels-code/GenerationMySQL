create database db_escola;

use db_escola;

create table registro(
matricula bigint auto_increment,
nome varchar (255) not null,
endereco varchar (255),
idade int,
nota decimal (2,1),
primary key (matricula)
);

insert into registro (nome, endereco, idade, nota) values ("Debora", "Rua Magnolia 322", 15, 8.5);
insert into registro (nome, endereco, idade, nota) values ("Aline", "Avenida Aldo 7456", 16, 5.5);
insert into registro (nome, endereco, idade, nota) values ("Gabriel", "Rua Inocência 876", 14, 3.5);
insert into registro (nome, endereco, idade, nota) values ("Felipe", "Rua Pouso Minas 567", 13, 7.2);
insert into registro (nome, endereco, idade, nota) values ("Viviane", "Rua Lindonia 74", 17, 9.0);
insert into registro (nome, endereco, idade, nota) values ("Augusto", "Rua Armado Rubens 123", 15, 6.4);
insert into registro (nome, endereco, idade, nota) values ("Fábio", "Avenida Babacolandia 765", 16, 2.5);
insert into registro (nome, endereco, idade, nota) values ("Amanda", "Rua Inglesa 354", 15, 7.5);

select * from registro;

select nome from registro where nota >= 7;
select nome from registro where nota < 7;

update registro set nota = 7 where matricula = 5;
