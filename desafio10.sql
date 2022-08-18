SELECT 
	musics.title_music AS nome,
    COUNT(history.music_id) AS reproducoes
FROM SpotifyClone.history AS history
INNER JOIN SpotifyClone.musics AS musics
	ON musics.music_id = history.music_id
INNER JOIN SpotifyClone.users AS users
	ON history.user_id = users.user_id
WHERE users.plan_id = 1 OR users.plan_id = 4
GROUP BY musics.title_music
ORDER BY musics.title_music;