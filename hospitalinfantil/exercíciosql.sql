CREATE DATABASE hospital;
 
CREATE TABLE criança(
    id INT(5) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    peso DECIMAL(5,2) NOT NULL,
    altura FLOAT NOT NULL,
    datadenasc DATE NOT NULL
);
 
CREATE TABLE mãe(
    id INT (5) PRIMARY KEY,
    datadenasc DATE NOT NULL,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL
);
 
CREATE TABLE nascimento(
    id INT(5) PRIMARY KEY,
    medico VARCHAR(50) NOT NULL,
    idCrianca INT (5) NOT NULL,
    idMae INT (5) NOT NULL
);
 
CREATE TABLE medico(
    id INT(5) PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    especialidade VARCHAR(50) NOT NULL,
    CRM INT(6) NOT NULL
);
 
INSERT INTO medico (id, nome, especialidade, CRM)
VALUES("11245", "Juliana Alves Albulquerque", "Obstretícia", "123584"),
("11246","Pedro da Silva Santos","Nutrologia Pediátrica","658985"),
("11566", "Vinicius Lima de Oliveira","Neonatologia", "458755"),
("11468", "Bruno Paes Chavez", "Obstretícia", "246585");
 
DELETE FROM medico WHERE especialidade = "Neonatologia";
 
DELETE FROM medico;
 
DROP DATABASE hospital;
 