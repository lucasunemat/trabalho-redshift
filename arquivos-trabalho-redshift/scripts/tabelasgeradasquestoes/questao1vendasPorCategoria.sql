-- produtos vendidos por categoria

SELECT dp.idcategoria AS idcategoria, ctg.descricaoCategoria, sum(fv.quantidade)
AS quantidadeVendida
INTO tabelaquestao1vendasPorCategoria
FROM fatovendas fv
INNER JOIN dimensaoproduto dp ON fv.chaveproduto =
dp.chaveproduto
INNER JOIN dimensaocategoria ctg ON ctg.idcategoria =
dp.idcategoria
WHERE ctg.datafimvalidade IS NULL
GROUP BY dp.idcategoria, ctg.descricaoCategoria;

-- query melhorada para gerar gráficos

SELECT ctg.descricaoCategoria, sum(fv.quantidade)
AS quantidadeVendida
INTO questao1vendasPorCategoria
FROM fatovendas fv
INNER JOIN dimensaoproduto dp ON fv.chaveproduto =
dp.chaveproduto
INNER JOIN dimensaocategoria ctg ON ctg.idcategoria =
dp.idcategoria
WHERE ctg.datafimvalidade IS NULL
GROUP BY dp.idcategoria, ctg.descricaoCategoria;