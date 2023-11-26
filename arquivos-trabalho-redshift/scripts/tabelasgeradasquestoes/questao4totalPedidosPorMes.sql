-- total pedidos maio

SELECT COUNT(DISTINCT fv.chavecliente) as TotalPedidosMaio
INTO tabelaquestao4totalPedidosMaio
FROM dimensaotempo dt
inner join fatovendas fv on fv.chavetempo = dt.chavetempo
WHERE dt.mes = 5
limit 5;

-- query melhorada para gerar gráficos

select dt.mes, count(distinct dt.data) 
into questao4totalPedidosPorMes
from fatovendas fv
inner join dimensaotempo dt 
on fv.chavetempo = dt.chavetempo
group by dt.mes
order by dt.mes;