-- Quantidades de usuários cadastrados (absoluto e acumulado) ao longo do tempo?


WITH tb_dia_cliente AS (

    SELECT 
            substr(DtCriacao,1,10) AS DtDia,
            count(DISTINCT IdCliente) AS QtdeCliente

    FROM clientes

    GROUP BY DtDia
)

SELECT *,
        sum(QtdeCliente) OVER (ORDER BY DtDia) AS QtdeClienteAcumulada
 FROM tb_dia_cliente