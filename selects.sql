-- Seleciona todos os clientes
SELECT * FROM clientes;

-- Produtos com valor acima de 200
SELECT nome_produto, preco
FROM produtos
WHERE preco > 200;

-- Pedidos ordenados por data (mais recentes primeiro)
SELECT *
FROM pedidos
ORDER BY data_pedido DESC;

-- Consulta com JOIN: pedidos + nome do cliente
SELECT p.id_pedido, c.nome, p.data_pedido
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente;

-- Produtos com menor estoque (limit 2)
SELECT nome_produto, estoque
FROM produtos
ORDER BY estoque ASC
LIMIT 2;
