
SELECT 

room_id,
room_name,
room_capacity,
room_hourly_rate,
room_available

FROM

studio_room;
SELECT 

    r.room_id,
    r.room_name,
    r.room_capacity,
    r.room_hourly_rate,
    r.room_available,
    se.equipment_id,
    se.quantity
    
FROM studio_room r

INNER JOIN sessions s

    ON r.room_id = s.room_id
    
INNER JOIN session_equipment se

    ON s.session_id = se.session_id
    
ORDER BY r.room_id, se.equipment_id;

SELECT

project_id,
project_song_name,
project_start_date,
project_end_date,
album_name

FROM

mps.projects

WHERE

project_status = 'Completed';

SELECT *

FROM mps.sessions

WHERE project_id IN ( SELECT project_id
    FROM mps.projects
    WHERE artist_id IN ( SELECT artist_id
        FROM mps.artists
        WHERE artist_genre = 'Pop'
    ));





