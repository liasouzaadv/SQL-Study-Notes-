-- retorna a quantidade de linhas que tem na tabela/coluna, neste caso, o número de clientes

SELECT count(*)
FROM clientes;

SELECT count(IdCliente)
FROm clientes

-- contar quantos clientes distintos há

SELECT COUNT(DISTINCT IdCliente)
FROM clientes