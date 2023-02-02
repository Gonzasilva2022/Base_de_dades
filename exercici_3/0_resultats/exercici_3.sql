select tb_genre.genre_name, count(tb_movie.movie_genre_id) as nombre_películes
from tb_genre
inner join tb_movie
on tb_genre.genre_id = tb_movie.movie_genre_id
group by tb_genre.genre_name
order by count(tb_movie.movie_genre_id) desc;
