create database aula;
use aula;

create table clientes(
id			int			not null,
cliente		varchar(50)	not null,
fone		varchar(20)	null,
email		varchar(50)	null,
);

insert into clientes values (1,'Júllia','33334','jullia@gmail.com');
insert into clientes values (2,'Xuão',null,null);
insert into clientes values (3,'Maria','31313',null);

create table produtos(
valor	varchar(20)	not null,
nome	varchar(50)	not null,
qtd		int			not null,
);

insert into produtos values('30','carne','5');
insert into produtos values('10','pão','10');

select * from clientes;
select * from produtos;