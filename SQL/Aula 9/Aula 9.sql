



SELECT cidade, AVG(salario) AS media_salarial
FROM medicos
GROUP BY cidade;


SELECT especialidade, AVG(salario) AS media_salarial
FROM medicos
GROUP BY especialidade;


SELECT cidade, especialidade, MAX(salario) AS maior_salario
FROM medicos
GROUP BY cidade, especialidade;


SELECT cidade, especialidade, MIN(salario) AS menor_salario
FROM medicos
GROUP BY cidade, especialidade;


SELECT cidade, SUM(salario) AS soma_salarios
FROM medicos
WHERE cidade IN ('Bauru', 'Agudos')
GROUP BY cidade;


SELECT cidade, SUM(salario) AS soma_salarios
FROM medicos
WHERE salario BETWEEN 1999 AND 3999
GROUP BY cidade;


SELECT cidade, SUM(salario) AS soma_salarios
FROM medicos
WHERE cidade IN ('Bauru', 'Agudos') AND salario BETWEEN 1999 AND 3999
GROUP BY cidade;


SELECT cidade, COUNT(*) AS quantidade_medicos
FROM medicos
GROUP BY cidade;


SELECT cidade, COUNT(*) AS quantidade_medicos
FROM medicos
WHERE salario BETWEEN 1999 AND 4999 AND cidade IN ('Jau', 'Bauru', 'Agudos')
GROUP BY cidade;


SELECT 
    cidade, 
    AVG(salario) AS media_salario, 
    MAX(salario) AS maior_salario, 
    MIN(salario) AS menor_salario, 
    SUM(salario) AS soma_salarios, 
    COUNT(*) AS quantidade_medicos
FROM medicos
GROUP BY cidade;


SELECT 
    cidade, 
    AVG(salario) AS media_salario, 
    MAX(salario) AS maior_salario, 
    MIN(salario) AS menor_salario, 
    SUM(salario) AS soma_salarios, 
    COUNT(*) AS quantidade_medicos
FROM medicos
WHERE salario > 2000
GROUP BY cidade
HAVING COUNT(*) > 3;




CREATE TABLE produtos (
    grupo VARCHAR(50),
    subgrupo VARCHAR(50),
    fornecedor VARCHAR(100),
    produto VARCHAR(100),
    preco DECIMAL(10,2)
);

-- Inserir alguns dados
INSERT INTO produtos (grupo, subgrupo, fornecedor, produto, preco) VALUES
('Eletrônicos', 'Celulares', 'ABC Eletrônicos', 'Smartphone X', 1200.00),
('Eletrônicos', 'Computadores', 'XYZ Tecnologia', 'Notebook Y', 2500.00),
('Vestu

