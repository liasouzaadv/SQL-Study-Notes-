SELECT IdCliente,
        DtCriacao,
        datetime (substr(DtCriacao, 1,19) ) AS DtCriacaoNova,     -- selecionou apenas parte da string para ficar só a data aparecendo e depois converteu em datetime
        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS diaSemana  -- a função %w retorna a coluna formatada no dia da semana 



FROM clientes
