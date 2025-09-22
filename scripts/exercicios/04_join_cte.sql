-- Qual o dia com maior engajamento de cada aluno que iniciou o curso no dia 01?


WITH alunos_dia01 AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
),

tb_cliente_dia AS (
        
        SELECT t1.IdCliente,
                substr(t2.DtCriacao, 1, 10) AS DtDia,
                count(*) AS QtdeInteracoes
        
        FROM alunos_dia01 AS t1

        LEFT JOIN transacoes AS t2
        ON t1.IdCliente = t2.IdCliente
        AND t2.DtCriacao >= '2025-08-25'
        AND t2.DtCriacao < '2025-08-30'

        GROUP BY t1.IdCliente, DtDia

        ORDER BY t1.IdCliente, DtDia
        ),


tb_rn AS (

    SELECT *,

        row_number() OVER (PARTITION BY IdCliente ORDER BY QtdeInteracoes DESC, DtDia) AS rn
    FROM tb_cliente_dia
)

SELECT * FROM tb_rn
WHERE rn = 1