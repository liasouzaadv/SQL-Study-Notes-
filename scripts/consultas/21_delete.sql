-- é possível deletar apenas alguns campos de uma tabela:

DELETE FROM relatorio_diario
WHERE strftime('%w', substr(DtDia, 1,10)) = '0';

SELECT * FROM relatorio_diario