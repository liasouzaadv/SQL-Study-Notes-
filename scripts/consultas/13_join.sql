-- fazendo LEFT JOIN

SELECT * 
FROM transacao_produto

LEFT JOIN produtos
ON transacao_produto.IdProduto = produtos.IdProduto

LIMIT 10

-- a mesma coisa usando ALIAS de tabelas

SELECT * 
FROM transacao_produto AS tp

LEFT JOIN produtos AS p
ON tp.IdProduto = p.IdProduto

LIMIT 15

-- fazer LEFT JOIN pegando apenas colunas específicas

SELECT tp.*,
        p.DescProduto

FROM transacao_produto AS tp

LEFT JOIN produtos AS p
ON tp.IdProduto = p.IdProduto

LIMIT 15