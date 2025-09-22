-- criando uma tabela a partir do resultado de uma query

CREATE TABLE relatorio_diario AS 

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

SELECT * FROM tb_acum;

SELECT * FROM relatorio_diario

