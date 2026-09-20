-- POPULANDO USUARIO
INSERT INTO Usuario (CPF, Nome, Email_Institucional, Senha)VALUES
('111.222.333-44','Ana Beatriz Lima', 'ana.lima@ucb.br','$2y$10$exemploHashAna'),
('222.333.444-55','Carlos Eduardo Reis','carlos.reis@ucb.br','$2y$10$exemploHashCarlos'),
('333.444.555-66','Fernanda Alves Souza','fernanda.souza@ucb.br','$2y$10$exemploHashFernanda');

-- POPULANDO FUNCIONARIO
INSERT INTO Funcionario (Cargo, Setor, ID_Usuario) VALUES
('Assistente Administrativo','Secretaria Academica',1),
('Agente de Portaria','Portaria',2);

-- POPULANDO ADMINISTRADOR
INSERT INTO Administrador (Nivel_Acesso, ID_Usuario)VALUES
('Administrador', 3);

-- POPULANDO OBJETO
INSERT INTO Objeto
(Descricao_Generica,Detalhes_Sensiveis,Categoria,Data_Achado,Hora_Achado,Campus,Bloco,Ambiente,Status_Atual,Data_Limite_Guarda,Data_Cadastro,Hora_Cadastro,ID_Usuario)VALUES
('Mochila preta','Contem notebook e carteira de estudante','Bolsas e Mochilas','2026-08-10','14:30:00','Campus Taguatinga','Bloco A','Sala 204','Disponivel','2026-09-10','2026-08-10','14:31:00',1),
('Garrafa termica',NULL,'Utensilios','2026-08-12','09:15:00','Campus Taguatinga','Biblioteca','2 andar','Em analise de posse','2026-09-12','2026-08-12','09:16:00',3),
('Oculos de grau','Armacao azul com estojo','Acessorios','2026-08-15','17:45:00','Campus Taguatinga','Bloco Central','Portaria Principal','Devolvido','2026-09-15','2026-08-15','17:46:00',2);

-- POPULANDO FOTO
INSERT INTO Foto (ID_Objeto, Numero_Foto, Caminho_Foto, Descricao)VALUES
(1,1,'/uploads/objetos/mochila_preta_01.jpg','Vista frontal da mochila'),
(2,1,'/uploads/objetos/garrafa_termica_01.jpg','Garrafa termica'),
(3,1,'/uploads/objetos/oculos_grau_01.jpg','Oculos de grau com estojo');

-- POPULANDO PERGUNTA_SEGURANCA
INSERT INTO Pergunta_Seguranca (Texto_Pergunta,Resposta_Esperada,ID_Objeto)VALUES

('Qual a marca do notebook dentro da mochila?','Dell',1),
('Qual o nome gravado na carteira de estudante?','Joao Pedro Martins',1);

-- POPULANDO RETIRANTE
INSERT INTO Retirante (Nome_Completo,Documento_Identificacao,Telefone) VALUES
( 'Joao Pedro Martins', '1234567-8', '(61) 99999-1111'),
('Marina Costa Pinto', '9876543-2', '(61) 98888-2222');

-- POPULANDO REIVINDICACAO
INSERT INTO Reivindicacao (Data_Reivindicacao, Status_Reivindicacao, Observacao, ID_Retirante, ID_Objeto)VALUES
('2026-08-19 15:30:00', 'Aprovada', 'Retirante respondeu corretamente as perguntas de seguranca.', 2, 3);

-- POPULANDO DEVOLUCAO
INSERT INTO Devolucao (ID_Objeto, ID_Retirante, ID_Usuario, ID_Reivindicacao, Data_Devolucao, Assinatura_Digital)VALUES
(3, 2, 2, 1, '2026-08-20 10:00:00', 'ASSINATURA-DIGITAL-0001');

-- POPULANDO LOG_AUDITORIA
INSERT INTO Log_Auditoria (Acao_Realizada, Data_Hora_Acao, ID_Usuario) VALUES 
('Cadastro de objeto encontrado', '2026-08-10 14:31:00', 1),
('Registro de reivindicacao','2026-08-19 15:31:00',2),
('Registro de devolucao','2026-08-20 10:01:00',2);