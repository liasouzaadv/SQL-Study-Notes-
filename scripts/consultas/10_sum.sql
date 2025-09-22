-- soma de pontos ganhos no mês de julho

SELECT sum(QtdePontos)
FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'
AND QtdePontos > 0  -- necessário pois há pontos negativos (menores que 0)







-- retornando a soma dos pontos negativos e os pontos positivos transacionados no mês de julho

-- o SUM vem antes de cada CASE e fecha o () depois do END

SELECT  SUM(QtdePontos),
        SUM(CASE
            WHEN QtdePontos > 0 THEN QtdePontos
        END) AS QtdePontosPositivos,

        SUM(CASE
            WHEN QtdePontos < 0 THEN QtdePontos
        END) AS QtdePontosNegativos

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

ORDER BY QtdePontos