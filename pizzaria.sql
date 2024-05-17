CREATE DATABASE db_pizzaria;

USE db_pizzaria;

CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas(
	id BIGINT AUTO_INCREMENT,
	descricao VARCHAR(255),
	nome VARCHAR(255),
	preco DECIMAL,
	id_categoria BIGINT,
    PRIMARY KEY(id), 
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome, tipo) VALUES
("Monte sua pizza", "Salgada"),
("Monte sua pizza", "Doce"),
("Mais pedidas", "Salgada"),
("Mais pedidas", "Doce"),
("Clássicas", "Salgada"),
("Especiais", "Salgadas");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas(nome, descricao, preco, id_categoria) VALUES
("3 queijos", "Queijo, Requeijão, Oregano e Parmesão ralado.", 47.90, 3),
("Calabresa", "Queijo, Calabresa e Cebola, Oregano.", 42.90, 3),
("Margherita", "Queijo, Tomate, Oregano e Manjericão.", 51.99, 3),
("Frango com Cream Cheese", "Queijo, Frango desfiado, Cream cheese, Oregano e Parmesão ralado.", 53.45, 5),
("4 queijos", "Queijo, Requeijão, Gorgonzola, Oregano e Parmesão ralado.", 42.20, 5),
("Portuguesa", "Queijo, Presunto, Ovo de cordorna, Azeitona preta, Cebola, Oregano e Pimentão verde.", 63.00, 6),
("Meio a meio - Bauru e América", "Queijo, Oregano, Presunto, Requeijão e Tomate.", 38.80, 1),
("Chocolate", "Chocolate ao leite, Morango e Granulado.", 46.00, 4);

SELECT id, nome, descricao, preco, id_categoria FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT * FROM tb_pizzas AS pizza INNER JOIN tb_categorias AS categoria WHERE pizza.id_categoria = categoria.id;

SELECT * FROM tb_pizzas AS pizza INNER JOIN tb_categorias AS categoria WHERE pizza.id_categoria = categoria.id AND categoria.id = 3;