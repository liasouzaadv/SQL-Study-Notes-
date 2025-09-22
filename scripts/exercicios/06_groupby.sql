-- Qual dia da semana teve mais pedidos em 2025 ?

SELECT 
        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DiaSemana,
        count(DISTINCT IdTransacao) 

FROM transacoes

WHERE DtCriacao >= '2025-01-01'
AND DtCriacao <= '2025-12-31'

GROUP BY DiaSemana

ORDER BY count(IdTransacao) DESC
