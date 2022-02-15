/*
	Crear una BD llamada tienda_abarrotes
    Con las tablas:
		productos
        clientes
        proveedores
        
	c/tablas 5 columnas
*/

CREATE DATABASE tienda_abarrotes;

USE tienda_abarrotes;

CREATE TABLE productos(
	id INT NOT NULL AUTO_INCREMENT,
    nombre_producto VARCHAR(50) NOT NULL,
    precio DECIMAL NOT NULL,
	cantidad TINYINT NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE productos ADD COLUMN descuento FLOAT NOT NULL;

CREATE TABLE clientes(
	id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    productoFav1 VARCHAR(255) NOT NULL,
    productoFav2 VARCHAR(255),
    ultima_visita DATE NOT NULL,
    esFrecuente INT NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE clientes DROP COLUMN productoFav2;

CREATE TABLE proveedores(
	id INT NOT NULL AUTO_INCREMENT,
	lugar VARCHAR(255) NOT NULL,
    marca VARCHAR(255) NOT NULL,
    proxima_visita DATE NOT NULL,
    PRIMARY KEY (id)
);

ALTER TABLE proveedores ADD COLUMN ultima_visita DATE NOT NULL AFTER marca;