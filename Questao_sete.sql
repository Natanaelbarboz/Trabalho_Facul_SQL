
/*7. Lista as conversas do chat, exibindo os nomes dos usuários envolvidos na conversa.*/

use mydb;
SELECT TB_Chat.ID, TB_Chat.ID_Remetente,
 TB_Usuario1.Nome AS Nome_Remetente,
 TB_Chat.ID_Destinatario, TB_Usuario2.Nome AS Nome_Destinatario,
 TB_Chat.Data_Hora 
FROM chat TB_Chat
JOIN usuario TB_Usuario1 ON TB_Chat.ID_Remetente = TB_Usuario1.ID
JOIN usuario TB_Usuario2 ON TB_Chat.ID_Destinatario = TB_Usuario2.ID;