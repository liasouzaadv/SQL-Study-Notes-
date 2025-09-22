-- antes do select ao final da query cujo resultado vc quer inserir em uma tabela
-- vc colocar INSERT INTO nome_tabela e o resultado daquela query sera inserido nessa
-- tabela já existente

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

INSERT INTO relatorio_diario 

SELECT * FROM tb_acum;

SELECT * FROM relatorio_diario