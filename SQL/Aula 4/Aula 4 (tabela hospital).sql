create database hospital;
use hospital;

create table medico(
id_medico		int	  identity	not null,
nome			varchar(40)		not null,
crm				int				null,
telefone		varchar(14)		not null,
email			varchar(45)		not null,
endereco		varchar(80)		not null
primary key(id_medico));

create table pacientes(
id_paciente		int	  identity	not null,
nome			varchar(40)		not null,
idade			int				not null,
telefone		varchar(14)		not null,
email			varchar(45)		not null,
endereco		varchar(80)		not null
primary key (id_paciente));

drop table paciente;

create table consultas(
id_consulta		int  identity	not null,
dia_consulta	date			not null,
nome			varchar(60)		not null,
motivo			varchar(100)	not null,
medicamento		varchar(100)	null,
valor_consulta	decimal(10,2)	null
primary key (dia_consulta, id_consulta));

drop table consulta;
insert into medico values ('Marcelo', 7859784, '1468955639', 'drmarcelo@gmail.com', 'rua dos medicos')
insert into medico values ('Patricia', 9878468, '1455697556', 'drapatricia@gmail.com', 'rua medica')

insert into pacientes values ('Vinicius', 21, '1455989566', 'vinicius@gmail.com', 'rua dos loucos')
insert into pacientes values ('Rafaella', 19, '14655989236', 'rafa@gmail.com', 'rua maluca')

insert into consultas (dia_consulta, nome, motivo, medicamento, valor_consulta) 
values ('2024-03-24', 'Rhaissa', 'dor de cabeça', 'dipirona', 25.50);
 
insert into consultas (dia_consulta, nome, motivo, medicamento, valor_consulta) 
values ('2024-03-31', 'Guilherme', 'diabetes', 'insulina', 235.98);

select * from medico;

select * from pacientes;

select * from consultas;

insert into medico values (1,'Marcelo', 7859784, '1468955639', 'drmarcelo@gmail.com', 'rua dos medicos')
insert into medico values (1,'Patricia', 9878468, '1455697556', 'drapatricia@gmail.com', 'rua medica')

insert into consultas values ('24/03/2024', 'Rhaissa', 'dor de cabeça', 'dipirona', 25,50)
insert into consultas values ('31/03/2024', 'Guilherme', 'diabetes', 'insulina', 235,98)



