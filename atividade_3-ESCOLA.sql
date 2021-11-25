CREATE DATABASE escola;

USE escola;

CREATE TABLE estudantes (
	id BIGINT(5) AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    materia VARCHAR(255),
    turma VARCHAR(255),
    nota DECIMAL(2,1)
);

INSERT INTO estudantes (nome, materia, turma, nota) 
	VALUES 
("Alan Carlos", "Português", "Turma A", 9),
("Gustavo Galli", "Matemática", "Turma A", 5.7),
("Otavio Tonello", "História", "Turma B", 6.3),
("Murilo Arknan", "Geografia", "Turma C", 7.5),
("Mike Tyson", "Ciencias", "Turma D", 2);

SELECT * FROM estudantes WHERE nota > 7;

SELECT * FROM estudantes WHERE nota < 7;

UPDATE estudantes SET nome = "Murilo Souza" WHERE nome = "Murilo ArkNan";

SELECT * FROM estudantes;