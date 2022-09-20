# Consultas complexas

-- compras
-- passo 01 - trazer as compras 
SELECT * FROM compras;
-- passo 02 - colocar os nomes dos clientes nas compras
SELECT com.id AS 'ID Compra', cli.nome AS 'Nome Cliente', com.data AS 'Data Compra'
FROM compras AS com, clientes AS cli WHERE com.id_cliente = cli.id; 
-- passo 03 - trazer produtos compra
SELECT * FROM produtos_compra;
-- passo 04 - 
SELECT com.id AS 'Venda', 
	cli.nome AS 'Cliente', 
    SUM(prod.preco_venda * proc.quantidade) AS 'Total',
    com.data AS 'Data da Compra'
	FROM produtos_compra AS proc, produtos AS prod, compras AS com , clientes AS cli 
    WHERE com.id = proc.id_compra AND prod.id = proc.id_produto AND cli.id = com.id_cliente
    GROUP BY com.id;
