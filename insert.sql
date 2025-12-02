-- Tabela CLIENTES
INSERT INTO clientes (id_cliente, nome, email, telefone)
VALUES 
    (1, 'Ana Souza', 'ana.souza@gmail.com', '11987654321'),
    (2, 'Carlos Mendes', 'carlos.mendes@gmail.com', '11999887766'),
    (3, 'Juliana Rocha', 'juliana.rocha@gmail.com', '11988776655');

-- Tabela PRODUTOS
INSERT INTO produtos (id_produto, nome_produto, preco, estoque)
VALUES
    (1, 'Mouse Gamer', 129.90, 50),
    (2, 'Teclado Mecânico', 349.90, 30),
    (3, 'Monitor 24 Polegadas', 899.00, 20);

-- Tabela PEDIDOS
INSERT INTO pedidos (id_pedido, id_cliente, data_pedido)
VALUES
    (1, 1, '2025-01-10'),
    (2, 2, '2025-01-12'),
    (3, 3, '2025-01-15');

-- Tabela ITENS_PEDIDO
INSERT INTO itens_pedido (id_item, id_pedido, id_produto, quantidade)
VALUES
    (1, 1, 1, 2),
    (2, 1, 2, 1),
    (3, 2, 3, 1),
    (4, 3, 2, 2),
    (5, 3, 1, 1);
