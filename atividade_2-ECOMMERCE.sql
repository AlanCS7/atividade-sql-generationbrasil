CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE produtos(
	id BIGINT(5) AUTO_INCREMENT PRIMARY KEY,
    tipoProduto VARCHAR(255),
    tamanho VARCHAR(255),
    marca VARCHAR(255),
    preco DECIMAL(10,2)
);

INSERT INTO produtos (tipoProduto, tamanho, marca, preco)
VALUES
("Tenis","42","Nike",559.99),
("Camisa","M","Adidas",95.90),
("Boné","Tamanho Único","Tommy",190.90),
("Chinelo","39","Havaiana",49.00),
("Computador","40cm x 62cm","Lenovo",3249.99);

SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET tamanho = 39 WHERE id = 1;

SELECT * FROM produtos;