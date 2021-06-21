create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
marca varchar(255) not null,
fabricante varchar(255) not null,
primary key (id)
);

insert into tb_categoria (tipo, marca, fabricante) values ("cosmetico", "Vichy", "Vichy Laboratories");
insert into tb_categoria (tipo, marca, fabricante) values ("cosmetico", "Avène", "Avène Laboratories");
insert into tb_categoria (tipo, marca, fabricante) values ("cosmetico", "La Roche Posay", "L'Oreal Paris");
insert into tb_categoria (tipo, marca, fabricante) values ("medicamento", "Bayer", "Bayer Laboratories");
insert into tb_categoria (tipo, marca, fabricante) values ("medicamento", "Eurofarma", "Eurofarma Laboratories");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(8,2) not null,
validade date,
embalagem varchar(255) not null,
peso bigint not null,
categoria bigint,
primary key (id),
FOREIGN KEY (categoria) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, preco, validade, embalagem, peso, categoria) values ("Mineral 89", 200.00, "2023-01-20", "pump", 1.00, 1);
insert into tb_produto (nome, preco, validade, embalagem, peso, categoria) values ("Agua Termal", 80.90, "2021-12-05", "aerosol", 1.00, 2);
insert into tb_produto (nome, preco, validade, embalagem, peso, categoria) values ("Anthelios fps 50", 120.00, "2022-07-13", "pump", 1.00, 3);
insert into tb_produto (nome, preco, validade, embalagem, peso, categoria) values ("Effaclar Líquido", 35.60, "2027-08-25", "pump", 1.00, 3);
insert into tb_produto (nome, preco, validade, embalagem, peso, categoria) values ("Novalgina", 10.00, "2023-04-29", "cartela", 1.00, 4);
insert into tb_produto (nome, preco, validade, embalagem, peso, categoria) values ("Roacutan", 143.90, "2030-03-18", "cartela", 1.00, 5);
insert into tb_produto (nome, preco, validade, embalagem, peso, categoria) values ("Rivotril", 55.50, "2022-10-07", "cartela", 1.00, 4);
insert into tb_produto (nome, preco, validade, embalagem, peso, categoria) values ("Ritalina", 32.85, "2021-11-01", "cartela", 1.00, 5);

select * from tb_produto;

-- produtos com preço maior que 50 reais
select * from tb_produto where preco > 50;

-- produtos com preço entre 3 e 60 reais
select * from tb_produto where preco between 3 and 60;

-- produtos com a letra b 
select * from tb_produto where nome like "%b%";

-- inner join
select tb_produto.nome, tb_produto.preco, tb_produto.validade, tb_produto.embalagem, tb_produto.peso, tb_produto.categoria, tb_categoria.tipo, tb_categoria.marca, tb_categoria.fabricante
from tb_produto inner join tb_categoria on  tb_produto.categoria = tb_categoria.id;

-- selecionando todos os produtos da fabricante L'Oreal
select * from tb_produto where categoria = 3;








