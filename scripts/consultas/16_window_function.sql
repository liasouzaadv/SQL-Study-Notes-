--  qual  o número de transações por dia do curso?

WITH tb_sumario_dias AS (

    SELECT substr(DtCriacao, 1, 10) AS DtDia,
            count(DISTINCT IdTransacao) AS QtdeTransacao
    
    FROM transacoes

    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-30'

    GROUP BY DtDia

    )


SELECT *,
        sum(QtdeTransacao) OVER (ORDER BY DtDia) AS QtdeTransacaoAcumulada

FROM tb_sumario_dias
