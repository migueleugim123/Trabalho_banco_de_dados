# Sistema de Achados e Perdidos

## Sobre o projeto

O Sistema de Achados e Perdidos tem como objetivo auxiliar no gerenciamento de objetos encontrados dentro de uma instituição, permitindo o cadastro, organização, consulta, reivindicação e devolução dos objetos.

O banco de dados foi desenvolvido para centralizar as informações dos objetos encontrados, usuários responsáveis pelos registros, retirantes, reivindicações, devoluções, fotos, perguntas de segurança e registros de auditoria.

## Objetivo

Desenvolver um banco de dados capaz de organizar e controlar o processo de gerenciamento de objetos encontrados, facilitando:

- Cadastro de objetos encontrados;
- Registro de fotos dos objetos;
- Cadastro de perguntas de segurança;
- Identificação de possíveis proprietários;
- Registro de reivindicações;
- Controle das devoluções;
- Registro dos usuários responsáveis pelas operações;
- Auditoria das ações realizadas no sistema.

## Estrutura do Banco de Dados

O banco de dados utiliza o MySQL como SGBD.

O sistema é composto pelas seguintes tabelas:

- `Usuario`
- `Funcionario`
- `Administrador`
- `Objeto`
- `Foto`
- `Pergunta_Seguranca`
- `Retirante`
- `Reivindicacao`
- `Devolucao`
- `Log_Auditoria`

A tabela `Usuario` possui uma generalização para as entidades `Funcionario` e `Administrador`.

A tabela `Foto` representa uma entidade fraca relacionada à tabela `Objeto`.

