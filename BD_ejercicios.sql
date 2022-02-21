SELECT * FROM sakila.category, sakila.language;

SELECT city_id, country FROM city INNER JOIN country ON city_id = city_id;

SELECT city_id, city, country FROM city INNER JOIN country ON citycountry_id = country.country_id ORDER BY cirt_id ASC;

-- Seleccionar el nombre del país, el nombre de la ciudad y la dirección
SELECT country, city, address FROM country
INNER JOIN city ON country.country_id = city.country_id
INNER JOIN address ON city.city_id = address.city_id;

-- Selecionar el actor y las películas en las cuales ha estado involucrado, asimismo como la descripción de cada película
SELECT CONCAT(first_name, ' ', last_name) AS 'Name', title, description FROM film_text
INNER JOIN film_actor ON film_actor.film_id = film_text.film_id
INNER JOIN actor ON film_actor.actor_id = actor.actor_id;