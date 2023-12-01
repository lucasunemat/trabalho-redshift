set datestyle to 'SQL,DMY';

-- criando banco de dados

CREATE DATABASE ed;

-- tabela dimensaocategoria

CREATE TABLE DimensaoCategoria(
 ChaveCategoria int PRIMARY KEY,
 IDCategoria int,
 descricaoCategoria varchar (50),
 dataInicioValidade date not null,
 dataFimValidade date
);

-- tabela dimensaostatus

CREATE TABLE DimensaoStatus(
 ChaveStatus int PRIMARY KEY,
 IDStatus int,
 descricaoStatus varchar (50),
 dataInicioValidade date not null,
 dataFimValidade date
);

-- tabela dimensaocliente

CREATE TABLE DimensaoCliente(
 ChaveCliente int PRIMARY KEY,
 IDCliente int,
 nomeCliente varchar(50),
 enderecoCliente varchar(100),
 telefone varchar(20),
 IDStatus int,
 limiteCreditoCliente numeric(10,2),
 dataInicioValidade date not null,
 dataFimValidade date
);

-- tabela dimensaoproduto

CREATE TABLE DimensaoProduto(
 ChaveProduto int PRIMARY KEY,
 IDProduto int,
 nomeProduto varchar(100),
 precoProduto numeric(10,2),
 IDCategoria int, 
 dataInicioValidade date not null,
 dataFimValidade date
);

CREATE TABLE DimensaoTempo(
  ChaveTempo int PRIMARY KEY,
  Data Date,
  Dia int,
  Mes int,
  Ano int,
  DiaSemana int,
  Trimestre int
);

CREATE TABLE Fatovendas(
  ChaveVendas int PRIMARY KEY,
  ChaveCliente int references DimensaoCliente (ChaveCliente),
  ChaveProduto int references DimensaoProduto (ChaveProduto),
  ChaveTempo int references DimensaoTempo (ChaveTempo),
  quantidade int,
  precoUnitario Numeric(10,2),
  valorTotal Numeric(10,2)
);