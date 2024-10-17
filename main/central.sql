CREATE DATABASE central;

USE central;
CREATE TABLE CatLineasAereas (
    code CHAR(2) CONSTRAINT PK_CatLineasAereas PRIMARY KEY,
    Linea_Aerea VARCHAR(150) NOT NULL
);