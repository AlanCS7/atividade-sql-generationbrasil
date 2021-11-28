CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255),
    eletrico boolean
);

CREATE TABLE tb_produto(
	id_produto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(15),
    preco DECIMAL(10, 2),
    peso DECIMAL(10, 2),
    pk_categoria INT NOT NULL,
    FOREIGN KEY (pk_categoria) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_categoria (tipo, eletrico) VALUES
("Hidráulico", FALSE),
("Iluminação", TRUE),
("Ferramentas", FALSE),
("Jardim", FALSE);

INSERT INTO tb_produto (nome, preco, peso, pk_categoria) VALUES
("Cano", 39.90, 200, 1),
("Lampada", 51.90, 300, 2),
("Serra", 62.90, 1000, 3),
("Alicate", 14.90, 600, 3),
("Mangueira", 69.90, 2000, 4),
("Marreta", 39.90, 1000, 3),
("Charariz", 215.90, 20000, 4),
("Disjuntor", 9.90, 100, 2);

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto
WHERE preco > 3 AND preco < 60;

SELECT * FROM tb_produto WHERE nome LIKE "%C%";

SELECT * FROM tb_produto 
INNER JOIN tb_categoria 
ON tb_produto.pk_categoria = tb_categoria.id_categoria;

SELECT * FROM tb_produto 
INNER JOIN tb_categoria 
ON tb_produto.pk_categoria = tb_categoria.id_categoria WHERE tb_categoria.tipo = "Hidráulico";