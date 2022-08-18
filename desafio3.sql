SELECT users.user_name AS usuario,
	COUNT(history.music_id) AS 'qt_de_musicas_ouvidas',
    ROUND(SUM(musics.duration) / 60, 2) AS 'total_minutos'
FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.history AS history
INNER JOIN SpotifyClone.musics AS musics
    ON users.user_id = history.user_id AND history.music_id = musics.music_id
GROUP BY history.user_id
ORDER BY usuario;