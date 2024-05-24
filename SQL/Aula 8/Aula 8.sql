-- 1. Informe o total de médicos cadastrados.
SELECT COUNT(*) AS total_medicos
FROM medicos;

-- 2. Informe o total de especialidades cadastradas.
SELECT COUNT(DISTINCT especialidade) AS total_especialidades
FROM medicos;

-- 3. Informe o maior salário dos médicos. Utilizar CONVERT.
SELECT CONVERT(MAX(salario), CHAR) AS maior_salario
FROM medicos;

-- 4. Informe o menor salário pago para um médico.
SELECT MIN(salario) AS menor_salario
FROM medicos;

-- 5. Informe o menor salário entre os médicos de Bauru ou Agudos.
SELECT MIN(salario) AS menor_salario
FROM medicos
WHERE cidade IN ('Bauru', 'Agudos');

-- 6. Informe o total de urologistas.
SELECT COUNT(*) AS total_urologistas
FROM medicos
WHERE especialidade = 'Urologista';

-- 7. Informe a média salarial dos médicos que moram em Jau ou Agudos.
SELECT AVG(salario) AS media_salarial
FROM medicos
WHERE cidade IN ('Jau', 'Agudos');

-- 8. Informe a quantidade de especialidades disponíveis na cidade de Agudos.
SELECT COUNT(DISTINCT especialidade) AS quant_especialidades
FROM medicos
WHERE cidade = 'Agudos';

-- 9. Mostrar o valor da soma dos salários dos médicos com id 1, 5 e 7.
SELECT SUM(salario) AS soma_salarios
FROM medicos
WHERE id IN (1, 5, 7);

-- 10. Informe a quantidade de médicos que não trabalham em Bauru e têm salário menor que 2000.
SELECT COUNT(*) AS quant_medicos
FROM medicos
WHERE cidade != 'Bauru' AND salario < 2000;

-- 11. Mostrar os dados do médico com maior salário. Utilizar ORDER BY e não MAX.
SELECT * 
FROM medicos
ORDER BY salario DESC
LIMIT 1;

-- 12. Mostrar a média salarial de médicos entre 30 e 60 anos que moram em Bauru ou Jau.
SELECT AVG(salario) AS media_salarial
FROM medicos
WHERE idade BETWEEN 30 AND 60 AND cidade IN ('Bauru', 'Jau');

-- 13. Mostrar a data de contratação do médico mais novo.
SELECT data_contratacao
FROM medicos
ORDER BY idade ASC
LIMIT 1;

-- 14. Mostrar a data de contratação do médico mais antigo.
SELECT data_contratacao
FROM medicos
ORDER BY idade DESC
LIMIT 1;

-- 15. Informar o total de médicos contratados no ano de 2000.
SELECT COUNT(*) AS total_medicos
FROM medicos
WHERE YEAR(data_contratacao) = 2000;

-- 16. Informar o total de médicos contratados entre 2000 e 2019.
SELECT COUNT(*) AS total_medicos
FROM medicos
WHERE YEAR(data_contratacao) BETWEEN 2000 AND 2019;

-- 17. Mostrar a média salarial dos médicos contratados em 2020 que moram em Agudos.
SELECT AVG(salario) AS media_salarial
FROM medicos
WHERE YEAR(data_contratacao) = 2020 AND cidade = 'Agudos';

-- 18. Mostrar o valor médio dos salários entre 2000 e 2020.
SELECT AVG(salario) AS media_salarios
FROM medicos
WHERE salario BETWEEN 2000 AND 2020;

-- 19. Mostrar a soma dos salários dos médicos cujo salário for maior que 2000 e morem em Bauru ou Jau e a especialidade for ortopedista.
SELECT SUM(salario) AS soma_salarios
FROM medicos
WHERE salario > 2000 AND cidade IN ('Bauru', 'Jau') AND especialidade = 'Ortopedista';

-- 20. Mostrar total de médicos que moram em Bauru ou Jau ou Agudos.
SELECT COUNT(*) AS total_medicos
FROM medicos
WHERE cidade IN ('Bauru', 'Jau', 'Agudos');

-- 21. Elaborar e desenvolver um script que utilize COUNT, SUM e AVG com:
SELECT 
    COUNT(*) AS total_medicos, 
    SUM(salario) AS soma_salarios, 
    AVG(salario) AS media_salarios
FROM medicos
WHERE 
    nome LIKE '%Silva%' AND
    especialidade IN ('Cardiologista', 'Neurologista') AND
    salario BETWEEN 5000 AND 10000;

