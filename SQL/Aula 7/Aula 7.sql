create database aula7;
use aula7;

-- 1
create table medicos(
	idmedico		int				not null,
	nome			varchar(100)	not null,
	especialidade	varchar(50)		not null,
	telefone		int				null,
	cidade			varchar(100)	null,
	salario			decimal(9,2)	not null,

	primary key(idmedico)
);

insert into medicos values(1, 'Mariana', 'Pediatria', null, 'Bauru', 1458.70);
insert into medicos values(2, 'Júlio', 'Cardiologia', '119347398', 'Jau', 1894.47);
insert into medicos values(3, 'César', 'Psiquiatria', '113298748', null, 749.83);
insert into medicos values(4, 'Maúricio', 'Ortopedia', '143985432', 'Bauru', 8384.38);
insert into medicos values(5, 'Zélia', 'Ortopedia', null, 'Piratininga', 3497.09);
insert into medicos values(6, 'Juana', 'Cardiologia', '117823498', 'Bauru', 2438.69);
insert into medicos values(7, 'Pietro', 'Psiquiatria', '214782743', 'Sorocaba', 4534.98);
insert into medicos values(8, 'Valéria', 'Ginecologista', null, 'Jau', 673.02);
insert into medicos values(9, 'Rayane', 'Cardiologia', '179234823', null, 2383.84);
insert into medicos values(10, 'Ivan', 'Ortopedia', '158923742', 'Lins', 2364.65);
insert into medicos values(11, 'Janaina', 'Dermatologia', null, 'Bauru', 676.23);

-- 2 null
select nome, cidade
from medicos
where cidade is null;

-- 3 not null
select nome, cidade
from medicos
where cidade is not null;

-- 4
select * from medicos
where salario > 1000 and salario < 2000;

-- 5
select * from medicos
where nome like 'J%';

select * from medicos
where nome like 'Juan%';

select * from medicos
where nome like '_u%';

select * from medicos
where nome like '%a%';

-- 6
select * from medicos
where idmedico in(1,4,8);

-- 7    
select idmedico, nome, especialidade, telefone, cidade, salario, salario * 1.10 'Novo salário'
from medicos;

select idmedico, nome, especialidade, telefone, cidade, salario, salario * 1.10 'Novo salário'
from medicos
where idmedico = 1;

select idmedico, nome, especialidade, telefone, cidade, salario, salario * 1.10 'Novo salário'
from medicos
where especialidade = 'Ortopedia';

select idmedico, nome, especialidade, telefone, cidade, salario, salario * 1.10 'Novo salário'
from medicos
where especialidade = 'Cardiologia' or especialidade = 'Ortopedia';

select idmedico, nome, especialidade, telefone, cidade, salario, salario * 1.10 'Novo salário'
from medicos
where salario > 2000 and cidade = 'Bauru';

select idmedico, nome, especialidade, telefone, cidade, salario, salario * 1.10 'Novo salário'
from medicos
where cidade = 'Jau' or cidade = 'Bauru' and salario < 1000;

-- 8
select top (2) nome, especialidade
from medicos
order by especialidade;

-- 9
select * from medicos
where cidade in('Bauru', 'Jau');

select nome, salario
from medicos
where salario like '2%';

select nome, salario
from medicos
where salario between 1500 and 2500;