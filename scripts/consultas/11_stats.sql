-- calcular média (avg) da quantidade de pontos dos clientes

SELECT AVG(QtdePontos) AS MediaCarteira,
        MIN(QtdePontos) AS MinCarteira,
        MAX(QtdePontos) AS MaxCarteira,
        SUM(FlTwitch)
FROM clientes