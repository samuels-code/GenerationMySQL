create database db_funcionarios;

use db_funcionarios;

create table funcionarios1 (
id bigint auto_increment,
nome varchar (255) not null,
cargo varchar (255) not null,
salario decimal (8,2) not null,
turno varchar (255),
primary key (id)
);

insert into funcionarios1 (nome, cargo, salario, turno) values ("Ana", "Advogada", 5000.00, "tarde");
insert into funcionarios1 (nome, cargo, salario, turno) values ("Carlos", "porteiro", 2000.00, "noite");
insert into funcionarios1 (nome, cargo, salario, turno) values ("Gabriela", "programadora júnior", 5000.00, "tarde");
insert into funcionarios1 (nome, cargo, salario, turno) values ("Susana", "Auxiliar Administrativa" , 3000.00, "manhã");
insert into funcionarios1 (nome, cargo, salario, turno) values ("Antonio", "Segurança", 5000.00, "tarde");

select * from funcionarios1;

delete from funcionarios1 where id = 5;

insert into funcionarios1 (nome, cargo, salario, turno) values ("Antonio", "Segurança", 2000.00, "tarde");
insert into funcionarios1 (nome, cargo, salario, turno) values ("Lucia", "Cozinheira", 1500.00, "manhã");
insert into funcionarios1 (nome, cargo, salario, turno) values ("Valter", "Serviços gerais", 1500.00, "manhã");

select nome from funcionarios1 where salario >= 2000.00;
select nome from funcionarios1 where salario < 2000.00;

update funcionarios1 set salario = 1800.00 where id = 2;