-- cte(common table expression)
-- storing a result on a tempory.
-- query is readable in this cte.
with test as 
(select actor_id,count(film_id) as moviesCount from sakila.film_actor group by actor_id  )
select sum(moviesCount) from test where actor_id>10;


