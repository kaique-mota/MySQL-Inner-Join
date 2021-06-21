create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
formato varchar(255) not null,
tamanho varchar(255) not null,
primary key (id)
);

insert into tb_categoria (tipo, formato, tamanho) values ("Doce", "Redondo", "Brotinho");
insert into tb_categoria (tipo, formato, tamanho) values ("Misto", "Retangular", "Grande");
insert into tb_categoria (tipo, formato, tamanho) values ("Salgado", "Redondo", "Brotinho");
insert into tb_categoria (tipo, formato, tamanho) values ("Salgado", "Redondo", "Médio");
insert into tb_categoria (tipo, formato, tamanho) values ("Doce", "Redondo", "Médio");

select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
sabor varchar(255) not null,
preco decimal(8,2) not null,
peso decimal(8,2) not null,
borda varchar(255) not null,
vegetariana varchar(255),
categoria bigint,
primary key (id),
FOREIGN KEY (categoria) REFERENCES tb_categoria (id)
);

insert into tb_pizza (sabor, preco, peso, borda, vegetariana, categoria) values ("Marguerita", 37.60, 1.00, "Recheada", "Sim", 3);
insert into tb_pizza (sabor, preco, peso, borda, vegetariana, categoria) values ("Brigadeiro", 40.90, 1.00, "Normal", "Sim", 1);
insert into tb_pizza (sabor, preco, peso, borda, vegetariana, categoria) values ("Brócolis", 22.50, 1.00, "Recheada", "Sim", 3);
insert into tb_pizza (sabor, preco, peso, borda, vegetariana, categoria) values ("Frango c/ Catupiry", 30.00, 1.00, "Normal", "Não", 3);
insert into tb_pizza (sabor, preco, peso, borda, vegetariana, categoria) values ("Mussarela", 29.90, 1.00, "Recheada", "Sim", 3);
insert into tb_pizza (sabor, preco, peso, borda, vegetariana, categoria) values ("Aliche", 37.60, 1.00, "Recheada", "Não", 3);
insert into tb_pizza (sabor, preco, peso, borda, vegetariana, categoria) values ("Banana c/ Sorvete", 50.00, 2.00, "Normal", "Sim", 1);
insert into tb_pizza (sabor, preco, peso, borda, vegetariana, categoria) values ("Calabresa", 45.60, 1.00, "Recheada", "Não", 3);

select * from tb_pizza;

-- preço maior que 45
select * from tb_pizza where preco > 45;

-- preço entre 29 e 60 reais
select * from tb_pizza where preco between 29 and 60;

-- produtos com a letra C 
select * from tb_pizza where sabor like "%c%";

-- inner join
select tb_pizza.sabor, tb_pizza.preco, tb_pizza.peso, tb_pizza.borda, tb_pizza.vegetariana, tb_pizza.categoria, tb_categoria.tipo, tb_categoria.formato, tb_categoria.tamanho 
from tb_pizza inner join tb_categoria on  tb_pizza.categoria = tb_categoria.id;

-- selecionando todos os produtos da categoria salgados
select * from tb_pizza where categoria = 3;















