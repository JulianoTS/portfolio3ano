CREATE DATABASE LOJA;

\c LOJA;

-- Tabela MARCA
CREATE TABLE marca (
    cod_marca SERIAL PRIMARY KEY,
    nome_marca VARCHAR(255) NOT NULL
);

-- Tabela PRODUTO
CREATE TABLE produto (
    cod_prod SERIAL PRIMARY KEY,
    nome_produto VARCHAR(255) NOT NULL,
    cod_marca INTEGER REFERENCES marca(cod_marca),
    preco NUMERIC(10, 2) NOT NULL
);

-- Tabela ESTOQUE
CREATE TABLE estoque (
    cod_prod INTEGER REFERENCES produto(cod_prod),
    qtd_est INTEGER NOT NULL,
    PRIMARY KEY (cod_prod)
);
