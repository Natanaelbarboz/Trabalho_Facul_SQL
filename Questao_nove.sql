/*9. Informe qual a postagem que obteve maior engajamento, ou seja,  a que recebeu mais curtidas.*/

USE	 mydb;
SELECT
    postagem.ID AS ID_Postagem,
    postagem.Texto_Postagem,
    COUNT(curtida.ID) AS Num_de_Curtidas
FROM
    postagem
LEFT JOIN
    curtida ON postagem.ID = curtida.ID_Postagem
GROUP BY
    postagem.ID, postagem.Texto_Postagem
ORDER BY
    Num_de_Curtidas DESC
LIMIT 1;