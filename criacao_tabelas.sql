
/******************************************************************************
Projeto: Modelo Dimensional para Controle Financeiro
Autor: Thainara Geraldini
Descrição: Script de criação das tabelas do modelo dimensional.
******************************************************************************/

--Tabela Dimensão Cliente
CREATE TABLE dim_cliente(
id_dim INT IDENTITY (1,1) PRIMARY KEY,
id_cliente INT, 
nome_cliente VARCHAR (100),
razao_social VARCHAR (150),
cidade VARCHAR (100),
estado VARCHAR (100),
);


-- Tabela Dimensão Fornecedor
CREATE TABLE dim_fornecedor (
    id_dim INT IDENTITY (1,1) PRIMARY KEY,
    id_fornecedor VARCHAR (20) NOT NULL,
    nome_fornecedor VARCHAR (150) NULL
);

-- Tabela Dimensão Produto
CREATE TABLE dim_produto(
	id_produto INT IDENTITY(1,1) NOT NULL,
	codigo_produto VARCHAR (50) NULL,
	nome_produto VARCHAR (150) NULL,
PRIMARY KEY CLUSTERED (id_produto ASC)
);

-- Tabela Fato Contas a Pagar
CREATE TABLE fato_contas_pagar(
id_fato INT IDENTITY (1,1) PRIMARY KEY,
id_fornecedor VARCHAR (20),
data_competencia DATE,
data_vencimento DATE,
data_pagamento DATE,
valor_original DECIMAL (10,2),
valor_pago DECIMAL (10,2),
valor_total_pago DECIMAL (10,2)
);

--Tabela Fato Contas a Receber
CREATE TABLE fato_recebimentos(
id_fato INT IDENTITY (1,1) PRIMARY KEY,
nome_do_cliente VARCHAR (150),
id_cliente VARCHAR (50),
data_vencimento DATE, 
valor_original_parcela DECIMAL (10,2),
valor_recebido DECIMAL (10,2)
);


