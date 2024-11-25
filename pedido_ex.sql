SELECT vendedor FROM vendedor 
ORDER BY nome ASC;

SELECT produto, valor FROM produto 
WHERE valor > 200 
ORDER BY valor ASC;

SELECT produto, valor, valor * 1.10 AS preco_reajustado FROM produto 
ORDER BY nome ASC;

SELECT municipio FROM municipio 
WHERE iduf = '5';

SELECT * FROM pedido 
WHERE data_pedido BETWEEN '2008-04-10' AND '2008-04-25' 
ORDER BY valor ASC;

SELECT * FROM pedido
WHERE valor BETWEEN 1000 AND 1500;

SELECT * FROM pedido
WHERE valor NOT BETWEEN 100 AND 500;

SELECT pedido, idvendedor FROM pedido WHERE idvendedor = '1'
ORDER BY pedido ASC;

SELECT pedido, idcliente FROM pedido WHERE idcliente = '1'
ORDER BY valor ASC;

SELECT * FROM pedido 
WHERE idcliente = (SELECT idcliente FROM cliente WHERE nome = '15') 
AND idvendedor = (SELECT idvendedor FROM vendedor WHERE nome = '1');

SELECT * FROM pedido 
WHERE idtransportadora = (SELECT idtransportadora FROM transportadora WHERE nome = '2');

SELECT * FROM pedido 
WHERE idvendedor IN (SELECT idvendedor FROM vendedor WHERE nome IN ('5', '7'));

SELECT * FROM cliente 
WHERE idmunicipio IN ('9', '1');

SELECT * FROM cliente 
WHERE idmunicipio NOT IN ('9', '1');

SELECT * FROM cliente 
WHERE logradouro IS NULL;

SELECT * FROM cliente 
WHERE logradouro LIKE 'Avenida%';

SELECT * FROM vendedor 
WHERE nome NOT LIKE 'A%';

SELECT * FROM vendedor
WHERE nome LIKE '%A';

SELECT * FROM cliente 
WHERE nome NOT LIKE 'M%';

SELECT * FROM fornecedor 
WHERE idfornecedor IS NOT NULL;

SELECT * FROM pedido_produto 
WHERE idpedido = 1;

SELECT * FROM pedido_produto
WHERE idpedido IN (6, 10);






















