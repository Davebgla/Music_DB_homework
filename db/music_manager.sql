DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE albums (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(255),
    artist VARCHAR(255),
    artist_id INT REFERENCES artists(id)
);

-- INSERT INTO artists (name)
-- VALUES ('Biggie Smalls');

-- INSERT INTO artists (name)
-- VALUES ('Tupac');

-- INSERT INTO albums (title, genre, artist)
-- VALUES ('Ready to Die', 'Hip-Hop', 'Biggie-Smalls');

-- INSERT INTO albums (title, genre, artist)
-- VALUES ('All Eyez On Me', 'Hip-Hop', 'Tupac');

