CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO tb_colaboradores (nome, email, cargo, salario)
VALUES 
("Kevin", "kevin.colaborador@gmail.com", "Desenvolvedor Full Stack", 4500.00),
("Cristina", "cris.colaborador@gmail.com", "Desenvolvedora Júnior Full Stack", 3100.00),
("Vitor", "vitor.colaborador@gmail.com", "Professor", 6000.00),
("Beatriz", "bia.colaborador@gmail.com", "Assessora de Imprensa", 3000.00),
("Taines", "taines.colaborador@gmail.com", "Redatora", 8000.00);

SELECT * FROM tb_colaboradores WHERE salario > 2000;

UPDATE tb_colaboradores SET salario = 1800.00 WHERE id = 2;

SELECT * FROM tb_colaboradores WHERE salario < 2000;