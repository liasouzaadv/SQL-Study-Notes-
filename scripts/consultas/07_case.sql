 -- Intervalos
 -- De 0 a 500      -> Ponei
 -- De 501 a 1000   -> Ponei Premium
 -- De 1001 a 5000  -> Mago Aprendiz
 -- De 5001 a 10000 -> Mago Mestre
 -- Mais de 10001   -> Mago Supremo 





-- cada CASE gera apenas uma coluna 
-- O CASE deve vir dentro do SELECT





SELECT IdCliente,
        QtdePontos,
        CASE
            WHEN QtdePontos <= 500 THEN 'Ponei'
            WHEN QtdePontos <= 1000 THEN 'Ponei Premium'
            WHEN QtdePontos <= 5000 THEN 'Mago Aprendiz'
            WHEN QtdePontos <= 10000 THEN 'Mago Mestre'
            ELSE 'Mago Supremo'
        END AS NomeGrupo


FROM clientes


ORDER BY QtdePontos DESC




