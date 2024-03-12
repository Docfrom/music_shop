SELECT title, duration  
FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);

SELECT title
FROM tracks
WHERE duration > '210';

SELECT title
FROM collection
WHERE release_year BETWEEN '01-01-2018' AND '31-12-2020';

SELECT name
FROM artists
WHERE name NOT LIKE '% %';

SELECT title
FROM tracks
WHERE title LIKE '%My%';

SELECT g.name, COUNT(artists)
FROM artists 
JOIN genre_artist  ON artists.id = genre_artist.id_artists 
JOIN genres g ON genre_artist.id_genres  = g.id
GROUP BY g.name;
    
SELECT release_year, COUNT(t.title) 
FROM albums a
JOIN tracks t ON a.id = t.albums_id 
WHERE a.release_year >= '01-01-2003' AND a.release_year <= '31-12-2020'
GROUP BY release_year;

SELECT a.title, AVG(duration)
FROM albums a 
JOIN tracks t ON a.id = t.albums_id
GROUP BY a.title, duration;

 SELECT name, release_year
 FROM albums a
 JOIN album_artist aa  ON a.id = aa.albums_id
 JOIN artists m  ON aa.artists_id = m.id
 WHERE a.release_year != '01-01-2020';

SELECT name
FROM collection c 
JOIN collection_tracks ct ON c.id = ct.id_collection 
JOIN tracks t  ON ct.id_tracks = t.id
JOIN albums a  ON t.albums_id = a.id
JOIN album_artist aa ON a.id = aa.albums_id
JOIN artists ar  ON aa.artists_id = ar.id
WHERE ar.name LIKE 'AC/DC';

SELECT title 
FROM albums a
JOIN album_artist aa ON a.id = aa.albums_id
JOIN artists ar  ON aa.artists_id  = ar.id
JOIN genre_artist ga ON ar.id = ga.id_artists
GROUP BY ar.name, a.title
HAVING count(ga.id_genres) > 1;

SELECT title
FROM tracks t
LEFT JOIN collection_tracks ct  ON t.id = ct.id_tracks 
WHERE ct.id_tracks IS NULL;

SELECT ar.name, t.duration 
FROM artists ar
JOIN album_artist aa ON ar.id = aa.artists_id 
JOIN albums a ON aa.albums_id  = a.id
JOIN tracks t ON a.id = t.albums_id 
WHERE t.duration IN (SELECT MIN(duration) FROM tracks);
        
SELECT a.title, COUNT(t.id)
FROM albums a
JOIN tracks t  ON a.id = t.albums_id 
GROUP BY a.title  
HAVING count(t.id) in (
SELECT COUNT (t.id)
FROM albums a
JOIN tracks t  ON a.id = t.albums_id
GROUP BY a.title
ORDER BY count(t.id) LIMIT 1)