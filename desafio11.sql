SELECT
	musics.title_music AS 'nome_musica',
    CASE
		WHEN musics.title_music LIKE '%AMAR%' THEN REPLACE(musics.title_music, 'Amar', 'Code Review')
        WHEN musics.title_music LIKE '%SUPERSTAR%' THEN REPLACE(musics.title_music, 'SUPERSTAR', 'SUPERDEV')
		WHEN musics.title_music LIKE '%Bard%' THEN REPLACE(musics.title_music, 'Bard', 'QA')
        WHEN musics.title_music LIKE '%SOUL%' THEN REPLACE(musics.title_music, 'SOUL', 'CODE')
		WHEN musics.title_music LIKE '%Pais%' THEN REPLACE(musics.title_music, 'Pais', 'Pull Requests')
        END AS 'novo_nome'
FROM SpotifyClone.musics AS musics
ORDER BY novo_nome DESC
LIMIT 5;