-- seleciona todos as colunas e cria uma nova 

SELECT IdCliente,
        QtdePontos + 10 AS QtdePontosPlus10,
        QtdePontos * 2 AS QtdePontosDouble  -- coluna nova que foi criada
FROM clientes

