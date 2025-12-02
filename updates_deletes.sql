-- UPDATE 1: Atualizar email de um cliente
UPDATE clientes
SET email = 'ana.souza.atualizado@gmail.com'
WHERE id_cliente = 1;

-- UPDATE 2: Reajustar preço de um produto
UPDATE produtos
SET preco = preco * 1.10
WHERE id_produto = 2;

-- UPDATE 3: Aumentar estoque de um produto
UPDATE produtos
SET estoque = estoque + 10
WHERE id_produto = 1;

-- DELETE 1: Remover item de pedido específico
DELETE FROM itens_pedido
WHERE id_item = 5;

-- DELETE 2: Remover pedido (depende que itens já tenham sido excluídos antes)
DELETE FROM pedidos
WHERE id_pedido = 3;

-- DELETE 3: Apagar cliente sem pedidos
DELETE FROM clientes
WHERE id_cliente = 3;
