CREATE SCHEMA Generation;

USE Generation;

-- crear tabla
CREATE TABLE cohorte(
	id INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id)
);

ALTER TABLE cohorte ADD COLUMN nombre VARCHAR(255) NOT NULL;
ALTER TABLE cohorte ADD COLUMN edad INT NOT NULL;

-- agregar datos
INSERT INTO cohorte(nombre, edad) VALUES
('Karina', 20),
('Ash Ketchup', 10),
('Patricio', 22);

-- Mostrar datos de una tabla
SELECT * FROM cohorte; -- para la tabla seleccionada por defecto
-- SELECT * FROM generation.cohorte; -- Aún así se selecciona

SELECT * FROM wold.city; -- para mostrar una tabla que no está seleccionada

SELECT nombre FROM cohorte; -- seleccionar una sola columna
SELECT CountryCode, Population FROM world.city; -- seleccionar más de una columna

SELECT Name AS 'Nombre de los países' FROM world.country; -- agregar un alias al nombre de la columna

-- UPDATE - actualizar valores
UPDATE cohortes SET nombre = "JUAN"; -- si no usamos el where, se corre el riesgo de cambiar todos los valores

UPDATE cohorte SET 
nombre = "Juan",
edad = 30
WHERE id = 3;

-- DELETE FROM cohorte;
/* Nunca usar chorte sin WHERE */
DELETE FROM cohorte WHERE edad;