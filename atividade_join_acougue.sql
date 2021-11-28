CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria (
	id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255),
    ossado BOOLEAN
);

CREATE TABLE tb_produto (
	id_produto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	tipo VARCHAR(255),
    preco DECIMAL(10,2),
    peso DECIMAL(10,2),
    pk_categoria INT NOT NULL
);

INSERT INTO tb_categoria (categoria, ossado) VALUES
("AVE", TRUE),
("AVE", FALSE),
("CARNE", TRUE),
("CARNE", FALSE),
("EMBUTIDO", FALSE),
("LEGUMES", FALSE);

INSERT INTO tb_produto (tipo, preco, peso, pk_categoria) VALUES
("COXA DE FRANGO", 23.99, 6, 1),
("PEITO DE FRANGO", 18.90, 1, 2),
("BISTECA", 39.50, 1.6, 3),
("PICANHA EM BIFE", 82.30, 1.6, 4),
("LINGUIÇA", 23.64, 2.67, 5),
("SALSICHA", 14.49, 3.4, 5),
("CHUCHU", 6.99, 1, 6),
("BETERRABA", 4.65, 1, 6);

SELECT * FROM tb_produto WHERE preco > 50;

SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;

SELECT * FROM tb_produto WHERE tipo LIKE '%C%';

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_categoria.id_categoria = tb_produto.pk_categoria;

SELECT * FROM tb_produto INNER JOIN tb_categoria
ON tb_categoria.id_categoria = tb_produto.pk_categoria
WHERE tb_categoria.categoria = "AVE";