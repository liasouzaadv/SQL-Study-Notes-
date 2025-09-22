-- qual o produto com mais pontos transacionados

SELECT IdProduto,
        sum(VlProduto) AS TotalPontos

FROM transacao_produto

GROUP BY IdProduto

ORDER BY sum(VlProduto) DESC