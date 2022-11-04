select a.album_name, a.create_date 
from album a 
where a.create_date = 2018


select *
from (
	select t.track_name, t.duration, row_number() over (order by t.duration desc)
	from track t) t
where t."row_number" = 1


select t.track_name, t.duration 
from track t 
where t.duration >= 3.5


select p.playlist_name, p.create_date 
from playlist p 
where p.create_date between 2018 and 2020


select a.author_name, a.nickname 
from author a 
where strpos(a.nickname , ' ') = 0 


select t.track_name
from track t 
where t.track_name ilike '%my%' or t.track_name ilike '%мой%'