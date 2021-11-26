create database db_game_online;

use db_game_online;

create table tb_classes (
id bigint auto_increment,
nome varchar (255),
skill varchar (150),
hp int, -- health points
arma varchar (255),
primary key (id)
);

insert into tb_classes (nome, skill, hp, arma) values ("Feiticeiro", "Bola de fogo", 5, "cajado");
insert into tb_classes (nome, skill, hp, arma) values ("Bruxa", "espada de prata", 10, "caldeirão");
insert into tb_classes (nome, skill, hp, arma) values ("Arqueiro", "chuva de flechas", 6, "arco e flecha");
insert into tb_classes (nome, skill, hp, arma) values ("Cavaleiro", "cavalo dragão", 20, "excalibur");
insert into tb_classes (nome, skill, hp, arma) values ("Curandeiro", "ressurreição", 3, "Gaze");

select * from tb_classes;

create table tb_personagens (
id bigint auto_increment,
nome varchar (100),
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Mokona", 100, 300, 100, 5);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Haki", 300, 3000, 800, 4);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Narumi", 80, 1500, 900, 2);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Nagari", 88, 200, 100, 1);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Monoki", 150, 800, 500, 3);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Usagi", 89, 200, 90, 4);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Madoka", 50, 100, 200, 2);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Violet", 88, 500, 300, 3);

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 100 and 200; -- Coloquei esses números apenas para mostrar algum resultado, uma vez que não coloquei números altos

select * from tb_personagens where nome like "%m%"; -- mesma coisa do caso anterior

select * from tb_personagens inner join tb_classes on tb_personagens.classe_id = tb_classes.id;

select * from tb_personagens where classe_id = 2;
