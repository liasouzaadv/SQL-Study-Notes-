-- CTE: COMMON TABLE EXPRESSION

-- Dos clientes que começaram SQL no primeiro dia, quantos chegaram ao 5o dia?

WITH tb_cliente_primeiro_dia AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1,10) = '2025-08-25'
    ),


tb_cliente_ultimo_dia AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-29'
    ),

tb_join AS (
    SELECT t1.IdCliente AS PrimCliente,
           t2.IdCliente AS UltCliente
    
    FROM tb_cliente_primeiro_dia AS t1

    LEFT JOIN tb_cliente_ultimo_dia AS t2
    ON t1.IdCliente = t2.IdCliente
    )

SELECT count(PrimCliente),
        count(UltCliente),
        1. * count(UltCliente) / count(PrimCliente) AS ProporcaoClientes
FROM tb_join