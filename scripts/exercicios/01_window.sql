-- Qual a quantidade de transações acumuladas ao longo do tempo (diário)?


WITH tb_diario AS (

        SELECT substr(DtCriacao,1,10) AS DtDia,
                count(DISTINCT IdTransacao) AS QtdeTransacao

        FROM transacoes

        GROUP BY DtDia
        ORDER BY DtDia

),

tb_acum AS (
        SELECT *,
                sum(QtdeTransacao) OVER (ORDER BY DtDia) AS QtdeTransacaoAcumulada

        FROM tb_diario
)

SELECT * FROM tb_acum