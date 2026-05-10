use sakila;
select * from actor;
select * from film_actor;
select * from film;
-- select actor_id,full_name,film_id, for which actor is worked.
select a.actor_id, a.first_name , fa.film_id from actor as a join film_actor as fa on a.actor_id = fa.actor_id;
-- -- get the film_id,tittle,and actor_id.
select film_id, title, actor_id
FROM film
JOIN film_actor USING(film_id);
-- find the actor _id and actor_name and movie he has worked.
SELECT actor_id, first_name, title FROM actor
JOIN film_actor USING(actor_id)
JOIN film USING(film_id);
-- find actor_id, name,only for whose length is greater than 120.
SELECT actor_id, first_name, title
FROM actor JOIN film_actor USING(actor_id)
JOIN film USING(film_id)
WHERE length > 120;
-- get the film tittle and the number of actor worked in this film.
SELECT title, COUNT(actor_id) AS total_actors FROM film
JOIN film_actor USING(film_id)
GROUP BY title;

 
  
 
 
 
 

 


      
     
     
 
 




