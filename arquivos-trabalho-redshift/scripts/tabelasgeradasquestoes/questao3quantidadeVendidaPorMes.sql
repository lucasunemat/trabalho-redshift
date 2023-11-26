-- Produtos com maior quantidade vendida no mês de julho

SELECT dp.nomeProduto, SUM(fv.quantidade) AS QuantidadeVendida
INTO tabelaquestao3
FROM fatovendas fv
INNER JOIN dimensaoproduto dp ON fv.ChaveProduto =
dp.ChaveProduto
INNER JOIN dimensaotempo dt ON fv.ChaveTempo = dt.ChaveTempo
WHERE dt.mes = 7 AND dp.datafimvalidade IS NULL
GROUP BY dp.nomeProduto
ORDER BY QuantidadeVendida DESC LIMIT 1;

-- query melhorada para gerar gráficos
-- retorna todos os produtos e quantidades vendidas no mes de julho

SELECT dp.nomeProduto, SUM(fv.quantidade) AS QuantidadeVendida
INTO questao3quantidadeVendidaPorMes
FROM fatovendas fv
INNER JOIN dimensaoproduto dp ON fv.ChaveProduto =
dp.ChaveProduto
INNER JOIN dimensaotempo dt ON fv.ChaveTempo = dt.ChaveTempo
WHERE dt.mes = 7 AND dp.datafimvalidade IS NULL
GROUP BY dp.nomeProduto
ORDER BY QuantidadeVendida DESC LIMIT 5;
