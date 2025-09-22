-- qual o produto mais transacionado ?


SELECT IdProduto,
        count(IdTransacaoProduto)

FROM transacao_produto

GROUP BY IdProduto

ORDER BY count(IdTransacaoProduto) DESC