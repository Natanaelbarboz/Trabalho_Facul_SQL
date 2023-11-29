/*8. Informe qual o usuário que realizou mais postagens e a sua quantidade.*/

USE	 mydb;
SELECT
    usuario.ID AS ID_Usuario,
    usuario.Nome,
    COUNT(postagem.ID) AS Num_de_Postagens
FROM
    usuario
LEFT JOIN
    postagem ON usuario.ID = postagem.ID_Usuario
GROUP BY
    usuario.ID, usuario.Nome
ORDER BY
    Num_de_Postagens DESC
LIMIT 1;