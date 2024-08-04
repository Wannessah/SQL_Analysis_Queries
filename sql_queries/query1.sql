-1) Quais clientes atendido pelo vendedor 1, compraram mais de 50 produtos distintos e quais são as suas quantidades totais compradas?
--2) Quais são as vendas líquidas totais?
--3) Ordene pelo número de itens do maior para o menor

SELECT CLIENTE
     , ROUND(SUM (QUANTIDADE),2) AS QUANTIDADE_TOTAL
     , ROUND(SUM (VENDA_LIQUIDA),2) AS VENDA_LIQUIDA_TOTAL
     , ROUND(COUNT (DISTINCT PRODUTO),2) AS ITENS_COMPRADOS
  FROM VENDAS_ANALITICAS 
WHERE VENDEDOR = 1 
GROUP BY  CLIENTE  
  HAVING  COUNT (DISTINCT PRODUTO) > 50
ORDER BY   ITENS_COMPRADOS DESC