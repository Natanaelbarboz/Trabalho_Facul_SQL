/*4. Liste todas as postagens, ordenando pelas que receberam mais curtidas.*/

use mydb;

SELECT 
    postagem.ID,
    postagem.ID_Usuario,
    postagem.Texto_Postagem,
    postagem.Data_Hora,
    COUNT(curtida.ID_Postagem) as Curtidas
FROM 
    postagem
LEFT JOIN 
    curtida ON postagem.ID = curtida.ID_Postagem
GROUP BY 
    postagem.ID, postagem.ID_Usuario, postagem.Texto_Postagem, postagem.Data_Hora;
