-- QUESTÃO 1
 
create database fib2023
use fib2023
 
-- QUESTÃO 2
 
create table agenda(
id	int		not null,
nome	varchar(20)	not null,
idade	int		null,
genero	varchar(10)	null,
prof	varchar(20)	null,
primary key(id)
);
 
insert into agenda values(1,'Júllia',19,'feminino','estudante');
insert into agenda values(2,'João',19,'masculino','estudante');
insert into agenda values(3,'Zézinho',32,'masculino','professor');
 
delete from agenda;
drop table agenda;
 
select * from agenda;
 
-- QUESTÃO 3
-- isso é um comentário :)
 
create table usuario(
id		int		identity	not null,
nome		varchar(20)			not null,
cpf		varchar(14)			not null,
idade		int				null,
estado		varchar(2)			not null,
cidade		varchar(30)			not null,
cep		varchar(10)			null,
primary key(cpf)
);
 
insert into usuario values('Júllia','213.321.231-14',19,'SP','Bauru','17022340');
insert into usuario values('Zézinho','222.444.231-14',null,'SP','Bauru',null);
insert into usuario values('Mariazinha','213.445.231-14',null,'SP','Marília',null);
 
select * from usuario;
 
-- QUESTÃO 4
 
create table cadastro(
id	int		identity	not null,
email	varchar(30)			not null,
senha	varchar(30)			not null,
nome	varchar(20)			not null,
)
 
insert into cadastro values('jullialopes@alunos.fib.br','123456','júllia');
insert into cadastro values('zezinho@fib.br','pao123','zé');
insert into cadastro values('escola@fib.br','fib2023','fib');
 
select * from cadastro;
 
-- QUESTÃO 5
 
create table alunos(
nome		varchar(20)	not null,
sobrenome	varchar(20)	not null,
idade		int		null,
periodo		varchar(15)	null,
profissao	varchar(20)	null,
ano		varchar(20)	not null,
mat_pref	varchar(15)	not null,		
media		varchar(2)	not null,
ra		varchar(20)	not null,
nasc		varchar(20)	null,
);
 
insert into alunos values('júllia','santos',19,'noturno','analista','faculdade','programação','10','19523','14/03/2005');
insert into alunos values('zé','correia',20,'noturno','desenvolvedor','faculdade','programação','5','202231',null);
insert into alunos values('maria','pereira',12,'manhã','estudante','fundamental','matemática','8','23103',null);

select * from alunos;

-- QUESTÃO 6

create table produtos(
id		int		identity	not null,
nome		varchar(50)			not null,
descricao	varchar(100)			not null,
preco		decimal(10, 2)			not null,
quantidade	int				not null,
categoria	varchar(20)			not null,
fornecedor	varchar(50)			not null,
primary key(id),

);

insert into produtos values('1','smartphone X','smartphone topo de linha','1500.00','100','eletrônicos','fornecedor A');
insert into produtos values('2','notebook Y','notebook ultrafino','2500.00','50','eletrônicos','fornecedor B');
insert into produtos values('3','mouse óptico','mouse ergonômico','50.00','200','periféricos','fornecedor C');

select * from produtos;