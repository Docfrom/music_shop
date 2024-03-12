INSERT INTO  genres(name)
VALUES ('Pop');

INSERT INTO  genres(name)
VALUES ('Rock');

INSERT INTO  genres(name)
VALUES ('Heavy metal');

INSERT INTO  genres(name)
VALUES ('Jazz');

INSERT INTO  artists(name)
VALUES ('AC/DC');

INSERT INTO  artists(name)
VALUES ('Metalica');

INSERT INTO  artists(name)
VALUES ('David Murray');

INSERT INTO  artists(name)
VALUES ('Madona');

INSERT INTO  albums(title, release_year)
VALUES ('High Voltage', '01.01.1975');

INSERT INTO  albums(title, release_year)
VALUES ('St. Anger', '01.01.2003');

INSERT INTO  albums(title, release_year)
VALUES ('Load', '01.01.1996');

INSERT INTO  albums(title, release_year)
VALUES ('Home', '01.01.1982');

INSERT INTO  tracks(title, duration, albums_id)
VALUES ('Little Lover', '340', '1');

INSERT INTO  tracks(title, duration, albums_id)
VALUES ('Stik Around', '279', '1');

INSERT INTO  tracks(title, duration, albums_id)
VALUES ('Purify', '314', '2');

INSERT INTO  tracks(title, duration, albums_id)
VALUES ('My World', '346', '2');

INSERT INTO  tracks(title, duration, albums_id)
VALUES ('Cure', '294', '3');

INSERT INTO  tracks(title, duration, albums_id)
VALUES ('Ronnie', '317', '3');

INSERT INTO  tracks(title, duration, albums_id)
VALUES ('3-D Family', '515', '4');

INSERT INTO  tracks(title, duration, albums_id)
VALUES ('Choctaw Blues', '440', '4');

INSERT INTO  collection (title, release_year)
VALUES ('Bonfire', '18.11.1997');

INSERT INTO  collection (title, release_year)
VALUES ('Backtracks', '10.11.2009');

INSERT INTO  collection (title, release_year)
VALUES ('Garage Inc', '24.11.1998');

INSERT INTO  collection (title, release_year)
VALUES ('S&M2', '28.08.2020');

INSERT INTO  genre_artist (id_genres, id_artists)
VALUES ('2', '2');

INSERT INTO  genre_artist (id_genres, id_artists)
VALUES ('3', '2');

INSERT INTO  genre_artist (id_genres, id_artists)
VALUES ('2', '1');

INSERT INTO  genre_artist (id_genres, id_artists)
VALUES ('4', '3');

INSERT INTO  genre_artist (id_genres, id_artists)
VALUES ('1', '4');

INSERT INTO  album_artist (albums_id, artists_id)
VALUES ('1', '1');

INSERT INTO  album_artist (albums_id, artists_id)
VALUES ('2', '2');

INSERT INTO  album_artist (albums_id, artists_id)
VALUES ('3', '2');

INSERT INTO  album_artist (albums_id, artists_id)
VALUES ('4', '3');

INSERT INTO  album_artist (albums_id, artists_id)
VALUES ('1', '2');

INSERT INTO  collection_tracks (id_collection , id_tracks)
VALUES ('2', '1');

INSERT INTO  collection_tracks (id_collection , id_tracks)
VALUES ('3', '2');

INSERT INTO  collection_tracks (id_collection , id_tracks)
VALUES ('4', '3');

INSERT INTO  collection_tracks (id_collection , id_tracks)
VALUES ('5', '4');

INSERT INTO  collection_tracks (id_collection , id_tracks)
VALUES ('4', '8');

INSERT INTO  collection_tracks (id_collection , id_tracks)
VALUES ('5', '7');

INSERT INTO  collection_tracks (id_collection , id_tracks)
VALUES ('5', '2');

INSERT INTO  collection_tracks (id_collection , id_tracks)
VALUES ('4', '7');
