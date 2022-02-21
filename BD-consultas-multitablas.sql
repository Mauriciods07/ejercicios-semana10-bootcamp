USE sakila;

-- Seleccionar todas las películas que tienen la categoría drama
SELECT * FROM film_category WHERE category_id = 7;

-- Obtener los datos de las películas de una categoría
SELECT * FROM film WHERE film_id IN (1, 2, 3, 6, 4);

SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = 7);

SELECT * FROM film_category;

-- Ejercicio
-- Obtener todas las películas en donde haya participado un actor
SELECT * FROM sakila.actor;
SELECT * FROM sakila.film_actor;
SELECT * FROM sakila.film;

SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 17);

SELECT * FROM actor WHERE actor_id = 17;
SELECT * FROM film_actor WHERE actor_id = 17;

SELECT * FROM actor WHERE actor_id BETWEEN 16 AND 34; -- Es inclusivo

SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = (SELECT actor_id FROM actor WHERE first_name = "RITA" AND last_name = "REYNOLDS"));