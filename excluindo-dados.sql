# Excluindo Dados

SELECT * FROM produtos_compra;

# quando vamos deletar um registro de uma tabela que contém uma fk, devemos devemos nos atentar às tabelas relacionadas
# um registro a ser deletado por conter valor de fk que é utilizado em outra tabela
# no exemplo abaixo a exclusão de um registro da tabela produtos_compra depende da exclusão de um registro na tabela
# receitas_medica, pois esta continha um registro em que o id_produto_compra seria deletado na tabela produtos_compra

DELETE FROM receitas_medica WHERE id_produto_compra = 3;
DELETE FROM produtos_compra WHERE id = 3;
