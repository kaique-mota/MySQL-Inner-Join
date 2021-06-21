create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
grupo varchar(255) not null,
nivel bigint not null,
tipo varchar(255) not null,
primary key (id)
);

insert into tb_classe (grupo, nivel, tipo) values ("Elfo", 1, "gelo");
insert into tb_classe (grupo, nivel, tipo) values ("Fada", 2, "fogo");
insert into tb_classe (grupo, nivel, tipo) values ("Fada", 3, "terra");
insert into tb_classe (grupo, nivel, tipo) values ("Mago", 4, "ar");
insert into tb_classe (grupo, nivel, tipo) values ("Elfo", 5, "água");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
ataque decimal(8,2) not null,
defesa decimal(8,2) not null,
dano decimal(8,2) not null,
habilidade varchar(255),
classe bigint,
primary key (id),
FOREIGN KEY (classe) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, ataque, defesa, dano, habilidade, classe) values ("Bloom", 3000, 4000, 1000, "corrida", 1);
insert into tb_personagem (nome, ataque, defesa, dano, habilidade, classe) values ("Stella", 5000, 1000, 1000, "voar", 2);
insert into tb_personagem (nome, ataque, defesa, dano, habilidade, classe) values ("Musa", 2500, 9000, 3000, "encanto", 3);
insert into tb_personagem (nome, ataque, defesa, dano, habilidade, classe) values ("Flora", 6250, 2333, 1000, "corrida", 4);
insert into tb_personagem (nome, ataque, defesa, dano, habilidade, classe) values ("Tecna", 4535, 4070, 1675, "voar", 5);
insert into tb_personagem (nome, ataque, defesa, dano, habilidade, classe) values ("Sheila", 1100, 4000, 1000, "encanto", 1);
insert into tb_personagem (nome, ataque, defesa, dano, habilidade, classe) values ("Versa", 1545, 4000, 8945, "força", 3);
insert into tb_personagem (nome, ataque, defesa, dano, habilidade, classe) values ("Mundi", 8999, 4123, 1050, "força", 2);

select * from tb_personagem;

-- poder de ataque maior que 2000
select * from tb_personagem where ataque > 2000;

-- poder de defesa entre 1000 e 2000
select * from tb_personagem where defesa between 1000 and 2000;

-- personagens com C no nome
select * from tb_personagem where nome like "%c%";

-- inner join
select tb_personagem.nome, tb_personagem.ataque, tb_personagem.defesa, tb_personagem.dano, tb_personagem.habilidade, tb_personagem.classe, tb_classe.grupo, tb_classe.nivel, tb_classe.tipo 
from tb_personagem inner join tb_classe on  tb_personagem.classe = tb_classe.id;

-- personagens do tipo fada
select * from tb_personagem where classe = 3;