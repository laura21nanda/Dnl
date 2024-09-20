create database gervenda_1e;

create table produtos(
produto_id int auto_increment primary key,
nome varchar(50),
preco decimal(10),
estoque int
);

drop table produtos;

create table produtos(
produto_id int auto_increment primary key,
nome varchar(50),
preco decimal(10,2),
estoque int
);

create table vendas(
venda_id int auto_increment primary key,
produto_id int,
quantidade int,
data_venda date,
foreign key(produto_id)references produtos(produto_id)
);

insert into produtos(nome, preco, estoque)
values("Notebook Positivo",4000.00,35),
		("Notebook Lenovo",5000.00,35),
        ("Notebook Samsung",6000.00,35),
        ("Notebook LG",4000.00,35),
        ("Notebook Acer",5000.00,35);


insert into vendas(produto_id, quantidade, data_venda)
values(2,4,"2024-09-20"),(3,6,"2024-09-20"),(4,2,"2024-09-20");

update produtos
set preco = 6500.00
where produto_id = 1;

update vendas
set quantidade = 7
where venda_id = 1;


delete from produtos
where produto_id=5;





select nome, estoque from produtos;

select * from vendas;
select quantidade, data_venda from vendas;

select * from vendas
where venda_id = 2;








