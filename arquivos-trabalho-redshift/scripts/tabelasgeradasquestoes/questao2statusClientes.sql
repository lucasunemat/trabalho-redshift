-- Quantidade clientes bons premium

SELECT COUNT(*) AS clientesBonsPremium
INTO tabelaquestao2
FROM dimensaocliente dc
WHERE dc.idstatus = '1' AND dc.datafimvalidade IS NULL;

-- query melhorada para gerar gráficos

select ds.descricaostatus as StatusClientes, COUNT (dc.idstatus) as QuantidadeClientes 
into questao2statusClientes
from dimensaocliente dc 
inner join dimensaostatus ds 
on dc.idstatus = ds.idstatus
group by ds.descricaostatus,dc.idstatus;
