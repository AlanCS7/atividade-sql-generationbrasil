CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255),
    bolsa BOOLEAN
);

CREATE TABLE tb_curso (
	id_curso INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(15),
    preco DECIMAL(10, 2),
    professor VARCHAR(15),
    pk_categoria INT NOT NULL,
    FOREIGN KEY (pk_categoria) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_categoria (tipo, bolsa) VALUES
("EAD", FALSE),
("SEMI-PRESENCIAL", FALSE),
("PRESENCIAL", FALSE),
("EAD", TRUE),
("SEMI-PRESENCIAL", TRUE),
("PRESENCIAL", TRUE);

SELECT * FROM tb_categoria;

INSERT INTO tb_curso (nome, preco, professor, pk_categoria) VALUES
("Full Stack Java", 2539.90, 200, 1),
("Front-end", 1051.90, 300, 2),
("Back-End", 1562.90, 1000, 3),
("Redes", 1314.90, 600, 4),
("SO", 769.90, 2000, 5),
("Linux", 639.90, 1000, 6);

SELECT * FROM tb_curso WHERE preco > 900;

SELECT * FROM tb_curso
WHERE preco > 300 AND preco < 1500;

SELECT * FROM tb_curso WHERE nome LIKE "%J%";

SELECT * FROM tb_curso 
INNER JOIN tb_categoria 
ON tb_curso.pk_categoria = tb_categoria.id_categoria;

SELECT * FROM tb_curso 
INNER JOIN tb_categoria 
ON tb_curso.pk_categoria = tb_categoria.id_categoria WHERE tb_categoria.tipo = "EAD";