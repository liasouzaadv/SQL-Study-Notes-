-- quantas transaçoes do item "Presente"


SELECT count(*)

FROM transacao_produto

WHERE IdProduto = 11

-- maneira melhor de contar  o n° transação por IdProduto usando GROUP BY

SELECT IdProduto,
        count(*)

FROM transacao_produto

GROUP BY IdProduto

-- qual o cliente que mais juntou pontos no mês de julho? 

SELECT IdCliente,
        sum(QtdePontos),     -- pega o IdCliente e soma os pontos deste cliente
        count(IdTransacao)   -- qts transações o cliente fez 
FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

GROUP BY IdCliente

HAVING sum(QtdePontos) >= 4000  -- filtrar apenas por transações com qtde de pontos > 4000
ORDER BY sum(QtdePontos) DESC