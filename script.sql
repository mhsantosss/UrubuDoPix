-- Criação do Banco de Dados
CREATE DATABASE UrubuDoPix;

-- Conecta ao Banco de Dados
USE UrubuDoPix;

-- Criação de uma Tabela
CREATE TABLE usuario (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nome NVARCHAR(50),
    TransacaoID INT, -- Adiciona a coluna de chave estrangeira
    FOREIGN KEY (TransacaoID) REFERENCES transacao(ID)
);
CREATE TABLE transacao(
    ID INT PRIMARY KEY IDENTITY(1,1),
    Deposito FLOAT,
    Lucro FLOAT,
    Saque FLOAT

)



-- Inserção de Dados na Tabela
-- Inserindo um Usuário sem especificar o ID
INSERT INTO usuario (Nome)
VALUES ('João');

-- Inserindo uma Nova Transação sem especificar o ID
INSERT INTO transacao (Deposito, Lucro, Saque)
VALUES (100.00, 10.00, 20.00);

-- Associando um Usuário à Nova Transação sem especificar o ID
INSERT INTO usuario (Nome)
VALUES ('Carlos');

-- Exemplo de Consulta
SELECT * FROM Pessoas;
