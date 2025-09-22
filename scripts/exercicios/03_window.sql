-- Qual o dia da semana mais ativo de cada usuário?

WITH tb_cliente_semana AS (
    
    SELECT IdCliente,
    strftime('%w', substr(DtCriacao,1,10)) AS DtDiaSemana,
    count(DISTINCT IdTransacao) AS QtdeTransacao

    FROM transacoes

    GROUP BY IdCliente, DtDiaSemana
    ),

    tb_rn AS (

        SELECT *,
            row_number() OVER (PARTITION BY IdCliente ORDER BY QtdeTransacao DESC) AS rn 
        FROM tb_cliente_semana
        
    )


SELECT * FROM tb_rn
WHERE rn = 1
