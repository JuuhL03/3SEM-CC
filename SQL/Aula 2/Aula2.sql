use fib2023;

--QUESTÃO 01

create table quadro (
matricula 	int 		identity 	not null,
nome 		varchar(50) 			not null,
endereco 	varchar(100) 			not null,
cidade 		varchar(50) 			not null,
cod_curso 	int 				not null,
primary key(matricula)
);

insert into quadro values('Marcos Moraes', 'Rua Pe Roque, 2057', 'Mogi Mirim', 01),
insert into quadro values('Maria Conceição Lopes', 'Rua Araras, 23', 'Mogi Guaçu', 01),
insert into quadro values('Ana Carina Lopes', 'Rua Peraltas, 222', 'Santos', 01),
insert into quadro values('Carlos Aguiar', 'Rua Botafogo, 33', 'Santos', 01),
insert into quadro values('André Luiz dos Santos', 'Rua Lopes Conte, 3343', 'Sapucaí', 01),
insert into quadro values('Pedro Antonio Pimenta', 'Rua Altair Lopes, 33', 'Itapira', 02);

select * from quadro;

--QUESTÃO 02

create table estoque_produtos (
produto 	varchar(50) 		not null,
marca 		varchar(50),		null,
cor 		varchar(20),		null,
preco 		decimal(10, 2) 		not null,
quantidade 	int 			not null,
valor_total 	decimal(10, 2) 		not null,
data_fabricacao date 			not null,
primary key(id)
);

insert into estoque_produtos values('Mouse', 'Dell', 'Preto', 22.99, 1, 22.99, '2021-01-01'),
insert into estoque_produtos values('Teclado', 'Microsoft', 'Prata', 17.45, 2, 34.90, '2021-01-02'),
insert into estoque_produtos values('HD', 'Wester Digital', null, 199.99, 3, 599.97, '2021-01-03'),
insert into estoque_produtos values('Monitor', 'Phillips', 'Branco', 459.00, 4, 1836.00, '2021-01-04'),
insert into estoque_produtos values('Placa de Vídeo', 'Sound Forge', null, 999.00, 5, 4995.00, '2021-01-05'),
insert into estoque_produtos values('Mouse Pad', null, 'Azul', 15.00, 6, 90.00, '2021-01-06');

select * from estoque_produtos;

--QUESTÃO 03

create table estoque_produtos2 (
produto 	varchar(50) 	not null,
cor 		varchar(20)	null,
tamanho 	varchar(10)	null,
preco 		decimal(10, 2) 	not null,
primary key(produto)
);

insert into estoque_produtos2 values('Camisa', 'Azul', 'GG', 99.99),
insert into estoque_produtos2 values('Calça', 'Preto', 'G', 139.99),
insert into estoque_produtos2 values('Saia', 'Vermelho', 'M', 200.00),
insert into estoque_produtos2 values('Boné', null, null, 70.00),
insert into estoque_produtos2 values('Cinto', 'Preto', 'P', 27.00),
insert into estoque_produtos2 values('Batom', 'Vermelho', null, 9.99);

select * from estoque_produtos2;

--QUESTÃO 04

create table usuarios (
id_usuario 	int 		identity(1,1) 	not null,
nome_completo 	varchar(100) 			not null,
data_nascimento date				null,
celular 	varchar(20)			null,
cpf 		varchar(14) 			not null,
cep 		varchar(10)
primary key(id_usuario)
);

insert into usuarios values('José João Ortigoza', '1970-10-20', '014 98877-6644', '123345678-90', '17120-000'),
insert into usuarios values('Maria Mariana Santos', null, null, null, '01111-998'),
insert into usuarios values('Antonio Tiburcio Silva', '2000-01-01', '014 3262-8890', '987789789-11', '32998-199'),
insert into usuarios values('Jana Antonia Pereira', '1999-10-30', null, '345678123-90', null),
insert into usuarios values('Durval da Silva', null, null, null, null),
insert into usuarios values('Durvalina das Dores', '2020-12-21', null, '081666787-11', '12345-123');

select * from usuarios;


