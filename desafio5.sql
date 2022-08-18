SELECT
	musics.title_music AS cancao,
	COUNT(history.music_id) AS reproducoes
FROM SpotifyClone.musics AS musics
INNER JOIN SpotifyClone.history AS history
	ON musics.music_id = history.music_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
