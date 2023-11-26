-- total vendas junho

SELECT SUM(valorTotal) AS TotalVendasJunho
INTO tabelaquestao5totalVendasMesJunho
FROM fatovendas fv
INNER JOIN dimensaotempo dt ON fv.ChaveTempo = dt.ChaveTempo
WHERE dt.Mes = 6;

-- query melhorada para gerar gráficos

SELECT dt.mes, SUM(valorTotal) AS TotalFaturamento
into questao5totalFaturamentoMes
FROM fatovendas fv
INNER JOIN dimensaotempo dt ON fv.ChaveTempo = dt.ChaveTempo
group by dt.mes;