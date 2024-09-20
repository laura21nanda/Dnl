create database empresa3;

create table departamento(
dcodigo int auto_increment primary key,
nome varchar(50)
);

create table funcionario(
funcodico int auto_increment primary key,
dcodigo int,
nome varchar(50),
nascimento date,
salario decimal,
foreign key(dcodigo)references departamento(dcodigo)
);


create table dependente(
depcodigo int auto_increment primary key,
funcodico int,
nome varchar (50),
foreign key(funcodico)references funcionario(funcodico)
);


insert into departamento(nome)
values("RH"),
	("Ti"),
    ("marketin"),
    ("comercial"),
    ("financiamento"),
    ("compras"),
    ("operacoes"),
    ("producao"),
    ("logistica"),
    ("adm");
    
insert into funcionario(dcodigo, nome, nascimento, salario)
values(1,"Laura","2007-12-21", 5000),
	(2,"Fernanda","2000-8-9", 2000.00),
    (3,"Lucas","2003-09-15", 3000.00),
    (4,"Lucimar","1977-08-06",4000.00),
    (5,"Fabio","1977-02-02",7000.00),
    (6,"Luiza","2008-01-26", 5000.00),
    (7,"Lorena","2007-12-21", 5000.00),
    (8,"Sophia","2008-06-23",6000.00),
    (9,"Eduarda","2007-04-09",4000.00),
    (10,"Beatrice","2007-03-23",8000.00);
    
    insert into dependente(funcodico, nome)
values(1,"jose"),
	(2,"Daniel"),
    (3,"maria"),
    (4,"steyce"),
    (5,"Francisco"),
    (6,"Jennifer"),
    (7,"Bianca"),
    (8,"Fabiano"),
    (9,"Bruana"),
    (10,"Gabrielli");

