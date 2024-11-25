SELECT nome FROM cliente
WHERE idmunicipio = (
    SELECT idmunicipio FROM cliente
    WHERE nome = '1'
) AND nome <> '1';

SELECT data_pedido, valor FROM pedido
WHERE valor < (SELECT AVG(valor) FROM pedido);

SELECT data_pedido, valor, idcliente, idvendedor FROM pedido
WHERE idpedido IN (
    SELECT idpedido
    FROM pedido_produto
    GROUP BY idpedido
    HAVING COUNT(idproduto) >= 2
);

SELECT nome FROM cliente
WHERE idmunicipio = (
    SELECT idmunicipio
    FROM transportadora
    WHERE nome = '1'
);

SELECT nome, idmunicipio FROM cliente
WHERE idmunicipio IN (
    SELECT idmunicipio FROM transportadora
);

UPDATE pedido
SET valor = valor * 1.05
WHERE idpedido IN (
    SELECT idpedido FROM pedido_produto
    GROUP BY idpedido
    HAVING SUM(valor) > (
        SELECT AVG(total)
        FROM (
            SELECT idpedido, SUM(valor) AS total
            FROM pedido_produto
            GROUP BY idpedido
        ) AS subquery
    )
);

SELECT c.nome, COUNT(p.idpedido) AS quantidade_pedido
FROM cliente c
JOIN pedido p ON c.idcliente = p.idcliente
GROUP BY c.nome;

SELECT c.nome, COUNT(p.idpedido) AS quantidade_pedido
FROM cliente c
JOIN pedido p ON c.idcliente = p.idcliente
GROUP BY c.nome
HAVING COUNT(p.idpedido) >= 1;







