CREATE SCHEMA tienda;
CREATE DATABASE Nombre;

/* 
Este es un comentario
De múltiples
líneas
*/
USE tienda;


-- Comentario de una línea

DROP SCHEMA nombre; -- DROP Eliminar base de datos/schem

-- crear una tabla
-- para crear una tabla, debemos agregar una columna, por lo menos
CREATE TABLE Productos(
	id INT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY(id)
);

SELECT * FROM Productos;

-- agregar una columna
ALTER TABLE productos ADD COLUMN nombre varchar(255) NOT NULL;

-- agregar una columna en una posición en específico
ALTER TABLE productos ADD COLUMN precio int NOT NULL AFTER id;

-- renombrar tabla
ALTER TABLE productos RENAME inventario;

-- Mostrar las talas de una base de datos
USE tienda; -- Seleccionar primero la base de datos a manipular
SHOW TABLES;

-- Eliminar una tabla
DROP TABLE inventario; -- Rómpase en caso de emergencia.

CREATE TABLE Productos(
	id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id)
);

ALTER TABLE productos ADD COLUMN nombre VARCHAR(255) NOT NULL;

-- Cambiar nombre y tipo
ALTER TABLE productos CHANGE COLUMN nombre precio INT NOT NULL;

-- Borrar columna
ALTER TABLE productos DROP COLUMN precio;