-- Como foi a curva de churn do curso de sql?

WITH tb_clientes_d1 AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-26'
    )

SELECT  
        substr(t2.DtCriacao,1,10) AS DtDia,
        count(DISTINCT t1.IdCliente) AS QtdeCliente,
        1. * count(DISTINCT t1.IdCliente) / (select count(*) FROM tb_clientes_d1) AS PctRetencao,
        1 - 1. * count(DISTINCT t1.IdCliente) / (select count(*) FROM tb_clientes_d1) AS PctChurn

FROM tb_clientes_d1 AS t1

LEFT JOIN transacoes AS t2
ON t1.IdCliente = t2.IdCliente

WHERE t2.DtCriacao >= '2025-08-25'
AND t2.DtCriacao < '2025-08-30'

GROUP BY DtDia