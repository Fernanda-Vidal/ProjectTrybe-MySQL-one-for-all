SELECT
	artists.artist_name AS artista,
	albums.title_album AS album
FROM SpotifyClone.artists AS artists
INNER JOIN SpotifyClone.albums AS albums
	ON artists.artist_id = albums.artist_id
WHERE artist_name LIKE '%elis%'
ORDER BY artista;