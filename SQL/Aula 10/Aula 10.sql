create database aula11
use aula11

-- criar a tabela produtos
create table produtos (
    id int primary key,
    nome varchar(100),
    preco decimal(10, 2),
    data_fabricacao date,
    data_entrada_estoque date,
    data_validade date
);

-- inserir registros na tabela produtos
insert into produtos (id, nome, preco, data_fabricacao, data_entrada_estoque, data_validade)
values 
(1, 'produto a', 10.50, '2022-03-15', '2022-03-16', '2023-03-15'),
(2, 'produto b', 20.30, '2022-04-10', '2022-04-12', '2023-04-10'),
(3, 'produto c', 15.00, '2019-03-20', '2019-03-22', '2020-03-20');

-- verificar produtos com data de validade vencida
select * from produtos
where data_validade < getdate();

-- verificar produtos fabricados em março e abril
select * from produtos
where month(data_fabricacao) in (3, 4);

-- verificar produtos com data de fabricação em 2019
select * from produtos
where year(data_fabricacao) = 2019;

-- calcular a data de validade dos produtos 90 dias depois de fabricados
select id, nome, dateadd(day, 90, data_fabricacao) as data_validade_90_dias
from produtos;

-- calcular a data de validade dos produtos 6 meses depois de fabricados
select id, nome, dateadd(month, 6, data_fabricacao) as data_validade_6_meses
from produtos;

-- calcular há quantos dias um produto entrou no estoque
select id, nome, datediff(day, data_entrada_estoque, getdate()) as dias_no_estoque
from produtos;

-- mostrar o preço de todos os produtos com data de validade superior a abril de 2018
select nome, preco
from produtos
where data_validade > '2018-04-30';

-- mostrar os produtos fabricados entre 12 de março e 22 de abril
select *
from produtos
where data_fabricacao between '2022-03-12' and '2022-04-22';

-- mostrar o produto mais antigo no estoque
select top 1 *
from produtos
order by data_entrada_estoque;

-- mostrar o produto mais novo (por data de fabricação)
select top 1 *
from produtos
order by data_fabricacao desc;

-- informar o total de produtos com validade vencida
select count(*) as total_vencidos
from produtos
where data_validade < getdate();

-- informar o valor total dos produtos com validade vencida
select sum(preco) as valor_total_vencidos
from produtos
where data_validade < getdate();

-- produtos fabricados neste ano
select *
from produtos
where year(data_fabricacao) = year(getdate());

-- produtos que entraram no estoque este ano
select *
from produtos
where year(data_entrada_estoque) = year(getdate());

-- média de preço dos produtos com validade vencida
select avg(preco) as media_preco_vencidos
from produtos
where data_validade < getdate();
