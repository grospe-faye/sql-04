-- Add new records

-- Add 5 artists, 2 albums each, 2 song per album
INSERT INTO artists (name) VALUES ("Taylor Swift");
INSERT INTO artists (name) VALUES ("Lady Gaga");
INSERT INTO artists (name) VALUES ("Justin Bieber");
INSERT INTO artists (name) VALUES ("Ariana Grande");
INSERT INTO artists (name) VALUES ("Bruno Mars");

-- Taylor Swift
INSERT INTO albums(album_title, date_released, artist_id) VALUES ("Fearless", "2008", 3);