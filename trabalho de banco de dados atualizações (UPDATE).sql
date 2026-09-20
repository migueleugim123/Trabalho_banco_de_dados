USE achados_perdidos;

-- ATUALIZAÇÃO 1
-- Atualiza o status de um objeto após a devolução
UPDATE Objeto
SET Status_Atual = 'Devolvido'
WHERE ID_Objeto = 3;


-- ATUALIZAÇÃO 2
-- Corrige o setor de um funcionário
UPDATE Funcionario
SET Setor = 'Coordenacao de Patrimonio'
WHERE ID_Funcionario = 2;


-- ATUALIZAÇÃO 3
-- Corrige o telefone de um retirante
UPDATE Retirante
SET Telefone = '(61) 97777-3333'
WHERE ID_Retirante = 1;


-- ATUALIZAÇÃO 4
-- Estende o prazo de guarda de objetos da categoria Eletronicos que ainda estejam disponiveis
UPDATE Objeto
SET Data_Limite_Guarda = DATE_ADD(Data_Limite_Guarda, INTERVAL 15 DAY)
WHERE Categoria = 'Eletronicos' AND Status_Atual = 'Disponivel';


-- ATUALIZAÇÃO 5
-- Atualiza o status de uma reivindicação
UPDATE Reivindicacao
SET Status_Reivindicacao = 'Aprovada'
WHERE ID_Reivindicacao = 1;