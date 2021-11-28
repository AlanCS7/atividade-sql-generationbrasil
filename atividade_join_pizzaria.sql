CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255),
    vegano boolean
);

CREATE TABLE tb_pizza(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(255) NOT NULL,
	tamanho VARCHAR(255),
    preco DECIMAL,
	id_cat_pizza INT,
    FOREIGN KEY (id_cat_pizza) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_categoria(tipo, vegano) VALUES
("Salgada", FALSE),
("Salgada", TRUE),
("Doce", FALSE),
("Doce", TRUE);

INSERT INTO tb_pizza (sabor, tamanho, preco, id_cat_pizza) VALUES
("Calabresa", "Grande", 50, 1),
("Vegano Brocolis", "Familia", 29, 2),
("Romeu e Julieta", "Grande", 34, 3),
("Chocolate Vegano", "Broto", 22, 4);

SELECT * FROM tb_pizza WHERE preco > 45;

SELECT * FROM tb_pizza WHERE preco > 29 AND preco < 60;

SELECT * FROM tb_pizza WHERE sabor LIKE '%C%';

SELECT * FROM tb_pizza 
	INNER JOIN tb_categoria
ON tb_pizza.id_cat_pizza = tb_categoria.id_categoria;

SELECT * FROM tb_pizza 
	INNER JOIN tb_categoria
ON tb_pizza.id_cat_pizza = tb_categoria.id_categoria
WHERE tb_categoria.tipo = "doce";