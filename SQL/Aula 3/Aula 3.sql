create database atv3;
use atv3;
 
create table pessoas(
	id_pessoa		int				identity,
	nome			varchar(40)		not null,
	fone			varchar(20)		null,
	email			varchar(40)		null
	primary key(id_pessoa)
);
 
insert into pessoas values ('Ana', ' ', 'ana@ana');
insert into pessoas values ('Bruno', '14525256253', 'bruno@bruno');
 
 
select * from pessoas;
 
-- erro
insert into pessoas values ('Ana', ' ', 'ana@ana');
insert into pessoas values ('Bruno', '14525256253', 'bruno@bruno');
 
 
create table clientes4(
	id_cli		int				not null,
	cpf			varchar(15)		unique,
	nome_cli	varchar(40)		not null,
	fone_cli	varchar(18)		null,
	sexo		varchar(1)		check(upper(sexo)='M' or upper(sexo) = 'F'),
	primary key(id_cli, nome_cli)
);
 
insert into clientes4 values ('1', '45678912345', 'Beatriz Silva', ' ', 'F');
insert into clientes4 values ('2', '12345678932', 'Carlos Oliveira', ' ', 'M');
 
 
select * from clientes4;
 
-- erro
insert into clientes4 values ('1', '45678912345', 'Beatriz Silva', ' ', 'F');
insert into clientes4 values ('2', '12345678932', 'Carlos Oliveira', ' ', 'M');
 
 
create table carro(
	id_carro	int				identity,
	marca		varchar(40)		not null,
	modelo		varchar(40)		not null,
	id_pessoa	int				not null,
	primary key(id_carro),
	foreign key(id_pessoa)	references pessoas(id_pessoa)
);
 
insert into carro values ('Mercedes', 'amg', 1);
insert into carro values ('BMW', '320i', 2);
 
select * from carro;
 
-- erros
insert into carro values ('123', ' ', '52');
insert into carro values (' ', '320i');
 
create table gravadora(
	id_gravadora	int				not null,
	gravadora		varchar(45)		not null,
	telefone		varchar(20)		null,
	primary key(id_gravadora)
);
 
insert into gravadora values ('150', 'JYP', '1456897852');
insert into gravadora values ('289', 'YG', '14653232212');
 
select * from gravadora;
 
-- erros
insert into gravadora values ('1aM2', '1456897852');
insert into gravadora values ('289', 'YG', '1465323221120541205210202');
 
create table cd(
	id_cd				int				identity	not null,
	id_gravadora		int				not null,
	banda				varchar(40)		not null,
	nome_cd				varchar(40)		not null,
	data_lancamento		date			not null,
	quantidade			int				not null,
	primary key(id_cd),
	foreign key(id_gravadora) references gravadora(id_gravadora)
);
 
insert into cd values ('150', 'Simple Plan', 'Untitled', '14/09/2000', '1');
insert into cd values ('289', 'My Chemical Romance', 'Helena', '02/10/2002', '2');
 
select * from cd;
 
-- erros
insert into cd values ('7', '150', 'Simple Plan', 'Untitled', '14/09/2000', '1'); 
insert into cd values ('7845', 'My Chemical Romance', 'Helena', '02/10/2002', '2');
 
create table fornecedores(
	id_for	int				identity,
	nome	varchar(40)		not null,
	fone	varchar(18)		null,
	primary key(id_for)
);
 
insert into fornecedores values ('Eliel', ' ');
insert into fornecedores values ('Felipe', '1245678952');
 
select * from fornecedores;
 
-- erros 
insert into fornecedores values ('1', 'Eliel', ' ');
 
create table produtos(
	id_prod		int				identity,
	id_for		int				not null,
	produto		varchar(40)		not null,
	preco		decimal			not null,
	primary key(id_prod),
	foreign key(id_for) references fornecedores(id_for)
);
 
insert into produtos values ('1', 'Batata', 124.32);
insert into produtos values ('2', 'Chocolate', 4.89);
 
select * from produtos;
 
-- erros 
insert into produtos values (1, 'Batata', 124,32); 
insert into produtos values (2, 'Bolacha', '124.32');
 
select * from produtos;
 
create table compra(
	id_compra		int				identity,
	nota_fiscal		varchar(40)		unique not null,
	preco			decimal			not null,
	cpf				varchar(20)		null,
	primary key(id_compra)
);
 
insert into compra values ('Batata', 123, '2131054');
insert into compra values ('Chocolate', 456, '451268513');
 
-- erros
insert into compra values (null, 123, '21354');
insert into compra values ('12' 'Batata' , 123, '21354');
 
select * from compra;
 
create table aluno(
	id_aluno		int				identity,
	matricula		varchar(20)		unique not null,
	nome			varchar(40)		not null,
	fone			varchar(20)		null,
	primary key(id_aluno)
);
 
insert into aluno values ('DCorreia', 'Davi', ' ');
insert into aluno values ('LFrançoso', 'Lucas', '145698235421');
 
select * from aluno;
 
-- erros 
insert into aluno values ('1', 'DCorreia', 'Davi', ' ');
insert into aluno values ('21487', 'Lucas', '145698235421');
 
create table escola(
	id_unidade			int			identity,
	id_aluno			int			unique not null,
	qtd_materiais		int			not null,
	qtd_alunos			int			not null,
	cantina				varchar(1)	check(upper(cantina)='S' or upper(cantina) = 'N'),
	primary key(id_unidade),
	foreign key(id_aluno) references aluno(id_aluno)
);
 
insert into escola values ('1', '6', '15', 'S');
insert into escola values ('2', '17', '85', 'N');
 
select * from escola;
 
-- erros
insert into escola values (' ', '6', '15', 'S');
insert into escola values ('2', '17', '85', 'P');
 
create table carros(
	id_carro		int				identity,
	cor				varchar(30)		default('Branco'),
	duas_portas		varchar(1)		check(upper(duas_portas)='S' or upper(duas_portas)='N')
	primary key(id_carro)
);
 
insert into carros values ('Preto', 'S');
insert into carros values ('Branco', 'N');
 
select * from carros;
 
-- erros
insert into carros values ('S');
insert into carros values ('Branco', 'L');
 
create table celular(
	id_cel		int				identity,
	nome		varchar(30)		unique				not null,
	cor			varchar(30)		default('Branco'),
	fourK		varchar(1)		check(upper(fourK)='S' or upper(fourK)='N'),
	so			varchar(40)		not null,
	luz			int				null
	primary key(id_cel)
);
 
insert into celular values ('Iphone', 'Preto', 'S', 'IOS', ' ');
insert into celular values ('Motorola', 'Preto', 'N', 'Android', '1');
 
select * from celular;
 
-- erros
insert into celular values ('Preto', 'S', 'IOS', ' ');
insert into celular values ('Motorola', 'Preto', 'D', 'Android');