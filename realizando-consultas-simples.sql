# Realizando consultas simples

-- tipos_produtos

SELECT * FROM tipos_produtos;
SELECT id, tipo FROM tipos_produtos;
SELECT tipo, id FROM tipos_produtos;
SELECT id, tipo FROM tipos_produtos ORDER BY tipo DESC;

-- fabricantes

SELECT * FROM fabricantes;

-- medicos

SELECT * FROM medicos;

-- clientes

SELECT * FROM clientes;

-- compras

SELECT * FROM compras;

-- produtos_compra

SELECT * FROM produtos_compra;
SELECT * FROM produtos_compra WHERE quantidade > 2;
-- receitas_medica

SELECT * FROM receitas_medica;


