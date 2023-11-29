 /*1. Liste todos os usuários cadastrados em ordem alfabética.*/
 use mydb;
 /*Oerdnando pelo nome*/
 select * from usuario order by Nome;
 
 /*Ordenando pelo nome de forma decrecente*/ 
 select * from usuario order by Nome desc; 
 
 /*Ordenando pelo nome de forma ascendente*/
 select * from usuario order by Nome asc;
 
 