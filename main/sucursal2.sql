CREATE DATABASE sucursal2;

USE sucursal2;
CREATE TABLE pasajeros (
    ID_Pasajero CHAR(3) CONSTRAINT PK_pasajeros PRIMARY KEY,
    Pasajero VARCHAR(150) ,
    edad INT
);

USE sucursal2;
CREATE TABLE vuelos (
    Sucursal INT,
    Cve_LA CHAR(2),
    Viaje DATE,
    Clase VARCHAR(50),
    Precio NUMERIC,
    Ruta CHAR(7),
    Cve_Cliente CHAR(3)
);