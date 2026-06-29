


/******************************************************************************
Consulta 1 - Total Pago por Fornecedor
******************************************************************************/

SELECT
	dim_fornecedor.nome_fornecedor,
	SUM(fato_contas_pagar.valor_pago) AS total_pago
FROM fato_contas_pagar
INNER JOIN dim_fornecedor
	ON fato_contas_pagar.id_fornecedor = dim_fornecedor.id_fornecedor
GROUP BY dim_fornecedor.nome_fornecedor;



/******************************************************************************
Consulta 2 - Top 10 Clientes por Valor Recebido
******************************************************************************/

 SELECT TOP 10
	dim_cliente.nome_cliente,
	SUM(fato_recebimentos.valor_recebido) AS total_recebido
FROM fato_recebimentos
INNER JOIN dim_cliente
	ON fato_recebimentos.id_cliente = dim_cliente.id_cliente
GROUP BY dim_cliente.nome_cliente

ORDER BY total_recebido DESC;


