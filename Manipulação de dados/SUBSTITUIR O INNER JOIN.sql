---- SUBSTITUIR O INNER JOIN

SELECT
V.MATRICULA AS MATRICULA_VENDEDORES, TVF.MATRICULA AS MATRICULA_FONTE, V.FERIAS AS FERIAS_VENDEDORES, TVF.DE_FERIAS AS FERIAS_FONTE
FROM
VENDEDORES V
INNER JOIN
TABELA_DE_VENDEDORES_FONTE TVF
ON V.MATRICULA = SUBSTR(TVF.MATRICULA, 3, 3);

--- EXISTS FAZ EU JUNTAR DUAS TABELAS SEM USAR O INNER JOIN (EXISTS COMO SE FOSSE UMA CONDIÇÃO)
SELECT V.MATRICULA AS MATRICULA_VENDEDORES, 
V.FERIAS AS FERIAS_VENDEDORES
FROM VENDEDORES V
WHERE EXISTS
( 
SELECT 1 FROM TABELA_DE_VENDEDORES_FONTE TVF
WHERE V.MATRICULA = SUBSTR(TVF.MATRICULA, 3, 3)
);


INSERT INTO TABELA_DE_VENDEDORES_FONTE
VALUES ('00239', 'Jose Maria', 0.12, TO_DATE('2018-01-01', 'YYYY-MM-DD'), 1, 'Tijuca');

-- TRAZER TODO MUNDO DA DIREITA
SELECT V.MATRICULA AS MATRICULA_VENDEDORES, TVF.MATRICULA AS MASTRICULA_FONTE,
V.FERIAS AS FERIAS_VENDEDORES, TVF.DE_FERIAS AS FERIAS_FONTE
FROM VENDEDORES V RIGHT JOIN TABELA_DE_VENDEDORES_FONTE TVF 
ON V.MATRICULA  = SUBSTR(TVF.MATRICULA, 3, 3);


SELECT V.MATRICULA AS MATRICULA_VENDEDORES, TVF.MATRICULA AS MASTRICULA_FONTE,
V.FERIAS AS FERIAS_VENDEDORES, TVF.DE_FERIAS AS FERIAS_FONTE
FROM VENDEDORES V INNER JOIN TABELA_DE_VENDEDORES_FONTE TVF ON V.MATRICULA SUBSTR(TVF.MATRICULA, 3, 3);
