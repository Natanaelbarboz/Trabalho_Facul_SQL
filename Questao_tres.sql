/*3. Liste os comentários, exibindo o usuário e a postagem de origem.*/

use mydb;
SELECT 
    comentario.ID,
    comentario.ID_Postagem,
    comentario.ID_Usuario,
    comentario.Texto_Comentario,
    comentario.Data_Hora,
    usuario.Nome,
    postagem.Texto_Postagem
FROM 
    comentario
JOIN 
    usuario ON comentario.ID_Usuario = usuario.ID
JOIN 
    postagem ON comentario.ID_Postagem = postagem.ID;

