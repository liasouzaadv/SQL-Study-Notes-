-- em alguns sistemas de SQL se usa TRUNCATE FROM pra excluir os registros de uma tabela
-- no sqlite se usa DELETE FROM

DELETE FROM relatorio_diario;


-- a tabela ainda existe, porém vazia, sem registros
SELECT * FROM relatorio_diario