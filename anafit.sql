-- CRIANDO BANCO DE DADOS
CREATE DATABASE anafit;

-- criando primeira tabela
 CREATE TABLE cliente(
    cpf BIGINT PRIMARY KEY,
    primeironome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    datanasc DATE NOT NULL,
    peso DECIMAL (5,2),
    altura DECIMAL (3, 2),
    whatsapp VARCHAR(15) NOT NULL, 
    email VARCHAR(100) UNIQUE NOT NULL,
    rua VARCHAR (100) NOT NULL,
    numero INT(6) NOT NULL,
    complemento VARCHAR(100),
    cep VARCHAR(8) NOT NULL
 );


--inserindo dados na tabela de clientes


INSERT INTO cliente(cpf, primeironome, sobrenome, datanasc, peso, altura, whatsapp, email, rua, numero, complemento, cep)
VALUES(12345678910, 'Ana Claudia','Cunha', '2014-09-17', 63.50, 1.73, '+55989898988', 'anacscunha1@senacsp.edu.br', 'Rua Dr Antonio Bento', 393, NULL, '04750000');

--Crie a tabela treino

CREATE TABLE treino(
    diadasemana DATE NOT NULL,
    horario DATETIME NOT NULL,
    tipo VARCHAR(50) NOT NULL
);

-- Inserindo dois dados ao mesmo tempo

INSERT INTO treino(diadasemana, horario, tipo)
VALUES 
('2025-03-11', '2025-03-11 14:30:00', 'treino de ombro'),
('2025-03-12', '2025-03-12 10:00:00', 'treino de perna');

-- Deeletando TODOS os registros da tabela
DELETE FROM treino;

--Deletando um dado/registro especifio na tabela
DELETE FROM treino WHERE tipo = 'treino de perna'
-- Deletar tabela

DROP TABLE treino;
DROP TABLE cliente;
DROP DATABASE anafit;
 
