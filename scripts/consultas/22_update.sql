-- o UPDATE altera de fato os campos de uma tabela

UPDATE relatorio_diario
SET QtdeTransacao = 1000
WHERE DtDia >= '2025-08-25';

SELECT * FROM relatorio_diario