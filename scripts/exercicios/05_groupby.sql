-- qual o valor médio de pontos positivos por dia?

SELECT sum(QtdePontos) AS TotalPontos,

        count(DISTINCT substr(DtCriacao,1,10)) AS QtdeDiasUnicos,
        
        sum(QtdePontos)/count(DISTINCT substr(DtCriacao,1,10)) AS AvgPontosDia

FROM transacoes

WHERE QtdePontos > 0