create table if not exists genres(
    id serial primary key,
    name varchar(100) not null
);

create table if not exists artists(
    id serial primary key,
    name varchar(150) not null
);

create table if not exists albums(
    id serial primary key,
    title varchar(150) not null,
    release_year date not null
);

create table if not exists tracks(
    id serial primary key,
    title varchar(150) not null,
    duration integer not null,
    albums_id integer references albums(id)
);

create table if not exists collection(
    id serial primary key,
    title varchar(150) not null,
    release_year date not null
);

create table if not exists genre_artist(
    id serial primary key,
    id_genres integer references genres(id),
    id_artists integer references artists(id)
);
    
create table if not exists album_artist(
    id serial primary key,
    albums_id integer references albums(id),
    artists_id integer references artists(id)
);

create table if not exists collection_tracks(
    id serial primary key,
    id_collection integer references collection(id),
    id_tracks integer references tracks(id)
);