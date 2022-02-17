/* WHERE nos permite obtener valores a traves de un campo especifico */

USE sakila;

-- Obtener la informacion de la tabla 
SELECT * From actor;
SELECT actor_id, first_name, last_name from actor; 
/*
Operadores de comparación
OPERADORES DE COMPARACION:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/

SELECT * FROM actor WHERE first_name = 'Penelope';
SELECT * FROM actor WHERE first_name != 'Penelope';
SELECT * FROM film WHERE film_id > 50;
SELECT * FROM film WHERE film_id < 50;
SELECT * FROM customer WHERE customer_id%2 = 0;
SELECT * FROM film WHERE rental_rate=2.99 and rating='PG-13';

-- Comodines
SELECT * FROM actor WHERE first_name LIKE 'tom' ;

-- Selecciona de la tabla actor todas las personas cuyo first_name termine con "an"
SELECT * FROM actor WHERE first_name LIKE '%an' ;

-- Selecciona de la tabla actor todas las personas cuyo last_name contenga una "n"
SELECT * FROM actor WHERE last_name LIKE '%n%' ;

-- Selecciona de la tabla actor todas las personas cuyo first_name o last_name empiece con b
SELECT * FROM actor WHERE first_name LIKE 'b%' OR last_name LIKE 'b%'  ;

-- Selecciona de la tabla actor todas las personas cuyo first_name contenga "k_caracter_r"
SELECT * FROM actor WHERE first_name LIKE '%k_r%';

SELECT * FROM film WHERE title LIKE 'da%';