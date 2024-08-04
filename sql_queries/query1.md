# Explicação da Query 1

## Descrição
Esta query responde às seguintes perguntas:
1. Quais clientes atendidos pelo vendedor 1 compraram mais de 50 produtos distintos e quais são as suas quantidades totais compradas?
2. Quais são as vendas líquidas totais?
3. Ordena pelo número de itens do maior para o menor.

## Explicação
- **SELECT CLIENTE**: Seleciona o cliente.
- **ROUND(SUM (QUANTIDADE),2) AS QUANTIDADE_TOTAL**: Calcula a quantidade total comprada e arredonda para 2 casas decimais.
- **ROUND(SUM (VENDA_LIQUIDA),2) AS VENDA_LIQUIDA_TOTAL**: Calcula a venda líquida total e arredonda para 2 casas decimais.
- **ROUND(COUNT (DISTINCT PRODUTO),2) AS ITENS_COMPRADOS**: Conta o número distinto de produtos comprados e arredonda para 2 casas decimais.
- **FROM VENDAS_ANALITICAS**: Especifica a tabela de origem dos dados.
- **WHERE VENDEDOR = 1**: Filtra os dados para o vendedor 1.
- **GROUP BY CLIENTE**: Agrupa os resultados por cliente.
- **HAVING COUNT (DISTINCT PRODUTO) > 50**: Filtra os grupos para aqueles com mais de 50 produtos distintos comprados.
- **ORDER BY ITENS_COMPRADOS DESC**: Ordena os resultados pelo número de itens comprados, do maior para o menor.
