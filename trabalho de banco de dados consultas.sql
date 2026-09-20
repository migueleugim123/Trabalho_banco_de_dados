USE achados_perdidos;

-- CONSULTA 1
-- Lista os objetos e o usuario responsavel pelo cadastro
SELECT o.ID_Objeto, o.Descricao_Generica, o.Categoria, o.Status_Atual, u.Nome AS Cadastrado_Por FROM Objeto o
JOIN Usuario u ON o.ID_Usuario = u.ID_Usuario;


-- CONSULTA 2
-- Lista todos os objetos e, quando existir, os dados da respectiva devolucao
SELECT o.ID_Objeto, o.Descricao_Generica, o.Status_Atual, d.Data_Devolucao, r.Nome_Completo AS Retirado_Por FROM Objeto o
LEFT JOIN Devolucao d ON o.ID_Objeto = d.ID_Objeto
LEFT JOIN Retirante r ON d.ID_Retirante = r.ID_Retirante;


-- CONSULTA 3
-- Lista os objetos que ainda estao disponiveis, ordenados pela data limite de guarda
SELECT ID_Objeto,Descricao_Generica,Categoria,Campus, Bloco, Ambiente, Data_Limite_Guarda FROM Objeto
WHERE Status_Atual = 'Disponivel'
ORDER BY Data_Limite_Guarda ASC;


-- CONSULTA 4
-- Mostra a quantidade de objetos cadastrados por categoria
SELECT Categoria, COUNT(*) AS Total_Objetos FROM Objeto
GROUP BY Categoria
ORDER BY Total_Objetos DESC;


-- CONSULTA 5
-- Lista as reivindicacoes, os retirantes e os respectivos objetos
SELECT r.ID_Reivindicacao,rt.Nome_Completo AS Retirante,o.Descricao_Generica AS Objeto,r.Data_Reivindicacao,r.Status_Reivindicacao FROM Reivindicacao r
JOIN Retirante rt ON r.ID_Retirante = rt.ID_Retirante
JOIN Objeto o ON r.ID_Objeto = o.ID_Objeto;


-- CONSULTA 6
-- Lista as devolucoes com o objeto, retirante e usuario responsavel pelo registro
SELECT d.ID_Devolucao,o.Descricao_Generica AS Objeto,r.Nome_Completo AS Retirante,u.Nome AS Usuario_Responsavel,d.Data_Devolucao FROM Devolucao d
JOIN Objeto o ON d.ID_Objeto = o.ID_Objeto
JOIN Retirante r ON d.ID_Retirante = r.ID_Retirante
JOIN Usuario u ON d.ID_Usuario = u.ID_Usuario;