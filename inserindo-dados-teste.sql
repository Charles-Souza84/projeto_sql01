# Inserindo dados de teste - DML

-- tipos_produtos

INSERT INTO tipos_produtos (tipo) VALUES ('Remedios');
INSERT INTO tipos_produtos (tipo) VALUES ('Cosmeticos');
INSERT INTO tipos_produtos (tipo) VALUES ('Diversos');

-- fabricantes

INSERT INTO fabricantes (fabricante) VALUES ('Roche');
INSERT INTO fabricantes (fabricante) VALUES ('Pfizer');
INSERT INTO fabricantes (fabricante) VALUES ('Palmolive');

-- medicos

INSERT INTO medicos (nome, crm) VALUES ('Alfredo', '123123SP');
INSERT INTO medicos (nome, crm) VALUES ('Fernanda Silva', '456456MG');
INSERT INTO medicos (nome, crm) VALUES ('Yuri Romanov', '789789RJ');

-- clientes

INSERT INTO clientes (nome, endereco, telefone, cep, localidade, cpf) 
	VALUES ('Francisco Souto','Rua Marechal Teodoro, 18','(11) 2345-5678', '12.345-678', 'São Paulo', '123.456.789-11');
INSERT INTO clientes (nome, endereco, telefone, cep, localidade, cpf) 
	VALUES ('Ricardo Assis','Rua Principal, 689','(12) 1234-5678', '12.567-000', 'Lorena', '123.777.123-89');
INSERT INTO clientes (nome, endereco, telefone, cep, localidade, cpf) 
	VALUES ('Julia Santos','Rua Investida, 103','(21) 4567-5678', '34.000-678', 'Rio de Janeiro', '345.098.128-91');

-- produtos
# ao criar as tabelas, o campo fabricante foi digitado errado. corrigindo o nome da coluna:

ALTER TABLE produtos RENAME COLUMN id_frabricante TO id_fabricante;

INSERT INTO produtos (nome, designacao, composicao, preco_venda, id_tipo_produto, id_fabricante) 
	VALUES ('Dipirona', 'Dores em geral', 'Metilpropileno', '12.44', 1, 1);
INSERT INTO produtos (nome, designacao, composicao, preco_venda, id_tipo_produto, id_fabricante) 
	VALUES ('Sabonete', 'Higiene Pessoal', 'Glicerina', '3.18', 2, 2);
INSERT INTO produtos (nome, designacao, composicao, preco_venda, id_tipo_produto, id_fabricante) 
	VALUES ('Protetor Solar', 'Protetor Solar', 'Soro de abacate', '76.90', 2, 3);

-- compras

INSERT INTO compras (id_cliente, data) VALUES (1, '2022-06-18');
INSERT INTO compras (id_cliente, data) VALUES (2, '2022-03-22');
INSERT INTO compras (id_cliente, data) VALUES (1, '2022-01-04');

-- produtos_compra

INSERT INTO produtos_compra (id_compra, id_produto, quantidade) VALUES (1, 1, 2);
INSERT INTO produtos_compra (id_compra, id_produto, quantidade) VALUES (1, 2, 3);
INSERT INTO produtos_compra (id_compra, id_produto, quantidade) VALUES (2, 3, 2);

-- receitas_medica

INSERT INTO receitas_medica (id_produto_compra, id_medico, receita) VALUES (1, 1, 'receita1.pdf');
INSERT INTO receitas_medica (id_produto_compra, id_medico, receita) VALUES (3, 2, 'receita2.pdf');





























 