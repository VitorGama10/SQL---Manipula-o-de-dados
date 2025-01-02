-- resolvido o problema da chave primaria
INSERT INTO PRODUTOS
SELECT CODIGO_DO_PRODUTO AS CODIGO
    ,NOME_DO_PRODUTO AS DESCRITOR
    ,SABOR
    ,TAMANHO
    ,EMBALAGEM
    ,PRECO_DE_LISTA AS PRECO_LISTA
FROM TABELA_DE_PRODUTOS_FONTE
WHERE CODIGO_DO_PRODUTO NOT IN ('1040107', '1040115');


-- poderia excluir assim tambem 
INSERT INTO PRODUTOS
SELECT CODIGO_DO_PRODUTO AS CODIGO
    ,NOME_DO_PRODUTO AS DESCRITOR
    ,SABOR
    ,TAMANHO
    ,EMBALAGEM
    ,PRECO_DE_LISTA AS PRECO_LISTA
FROM TABELA_DE_PRODUTOS_FONTE
WHERE NOT (CODIGO_DO_PRODUTO IN (
SELECT
P.CODIGO
FROM
PRODUTOS P
INNER JOIN
TABELA_DE_PRODUTOS_FONTE TPF
ON P.CODIGO = TPF.CODIGO_DO_PRODUTO
));

--- SE ESSE CODIGO TEM NA TABELA PRODUTOS, ELE N VAI DEIXAR PUXAR, POR CONTA DA FORMULA QUE A GENTE FEZ
INSERT INTO TABELA_DE_PRODUTOS_FONTE
VALUES ('99999999', 'Novo Produto', 'Pet', '1 Litro', 'Indefinido', 10);


SELECT * from podutos;



