CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
	id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255) NOT NULL,
    perecivel BOOLEAN,
    generico BOOLEAN
);

CREATE TABLE tb_produto(
	nome VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2),
	controlado BOOLEAN,
	ativo BOOLEAN,
    pk_categoria INT NOT NULL,
    FOREIGN KEY (pk_categoria) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_categoria (categoria, perecivel, generico) VALUES
("MEDICAMENTO",FALSE,TRUE),
("MEDICAMENTO",FALSE,FALSE),
("SUPLEMENTO",FALSE,TRUE),
("VITAMINA",FALSE,TRUE),
("VITAMINA",TRUE,TRUE),
("COSMETICOS",FALSE,TRUE);

INSERT INTO tb_produto (nome, marca, preco, controlado, ativo, pk_categoria) VALUES
("ANALGÉSICO", "DIPIRONA", 15.98, FALSE, TRUE, 1),
("ISOTRTINOÍNA", "ROACUTAN", 61.15, TRUE, TRUE, 2),
("CREATINA", "BLACK SKULL", 47.00, FALSE, TRUE, 3),
("VITAMINA C", "VITER C", 5.99, FALSE ,TRUE, 4),
("COMPLEXO B", "CENTRUM", 11.90, FALSE, TRUE, 5),
("PROTETOR SOLAR", "NIVEA", 33.90, FALSE, TRUE, 6),
("PROTETOR SOLAR", "SUMMER", 83.90, FALSE, TRUE, 6);

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE nome LIKE '%B%';

SELECT * FROM tb_produto
INNER JOIN tb_categoria
ON tb_categoria.id_categoria = tb_produto.pk_categoria;

SELECT * FROM tb_produto
INNER JOIN tb_categoria
ON tb_categoria.id_categoria = tb_produto.pk_categoria WHERE tb_categoria.categoria = "COSMETICOS";