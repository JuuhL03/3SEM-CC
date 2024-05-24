create table formulario (
    id int primary key identity,
    email varchar(50) unique,
    nome varchar(50),
    sobenome varchar(50),
    idade int,
    nascimento date,
    altura decimal(10,2)
);

create table produto (
    id int primary key,
    descricao varchar(50),
    quantidade int,
    datadeentrega date,
    foreign key (id) references formulario(id)
);

insert into formulario (email, nome, sobenome, idade, nascimento, altura)
values ('email1@example.com', 'João', 'Silva', 30, '1994-05-20', 1.80),
       ('email2@example.com', 'Maria', 'Santos', 25, '1999-10-15', 1.65),
       ('email3@example.com', 'Pedro', 'Ferreira', 35, '1989-03-12', 1.75);

insert into produto (id, descricao, quantidade, datadeentrega)
values (1, 'Produto X', 10, '2024-04-05'),
       (2, 'Produto Y', 20, '2024-04-06'),
       (3, 'Produto Z', 30, '2024-04-07');

alter table formulario add data_nascimento date;
alter table formulario add genero varchar(10);

alter table produto add data_validade date;
alter table produto add categoria varchar(10);

alter table formulario drop column telefone;
alter table formulario drop column endereco;

alter table produto drop column quantidade;
alter table produto drop column nome;

alter table formulario alter column email varchar(150);

alter table formulario alter column genero varchar(5);

drop table produto;
drop table formulario;

create table formulario (
    id int,
    nome varchar(50),
    idade int,
    endereco varchar(100),
    email varchar(100),
    telefone varchar(20)
);

--Inserir registros na tabela pai -- Inserir os registros novamente
insert into formulario (id, nome, idade, endereco, email, telefone) values (1, 'pessoa1', 40, 'Endereco1', 'pai1@email.com', '123456789');
insert into formulario (id, nome, idade, endereco, email, telefone) values (2, 'pessoa2', 35, 'Endereco2', 'pai2@email.com', '987654321');
insert into formulario (id, nome, idade, endereco, email, telefone) values (3, 'pessoa3', 45, 'Endereco3', 'pai3@email.com', '111222333');
insert into formulario (id, nome, idade, endereco, email, telefone) values (4, 'pessoa4', 50, 'Endereco4', 'pai4@email.com', '444555666');
insert into formulario (id, nome, idade, endereco, email, telefone) values (5, 'pessoa5', 55, 'Endereco5', 'pai5@email.com', '777888999');
insert into formulario (id, nome, idade, endereco, email, telefone) values (6, 'pessoa6', 60, 'Endereco6', 'pai6@email.com', '000111222');

delete from formulario where id > 2 and id < 4;

select * from formulario;

delete from formulario;

select distinct endereco from formulario;

select * from formulario order by nome;

select * from formulario order by endereco;

select * from formulario order by nome, endereco;

select * from formulario order by idade desc, nome asc;

select * from formulario order by idade desc, nome asc, endereco asc;

alter table formulario
add constraint pk_formulario primary key (id);

use HOSPITAL;

create table medicos (
    id int primary key,
    nome varchar(50),
    especialidade varchar(50),
    salario decimal(10, 2),
    endereco varchar(100),
    telefone varchar(20)
);

insert into medicos (id, nome, especialidade, salario, endereco, telefone) values
(1, 'Dr. John Doe', 'Neurogastroenterologia', 10000.00, 'Rua A, nº 123', '123456789'),
(2, 'Dr. Jane Smith', 'Teratologia', 12000.00, 'Rua B, nº 456', '987654321'),
(3, 'Dr. David Johnson', 'Somnologia', 11000.00, 'Rua C, nº 789', '111222333'),
(4, 'Dr. Sarah Brown', 'Cromatologia', 9000.00, 'Rua D, nº 1011', '444555666'),
(5, 'Dr. Emily Williams', 'Dermatoglyphics', 13000.00, 'Rua E, nº 1213', '777888999'),
(6, 'Dr. Michael Wilson', 'Nefelibata', 10500.00, 'Rua F, nº 1415', '000111222');

create table medicos_copia (
    id int primary key,
    nome varchar(50),
    especialidade varchar(50),
    salario decimal(10, 2),
    endereco varchar(100),
    telefone varchar(20)
);

insert into medicos_copia
select * from medicos where especialidade in ('Neurogastroenterologia', 'Teratologia');

delete from medicos_copia where especialidade = 'Teratologia';

select distinct especialidade from medicos;

select * from medicos order by nome;

select * from medicos order by especialidade;

select * from medicos order by especialidade, nome;

select * from medicos order by salario;

select * from medicos order by especialidade, salario;

select * from medicos where salario > 1000 and salario < 2000;

select * from medicos where especialidade in ('Neurogastroenterologia', 'Teratologia');

delete from medicos_copia;

select * from medicos where salario >= 1500 and endereco like '%BAURU%';

select * from medicos where salario < 2000 and (endereco like '%JAU%' or endereco like '%BAURU%');

select distinct cidade from medicos;