SELECT
	artist.artist_name AS artista,
    albums.title_album AS album,
    COUNT(follow.artist_id) AS seguidores
FROM SpotifyClone.albums AS albums
INNER JOIN SpotifyClone.artists AS artist
INNER JOIN SpotifyClone.use_art AS follow
	ON albums.artist_id = artist.artist_id AND artist.artist_id = follow.artist_id
GROUP BY albums.album_id
ORDER BY seguidores DESC, artista, album;