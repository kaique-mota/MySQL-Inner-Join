create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
validade date,
origem varchar(255) not null,
primary key (id)
);

insert into tb_categoria (tipo, validade, origem) values ("Fruta", "2021-07-02", "Ibiúna - SP");
insert into tb_categoria (tipo, validade, origem) values ("Fruta", "2021-06-29", "Atibaia - SP");
insert into tb_categoria (tipo, validade, origem) values ("Fruta", "2021-07-15", "São Roque - SP");
insert into tb_categoria (tipo, validade, origem) values ("Fruta", "2021-07-07", "Ibiúna - SP");
insert into tb_categoria (tipo, validade, origem) values ("Fruta", "2021-08-22", "Ibiúna - SP");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
fruta varchar(255) not null,
preco decimal(8,2) not null,
peso bigint not null,
Qtdestoque bigint not null,
producao varchar(255) not null,
categoria bigint,
primary key (id),
FOREIGN KEY (categoria) REFERENCES tb_categoria (id)
);

insert into tb_produto (fruta, preco, peso, Qtdestoque, producao, categoria) values ("Manga", 9.00, 50, 10, "Orgânica", 1);
insert into tb_produto (fruta, preco, peso, Qtdestoque, producao, categoria) values ("Melão", 5.00, 100, 35, "Orgânica", 2);
insert into tb_produto (fruta, preco, peso, Qtdestoque, producao, categoria) values ("Morango", 8.00, 400, 45, "Orgânica", 3);
insert into tb_produto (fruta, preco, peso, Qtdestoque, producao, categoria) values ("Melância", 12.00, 21, 67, "Orgânica", 4);
insert into tb_produto (fruta, preco, peso, Qtdestoque, producao, categoria) values ("Mamão", 6.20, 45, 13, "Orgânica", 4);
insert into tb_produto (fruta, preco, peso, Qtdestoque, producao, categoria) values ("Maracujá", 9.70, 50, 5, "Orgânica", 5);
insert into tb_produto (fruta, preco, peso, Qtdestoque, producao, categoria) values ("Maçã", 10.00, 74, 2, "Orgânica", 1);
insert into tb_produto (fruta, preco, peso, Qtdestoque, producao, categoria) values ("Mexerica", 3.43, 55, 29, "Orgânica", 3);

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where fruta like "%c%";

select * from tb_produto inner join tb_categoria on  tb_produto.categoria = tb_categoria.id;

select * from tb_produto where NOT preco >= 8;













