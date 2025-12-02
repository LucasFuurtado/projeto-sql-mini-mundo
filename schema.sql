-- ======================================================
-- CRIAÇÃO DO BANCO DE DADOS (opcional)
-- ======================================================

CREATE DATABASE IF NOT EXISTS mini_mundo;
USE mini_mundo;

-- ======================================================
-- TABELA: CLIENTES
-- ======================================================

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) UNIQUE NOT NULL,
    telefone VARCHAR(15)
);

-- ======================================================
-- TABELA: PRODUTOS
-- ======================================================

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT DEFAULT 0
);

-- ======================================================
-- TABELA: PEDIDOS
-- ======================================================

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    data_pedido DATE NOT NULL,

    FOREIGN KEY (id_cliente) 
        REFERENCES clientes(id_cliente)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- ======================================================
-- TABELA: ITENS_PEDIDO
-- ======================================================

CREATE TABLE itens_pedido (
    id_item INT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,

    FOREIGN KEY (id_pedido) 
        REFERENCES pedidos(id_pedido)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (id_produto) 
        REFERENCES produtos(id_produto)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
