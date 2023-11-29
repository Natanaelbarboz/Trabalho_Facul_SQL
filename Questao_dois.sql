/*Liste as postagens, exibindo os nomes dos usuários, ordenando pelas mais recentes.*/

use mydb;
select postagem.ID, postagem.ID_Usuario, postagem.Texto_Postagem, postagem.Data_Hora, usuario.Nome
from postagem
join usuario
on postagem.ID_Usuario = usuario.ID
order by Data_Hora desc;
