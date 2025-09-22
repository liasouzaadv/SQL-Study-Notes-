-- Quais clientes mais perderam pontos por Lover?

SELECT t1.IdCliente,
        sum(t1.QtdePontos) AS TotalPontos

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos as t3
ON t2.IdProduto = t3.IdProduto

WHERE t3. DescCateogriaProduto = 'lovers'

GROUP BY t1.IdCliente

ORDER BY sum(t1.QtdePontos) ASC

LIMIT 5