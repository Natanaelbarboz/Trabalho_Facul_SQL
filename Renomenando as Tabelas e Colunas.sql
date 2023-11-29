RENAME TABLE `chat (menssagem privada)` TO chat;
rename table `comentário` to comentario;
rename table `conexão(amigos/seguidores)` to conexao;
rename table `usuário` to usuario;


ALTER TABLE chat
RENAME COLUMN `ID do Destinatário` TO ID_Destinatario,
RENAME COLUMN `ID do Remetente` TO ID_Remetente,
RENAME COLUMN `Texto da Mensagem` TO Texto_Mensagem,
rename column `Data e Hora` to Data_Hora;

select * from conexao;
ALTER TABLE conexao
RENAME COLUMN `ID do Usuário` TO ID_Usuario,
RENAME COLUMN `ID do Amigo` TO ID_Amigo,
rename column `Data da Conexão` to Data_Conexao;

select * from comentario;
ALTER TABLE comentario
rename column `ID da Postagem` to ID_Postagem,
RENAME COLUMN `ID do Usuário` TO ID_Usuario,
RENAME COLUMN `Texto do Comentário` TO Texto_Comentario,
rename column `Data e Hora` to Data_Hora;

select * from curtida;
ALTER TABLE curtida
rename column `ID da Postagem` to ID_Postagem,
RENAME COLUMN `ID do Usuário` TO ID_Usuario,
rename column `Data e Hora` to Data_Hora;

select * from postagem;
ALTER TABLE postagem
RENAME COLUMN `ID do Usuário` TO ID_Usuario,
rename column `Texto da Postagem` to Texto_Postagem,
rename column `Data e Hora` to Data_Hora;

select * from usuario;
ALTER TABLE usuario
RENAME COLUMN `Data de Nascimento` TO Dt_Nascimento,
rename column `Endereço de E-mail` to Email,
rename column `Foto de Perfil` to Foto_Perfil;

