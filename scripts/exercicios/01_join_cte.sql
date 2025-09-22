-- Quem iniciou o curso no primeiro dia, em media assistiu quantas aulas?



-- quem participou da 1ª aula
WITH tb_prim_dia AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
    ),


tb_dias_curso AS (
    SELECT DISTINCT
            IdCliente,
            substr(DtCriacao, 1 , 10) AS PresenteDia
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-30'
    ORDER BY IdCliente, PresenteDia
    ),

tb_cliente_dias AS (
    SELECT t1.IdCliente,
            count(DISTINCT t2.PresenteDia) AS QtdeDias
    FROM tb_prim_dia AS t1
    LEFT JOIN tb_dias_curso AS t2
    ON t1.IdCliente = t2.IdCliente
    GROUP BY t1.IdCliente
    )

SELECT avg(QtdeDias)
FROM tb_cliente_dias