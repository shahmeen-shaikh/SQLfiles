-- Sakila 

USE sakila;

-- Question one 
SELECT * FROM actor;

-- Question two
SELECT last_name FROM actor WHERE first_name = 'John';

-- Question three
SELECT * FROM actor WHERE last_name= 'Neeson';

-- Question four 
SELECT * FROM actor WHERE actor_id%10=0;

-- Question five
SELECT description FROM film WHERE film_id = 100;

-- Question six
SELECT * FROM film WHERE rating = 'R' ;

-- Question seven
SELECT * FROM film WHERE rating != 'R';

-- Qestion eight
SELECT * FROM film ORDER BY length ASC limit 10;

-- Question nine
SELECT `Title`, `Length` FROM film WHERE length IN (SELECT MAX(length) FROM film);

-- Question ten 
SELECT * FROM film WHERE special_features='Deleted Scenes';

-- Question eleven 
SELECT last_name `Last Name` FROM actor GROUP BY last_name HAVING count(*)=1 ORDER BY last_name DESC;

-- Question twelve
SELECT last_name FROM actor GROUP BY last_name HAVING count(*)>=2 ORDER BY count(*) DESC;

-- Question thirteen 
SELECT a.first_name "First Name", a.last_name "Last Name", COUNT(f.film_id) "Films" FROM actor a INNER JOIN film_actor f ON a.actor_id = f.actor_id
GROUP BY f.actor_id ORDER BY COUNT(f.film_id) DESC;
SELECT * FROM actor;
SELECT * FROM film_actor WHERE actor_id = 23;

-- Question fourteen 


-- Question fifteen 
SELECT AVG (length) FROM film;

-- Question sixteen
SELECT c.name,avg(f.length) AS AverageRunTime
FROM film_category fc
JOIN category c ON fc.category_id = c.category_id
JOIN film f ON fc.film_id = f.film_id
GROUP BY name;

-- Question seventeen






  


