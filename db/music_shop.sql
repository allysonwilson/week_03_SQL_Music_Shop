DROP TABLE IF EXISTS album;
DROP TABLE IF EXISTS artist;

CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  artist_id INT REFERENCES,
   album VARCHAR(255),
   name VARCHAR(255)
);

CREATE TABLE album (
  id SERIAL PRIMARY KEY,
  artist_id INT REFERENCES artist(id),
  title VARCHAR(255),
  genre VARCHAR(255)
);
