SELECT NOME, SUM([QUANTIDADE]*[PRE�O]*[PERCENTUAL COMISS�O]) AS COMISS�O 
FROM [TABELA DE VENDEDORES] A
INNER JOIN [ITENS NOTAS FISCAIS] B 
ON A.MATRICULA = B.NUMERO
GROUP BY NOME 
ORDER BY NOME