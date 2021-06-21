create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
curso varchar(255) not null,
semestres bigint not null,
modalidade varchar(255) not null,
primary key (id)
);

insert into tb_categoria (curso, semestres, modalidade) values ("Direito", 12, "EAD");
insert into tb_categoria (curso, semestres, modalidade) values ("Engenharia Elétrica", 10, "Semi-Presencial");
insert into tb_categoria (curso, semestres, modalidade) values ("Ciência da Computação", 8, "Presencial");
insert into tb_categoria (curso, semestres, modalidade) values ("Medicina", 12, "EAD");
insert into tb_categoria (curso, semestres, modalidade) values ("Psicologia", 9, "Presencial");

select * from tb_categoria;

create table tb_curso(
id bigint auto_increment,
aluno varchar(255) not null,
area varchar(255) not null,
mensalidade decimal(8,2) not null,
instituicao varchar(255) not null,
grau varchar(255) not null,
categoria bigint,
primary key (id),
foreign key (categoria) references tb_categoria (id)
);


insert into tb_curso (aluno, area, mensalidade, instituicao, grau, categoria) values ("Sofia", "Humanas", 3000.00, "UNIP", "Superior", 1);
insert into tb_curso (aluno, area, mensalidade, instituicao, grau, categoria) values ("João", "Exatas", 2200.00, "UNIVALI", "Superior", 3);
insert into tb_curso (aluno, area, mensalidade, instituicao, grau, categoria) values ("Fábio", "Exatas", 3700.00, "UNIP", "Superior", 2);
insert into tb_curso (aluno, area, mensalidade, instituicao, grau, categoria) values ("Luana", "Exatas", 2970.00, "UNIP", "Superior", 2);
insert into tb_curso (aluno, area, mensalidade, instituicao, grau, categoria) values ("Carmem", "Humanas", 1500.00, "UNIP", "Superior", 5);
insert into tb_curso (aluno, area, mensalidade, instituicao, grau, categoria) values ("Sara", "Humanas", 1550.00, "São Judas", "Superior", 5);
insert into tb_curso (aluno, area, mensalidade, instituicao, grau, categoria) values ("Maria Clara", "Biológicas", 9000.00, "FMU", "Superior", 4);
insert into tb_curso (aluno, area, mensalidade, instituicao, grau, categoria) values ("Ana Vitória", "Biológicas", 8000.00, "Mackenzie", "Superior", 4);

select * from tb_curso;

select * from tb_curso where mensalidade > 50;

select * from tb_curso where mensalidade between 3 and 60;

select * from tb_categoria where curso like "%j%";

-- inner join
select * from tb_categoria inner join tb_curso on  tb_curso.categoria = tb_categoria.id;

select * from tb_curso where categoria = 5;













select * from tb_ categoria;