-- clientes que tem mais quantidade de pontos

SELECT * 
FROM clientes
ORDER BY QtdePontos DESC
LIMIT 10;


-- clientes mais antigos com base na datacriação

SELECT *
FROM clientes
ORDER BY DtCriacao;

-- usando dois critérios de ordenação

SELECT *
FROM clientes
ORDER BY DtCriacao, QtdePontos DESC

-- ordenando com dois critérios e filtrando com o where

SELECT *
FROM clientes
WHERE FlTwitch = 1
ORDER BY DtCriacao, QtdePontos DESC