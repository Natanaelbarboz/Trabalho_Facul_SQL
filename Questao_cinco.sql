/*5. Informe quantas curtidas cada postagem obteve, ordenando pela menor quantidade.*/

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
    postagem.ID, postagem.ID_Usuario, postagem.Texto_Postagem, postagem.Data_Hora
ORDER BY 
	Curtidas ASC;