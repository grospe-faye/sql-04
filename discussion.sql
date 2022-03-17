-- Add new records

-- Add 5 artists, 2 albums each, 2 songs per album.

INSERT INTO artists (name) VALUES ("Taylor Swift");
INSERT INTO artists (name) VALUES ("Lady Gaga");
INSERT INTO artists (name) VALUES ("Justin Bieber");
INSERT INTO artists (name) VALUES ("Ariana Grande");
INSERT INTO artists (name) VALUES ("Bruno Mars");

-- Taylor Swift

INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Fearless", "2008-02-10", 3);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Fearless", 246, "Pop rock", 3);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Love Story", 213, "Country pop", 3);

INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Red", "2012-03-20", 3);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("State of Grace", 273, "Rock, alternative rock, arena rock", 4);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Red", 204, "Country", 4);

-- Lady Gaga
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("A Star Is Born", "2018-06-24", 4);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Black Eyes", 221, "Rock and roll", 5);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Shallow", 201, "Country, rock, folk rock", 5);

INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Born This Way", "2011-03-18", 4);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Born This Way", 252, "Electropop", 6);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Hair", 320, "Electropop, rock", 6);

-- Justin Bieber
INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Purpose", "2015-04-10", 5);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Sorry", 232, "Dancehall-poptropical", 7);

INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Believe", "2012-12-20", 5);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Boyfriend", 251, "Pop", 8);

-- Ariana Grande

INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Dangerous Woman", "2016-08-14", 6);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Into You", 242, "EDM House", 9);

INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Thank U, Next", "2019-11-20", 6);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Thank U, Next", 236, "Pop, R&B", 10);

-- Bruno Mars

INSERT INTO albums (album_title, date_released, artist_id) VALUES ("24K Magic", "2016-04-24", 7);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("24K Magic", 207, "Funk, Disco, R&B", 11);

INSERT INTO albums (album_title, date_released, artist_id) VALUES ("Earth to Mars", "2011-10-17", 7);
INSERT INTO songs (song_name, length, genre, album_id) VALUES ("Lost", 232, "Pop", 12);

-- Advanced Selects

-- Exclude records
SELECT * FROM songs WHERE id != 11;

-- Greater or less than
SELECT * FROM songs WHERE id < 11;
SELECT * FROM songs WHERE id >= 11;

-- Get specifics ids (or)
SELECT * FROM songs WHERE id = 1 OR id = 3 OR id = 5;

-- Get specific IDs (IN)
SELECT * FROM songs WHERE id in (1, 3, 5);
SELECT * FROM songs WHERE genre in ("Pop", "K-POP");

-- combining conditions
SELECT * FROM songs WHERE album_id = 4 AND id < 8;

-- find partial matches
SELECT * FROM songs WHERE song_name LIKE "%a"; --ending with a   
SELECT * FROM songs WHERE song_name LIKE "a%"; --start with a   
SELECT * FROM songs WHERE song_name LIKE "%a%"; --a in between   
SELECT * FROM albums WHERE date_released LIKE "%201%";

-- Sorting records
SELECT * FROM songs ORDER BY song_name ASC;
SELECT * FROM songs ORDER BY song_name DESC;

-- Getting distinct records
SELECT DISTINCT genre FROM songs;