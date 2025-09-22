-- qual cliente juntou mais ponto positivo em 2025


SELECT IdCliente,
        sum(QtdePontos) AS TotalPontos
        
FROM transacoes

WHERE DtCriacao >= '2025-05-01'
AND DtCriacao < '2025-06-01'
AND QtdePontos > 0

GROUP BY IdCliente

ORDER BY sum(QtdePontos) DESC

LIMIT 1
