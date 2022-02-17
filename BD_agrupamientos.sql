/*
Consultas de agrupamiento
Las utilizamos para agrupar los resultados que tengan el mismo valor
*/

SELECT * FROM inventory;

SELECT * FROM inventory GROUP BY store_id;

SELECT * FROM rental;

SELECT * FROM rental GROUP BY customer_id;

SELECT * FROM city;

-- Contar las ciudades que tiene cada país
SELECT country_id, COUNT(city_id) FROM city GROUP BY country_id;

-- Ponerle un alias
SELECT country_id, COUNT(city_id) AS 'total_de_ciudades' FROM city GROUP BY country_id;

-- Selecciona el country id y el número de ciudades que tiene cada país agrupado por país cuando hay más de dos
SELECT country_id, COUNT(city_id) AS 'total_de_ciudades' FROM city GROUP BY country_id HAVING total_de_ciudades > 2;

-- Seleccionar el país que tiene más ciudades 
SELECT country_id, COUNT(city_id) AS 'total_de_ciudades' FROM city GROUP BY country_id ORDER BY total_de_ciudades DESC LIMIT 1;

SELECT title, length FROM film ORDER BY length ASC LIMIT 10;

SELECT title, length FROM film WHERE title LIKE 'acad%';

-- Obtener las películas con mayor duración
SELECT * FROM film WHERE length = (SELECT MAX(length) FROM film);

/*
	Sólo se pueden usar con valores numéricos
	MAX - nos permite obtener el valor máximo
    MIN - nos permite obtener el valor mínimo
    AVG - nos permite obtener un promedio
    SUM - nos suma los elementos de una columna
*/

-- Obtener la mayor duración
SELECT MAX(length) FROM film;

-- Obtener la menor duración
SELECT MIN(length) FROM film;

-- Nos permite obtener el promedio
SELECT AVG(length) FROM film;

-- Nos permite obtener la suma de los valores de las columnas
-- Por ejemplo, cuánto cuesta reemplazar el inventario xd
SELECT SUM(replacement_cost) FROM film;

SELECT MAX(last_update) FROM film;