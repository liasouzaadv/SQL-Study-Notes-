-- quantos produtos são de rpg



SELECT count(IdProduto),
        DescCateogriaProduto

FROM produtos

WHERE DescCateogriaProduto = 'rpg';

-- outra forma pra retornar a quantidade de produtos por categotia

SELECT DescCateogriaProduto,
        count(IdProduto)
FROM produtos

GROUP BY DescCateogriaProduto;


