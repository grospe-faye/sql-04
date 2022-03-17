-- a. Find all artists that has letter D in its name
SELECT * FROM artists WHERE name LIKE "%d%";

-- b. Find all songs that has a length of less than 230
SELECT * FROM songs WHERE length < 230;

-- c. Join the 'albums' and 'songs' tables. (Only show the album name, song name, and song length.)
SELECT albums.album_title, songs.song_name, songs.length
	FROM albums JOIN songs ON albums.id = songs.album_id;

-- d. Join the 'artists' and 'albums' tables. (Find all albums that has letter A in its name.)

-- e. Sort the albums in Z-A order. (Show only the first 4 records.)
SELECT * FROM albums ORDER BY album_title DESC LIMIT 4;

-- f. Join the 'albums' and 'songs' tables. (Sort albums from Z-A and sort songs from A-Z)
SELECT * FROM albums
	JOIN songs ON albums.id = songs.album_id
	ORDER BY album_title DESC AND ORDER BY song_name ASC;	;