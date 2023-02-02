select tb_person.person_name, tb_movie_person.movie_id, count(tb_movie_person.role_id) as total_roles
from tb_person
inner join tb_movie_person
on tb_person.person_id = tb_movie_person.person_id
group by tb_person.person_name, tb_movie_person.movie_id
having count(tb_movie_person.role_id) > 1
order by count(tb_movie_person.role_id) desc;








