select*from film
left join film_actor
on film.film_id = film_actor.film_id;

select *from actor
left join film_actor
on actor.actor_id = film_actor.actor_id;

SELECT *from actor
full outer join film_actor on actor.actor_id = film_actor.actor_id
full outer join film on actor.last_update = film.last_update;