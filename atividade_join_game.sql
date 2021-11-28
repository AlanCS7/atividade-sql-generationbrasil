CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id_classe INT AUTO_INCREMENT PRIMARY KEY,
	tipo_personagem VARCHAR(255),
	magia BOOLEAN
);

CREATE TABLE tb_personagem(
	id_personagem INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
	forca INT NOT NULL,
    defesa INT NOT NULL,
    id_cla_pers INT NOT NULL,
	FOREIGN KEY(id_cla_pers) REFERENCES tb_classe(id_classe)
); 

INSERT INTO tb_classe (tipo_personagem, magia) VALUES
("Arqueiro", FALSE),
("Rei Barbaro", TRUE),
("Golem", FALSE),
("Lançador", FALSE),
("Goblin", TRUE);

INSERT INTO tb_personagem(nome, forca, defesa, id_cla_pers) VALUES
("Flok", 1000, 800, 4),
("Dermog", 3000, 2500, 3),
("Roberto Carlos", 2000, 1800, 5),
("MC Donalds", 1000, 1100, 1),
("Bk", 900, 400, 2),
("Moisés", 1500, 1200, 4),
("Sarumaninho", 2900, 3000, 2),
("Tom", 10000, 10000, 1);

SELECT * FROM tb_personagem WHERE forca > 2000;

SELECT * FROM tb_personagem WHERE forca > 1000 AND forca < 2000;

SELECT * FROM tb_personagem WHERE nome LIKE '%C%';

SELECT * FROM tb_personagem 
	INNER JOIN tb_classe
ON tb_personagem.id_cla_pers = tb_classe.id_classe;

SELECT * FROM tb_personagem 
	INNER JOIN tb_classe
ON tb_personagem.id_cla_pers = tb_classe.id_classe 
	WHERE tb_classe.tipo_personagem = "Arqueiro";