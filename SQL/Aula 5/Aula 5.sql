create database aula5;

use aula5;

create table produtos(
codPro	int		not null,
produto varchar(35)		not null,
preco	decimal(9,2)	not null,
qntdade	int		null,
dtVali	date	not null,
primary key(codPro)
);

insert into produtos values (1, 'Camiseta', 29.90, 10, '2024-12-31');

insert into produtos values (2, 'Caneca Térmica', 45.00, 5, '2025-02-28');

insert into produtos values (3, 'Caderno Inteligente', 37.50, 20, '2024-10-31');

insert into produtos values (4, 'Mouse Gamer', 89.99, 8, '2024-09-15');

insert into produtos values (5, 'Headset Sem Fio', 149.00, 3, '2024-08-01');

select * from produtos;

create table produtos2(
codPro	int		identity,
produto varchar(35)		not null,
preco	decimal(9,2)	not null,
primary key(codPro)
);

insert into produtos2(produto, preco)
select produto, preco
from produtos;

select * from produtos2;

create table produtos3(
codPro	int		not null,
produto varchar(35)		not null,
preco	decimal(9,2)	not null,
qntdade	int		null,
dtVali	date	not null,
primary key(codPro)
);

insert into produtos3 
select * from produtos;

create table produtos4(
codPro	int		not null,
produto varchar(35)		not null,
preco	decimal(9,2)	not null,
qntdade	int		null,
dtVali	date	not null,
primary key(codPro)
);

insert into produtos4 
select * from produtos 
where produtos.preco < 100;

select * from produtos4;

update produtos
set preco = preco / 2
where produtos.preco < 100;

select * from produtos;

update produtos
set preco = 0
where produtos.dtVali < '15/03/2024';


select * from produtos;

update produtos
set produto = 'Nescau';

select * from produtos;

drop table produtos;


update produtos
set produto = '' , preco = NULL, qntdade = NULL, dtVali = NULL;

insert into produtos(codPro, produto, preco, qntdade, dtVali)
select codPro, produto, preco, qntdade, dtVali
from produtos3;

update produtos
set preco = 100
where produtos.codPro >= 2 and  produtos.codPro <= 4;


select * from produtos;


update produtos
set dtVali = '31/12/2021'
where produtos.preco > 0;

drop table produtos2, produtos3, produtos4;

alter table produtos
add marca varchar(35) not null,
	marca2 varchar(35) not null;

alter column marca drop marca;

drop database aula5;
