create database aula4;
use aula4;

-- 1
create table clientes(
codigo_cli		int			not null,
nome_cli		varchar(40) not null,
cod_dependente	int			not null,
);

alter table clientes
add email varchar(40) null, 
    cpf   varchar(14) null

select * from clientes;

--2
drop table clientes;

create table clientes(
codigo_cli		int			not null,
nome_cli		varchar(40) not null,
cod_dependente	int			not null,
);

alter table clientes
drop column cod_dependente,
			codigo_cli

select * from clientes;

--3
drop table clientes;

create table clientes(
codigo_cli		int			not null,
nome_cli		varchar(40) not null,
email			varchar(20)	not null,
);

alter table clientes
alter column nome_cli varchar (30)
alter table clientes
alter column email varchar (40)

select * from clientes;

--4 

create table clientes(
codigo_cli		int			not null,
nome_cli		varchar(40) not null,
email			varchar(20)	not null
);

delete from clientes where codigo_cli > 0 and email like '%@gmail.com' and nome_cli = 'NomeDoCliente'

--5

create table clientes(
codigo_cli		int			not null,
nome_cli		varchar(40) not null,
email			varchar(20)	not null
);

drop * from clientes;

--6

drop database aula4;

-- exercicios revisao

create table colegas(
idcol	int			identity,
cpf		varchar(20) unique,	
nome	varchar(40)	not null,
cidade	varchar(60)	default 'Santa Cruz do Rio Pardo',
idade	int 		default 16,
sexo	varchar(1)	check(upper(sexo)='M' or upper(sexo)='F') 
primary key (idcol)
);

alter table colegas
add fone varchar (12),
    estado varchar (2)

select * from colegas;

drop table colegas;

create table colegas(
idcol	int			not null,
cpf		varchar(20) unique,	
nome	varchar(40)	not null,
cidade	varchar(60)	default 'Santa Cruz do Rio Pardo',
idade	int 		default 16,
sexo	varchar(1)	check(upper(sexo)='M' or upper(sexo)='F') 
primary key (idcol)
);

alter table colegas
add fone varchar (12) null,
	estado varchar (2)

insert into colegas values (1, '124587851', 'Rhaissa', 'bauru', 18, 'F', '12589789985', 'SP')

select * from colegas;

alter table colegas
add endereco varchar (60) null

--forcando erro chave primaria 

insert into colegas values (1, '1458852366', 'Arthur', 'bauru', 7, 'M', '58559785246', 'SP', 'rua bisnaguinha')
insert into colegas values (2, '8794556997', 'Guilherme', 'agudos', 19, 'M', '8945594156', 'SP', 'rua danone')

drop table colegas;

create table colegas(
idcol	int			not null,
cpf		varchar(20) unique,	
nome	varchar(40)	not null,
cidade	varchar(60)	default 'Santa Cruz do Rio Pardo',
idade	int 		default 16,
sexo	varchar(1)	check(upper(sexo)='M' or upper(sexo)='F') 
primary key (idcol, nome)
);

-- forçando erro chave primaria composta
insert into colegas values (1, '124587851', 'Rhaissa', 'bauru', 18, 'F', '12589789985', 'SP')
insert into colegas values (1, '889795558', 'Rhaissa', 'lins', 19, 'F', '9878468212', 'SP')

drop table colegas;

create table clientes(
codigo_cli		int			not null,
nome_cli		varchar(40) not null,
email			varchar(20)	not null
);

alter table clientes
drop column codigo_cli
alter table clientes
add codigo_cli int identity null

insert into clientes values (

drop table clientes; 

