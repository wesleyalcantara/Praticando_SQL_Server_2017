USE guiatur

SELECT * FROM INFORMATION_SCHEMA. TABLES;

SELECT * FROM INFORMATION_SCHEMA. COLUMNS;

DROP TABLE paises
CREATE TABLE paises(
    id INT NOT NULL IDENTITY PRIMARY KEY,
    nome VARCHAR(50) NOT NULL DEFAULT '',
    continente VARCHAR(15) CHECK(continente IN('America', 'Oceania', 'Ásia', 'África', 'Antártida', 'Europa')) NOT NULL,
    codigo CHAR(3) NOT NULL DEFAULT ''
);

DROP TABLE estado
CREATE TABLE estado(
    id int NOT NULL IDENTITY PRIMARY KEY,
    nome VARCHAR(50) NOT NULL DEFAULT '',
    sigla CHAR(3) NOT NULL DEFAULT ''
);

DROP TABLE cidade
CREATE TABLE cidade(
    id int NOT NULL IDENTITY PRIMARY KEY,
    nome VARCHAR(50) NOT NULL DEFAULT '',
    populacao INT NOT NULL DEFAULT '0'
);

DROP TABLE ponto_tur
CREATE TABLE ponto_tur(
    id int NOT NULL IDENTITY PRIMARY KEY,
    nome VARCHAR(50) NOT NULL DEFAULT '',
    populacao INT NOT NULL DEFAULT '0',
    tipo VARCHAR(20) CHECK(tipo IN('Atrativo', 'serviço', 'Equipamento', 'Infraestrutura', 'intituição', 'Organização')),
    publicado CHAR(3) CHECK(publicado IN('Não', 'Sim')) NOT NULL DEFAULT 'Não'
);


--INSERT INTO paises
--VALUES ('Brasil', 'Amèrica', 'BRA'),
--('Índia', 'Ásia', 'IND'),
--('China', 'Ásia', 'CHI'),
--('Japão', 'Ásia', 'JPN');

SELECT * FROM paises;

