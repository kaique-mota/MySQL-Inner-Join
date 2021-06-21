create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
nome varchar(255) not null,
marca varchar(255) not null,
distribuidor varchar(255) not null,
primary key (id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(8,2) not null,
peso bigint not null,
Qtdestoque bigint not null,
custo decimal(8,2) not null,
categoria bigint,
primary key (id),
FOREIGN KEY (categoria) REFERENCES tb_categoria (id)
);

insert into tb_categoria (nome, marca, distribuidor) values ("Ferragem", "Gerdau", "Construjá");
insert into tb_categoria (nome, marca, distribuidor) values ("Iluminação", "Ourolux", "Construjá");
insert into tb_categoria (nome, marca, distribuidor) values ("Ferramentas", "Bosh", "Construjá");
insert into tb_categoria (nome, marca, distribuidor) values ("Elétrica", "Steck", "Construjá");
insert into tb_categoria (nome, marca, distribuidor) values ("Hidráulica", "Tigre", "Construjá");

select * from tb_categoria;

insert into tb_produto (nome, preco, peso, Qtdestoque, custo, categoria) values ("Ferro 3/8", 50.00, 30, 50, 25.00, 1);
insert into tb_produto (nome, preco, peso, Qtdestoque, custo, categoria) values ("Lâmpada Led bivolt", 29.00, 05, 67, 10.00, 2);
insert into tb_produto (nome, preco, peso, Qtdestoque, custo, categoria) values ("Chave de fenda", 45.90, 01, 100, 19.00, 3);
insert into tb_produto (nome, preco, peso, Qtdestoque, custo, categoria) values ("Disjuntor tripolar", 190.00, 04, 12, 78.90, 4);
insert into tb_produto (nome, preco, peso, Qtdestoque, custo, categoria) values ("Ferro 5/16", 97.50, 30, 66, 36.90, 1);
insert into tb_produto (nome, preco, peso, Qtdestoque, custo, categoria) values ("Cano 3/4", 47.00, 3, 90, 25.00, 5);
insert into tb_produto (nome, preco, peso, Qtdestoque, custo, categoria) values ("Cano 100 mm", 290.00, 32, 50, 115.00, 5);
insert into tb_produto (nome, preco, peso, Qtdestoque, custo, categoria) values ("Cotovelo 100 mm", 22.90, 30, 77, 7.86, 5);

select * from tb_produto;

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%c%";

-- inner join
select * from tb_produto inner join tb_categoria on  tb_produto.categoria = tb_categoria.id;

select * from tb_produto where categoria = 5;


