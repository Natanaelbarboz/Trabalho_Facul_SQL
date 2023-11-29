/*6. Liste as conexões, exibindo os nomes dos usuários, ordenando pela conexão mais antiga para a mais recente.*/

use mydb;
SELECT TB_Conexao.ID,TB_Conexao.ID_Usuario,
 TB_Usuario1.Nome AS Nome_Usuario,
 TB_Conexao.ID_Amigo, TB_Usuario2.Nome AS Nome_Amigo,
 TB_Conexao.Data_Conexao 
FROM conexao TB_Conexao
JOIN usuario TB_Usuario1 ON TB_Conexao.ID_Usuario = TB_Usuario1.ID
JOIN usuario TB_Usuario2 ON TB_Conexao.ID_Amigo = TB_Usuario2.ID
ORDER BY
TB_Conexao.Data_Conexao ASC;