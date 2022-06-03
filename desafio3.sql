SELECT name AS usuario, COUNT(*) AS qtde_musicas_ouvidas, ROUND(SUM(song_duration) / 60, 2) AS tempo_minutos
FROM SpotifyClone.users
INNER JOIN SpotifyClone.history
ON users.id = history.user_id
INNER JOIN SpotifyClone.songs
ON users.id = history.user_id AND songs.song_id = history.song_id
GROUP BY usuario;