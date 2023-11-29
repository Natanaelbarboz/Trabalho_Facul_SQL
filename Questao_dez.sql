/*10. Exiba o usuário que tem o amigo com a idade mais avançada.*/

USE mydb;

SELECT * FROM conexao;

SELECT 
    TB_Conexao.ID_Usuario, 
    TB_Usuario1.Nome AS Nome_Usuario,
    TB_Usuario1.Dt_Nascimento AS DT_Nascimento_Usuario,
    TB_Conexao.ID_Amigo, 
    TB_Usuario2.Nome AS Nome_Amigo,
    TB_Usuario2.Dt_Nascimento AS DT_Nascimento_Amigo,
    ABS(DATE_FORMAT(TB_Usuario1.Dt_Nascimento, '%Y') - DATE_FORMAT(TB_Usuario2.Dt_Nascimento, '%Y')) AS Diferenca_Idade
FROM 
    conexao TB_Conexao
JOIN 
    usuario TB_Usuario1 ON TB_Conexao.ID_Usuario = TB_Usuario1.ID
JOIN 
    usuario TB_Usuario2 ON TB_Conexao.ID_Amigo = TB_Usuario2.ID
ORDER BY 
    Diferenca_Idade DESC
LIMIT 1;

