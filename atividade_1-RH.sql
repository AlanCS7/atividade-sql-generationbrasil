CREATE DATABASE rh;

USE rh;

CREATE TABLE funcionarios (
	id BIGINT(5) AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    cargo VARCHAR(255),
    salario DECIMAL(10,2)
);

SELECT * FROM funcionarios;

INSERT INTO funcionarios (nome, email, cargo, salario) 
	VALUES 
("Alan Carlos", "alan@gmail.com", "Desenvolvedor Full Stack Java Junior", 6200),
("Gustavo Galli", "gustavo@gmail.com", "Estagiário", 900),
("Otavio Tonello", "otavio@gmail.com", "Desenvolvedor Webr", 4300),
("Murilo Arknan", "murilo@gmail.com", "Padeiro", 1900),
("Mike Tyson", "mike@gmail.com", "Diretor Executivo", 25300);

SELECT * FROM funcionarios WHERE salario > 2000;

SELECT * FROM funcionarios WHERE salario < 2000;

SET SQL_SAFE_UPDATES =0;
UPDATE funcionarios SET cargo = "Gerente" WHERE email = "murilo@gmail.com";

SELECT * FROM funcionarios;